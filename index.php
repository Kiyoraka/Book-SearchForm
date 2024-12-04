
<?php
// Database connection
$host = "localhost";
$username = "root";
$password = "";
$database = "library_db";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize variables
$searchResults = [];
$searchPerformed = false;
$searchQuery = "";

// Process search when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $searchQuery = trim($_POST['search_query']);
    $searchPerformed = true;
    
    if (!empty($searchQuery)) {
        // Prepare the SQL query with multiple search terms
        $keywords = explode(' ', $searchQuery);
        $searchTerms = [];
        $params = [];
        $types = '';
        
        foreach ($keywords as $keyword) {
            $searchTerms[] = "(title LIKE ? OR category LIKE ? OR description LIKE ?)";
            $paramKeyword = "%$keyword%";
            $params[] = $paramKeyword;
            $params[] = $paramKeyword;
            $params[] = $paramKeyword;
            $types .= 'sss';
        }
        
        $sql = "SELECT * FROM books WHERE " . implode(' OR ', $searchTerms);
        $stmt = $conn->prepare($sql);
        
        if ($stmt) {
            // Bind parameters dynamically
            $stmt->bind_param($types, ...$params);
            $stmt->execute();
            $result = $stmt->get_result();
            $searchResults = $result->fetch_all(MYSQLI_ASSOC);
            $stmt->close();
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Search System</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="search-container">
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <label for="search_query">What kind of book are you looking for?</label>
            <textarea 
                id="search_query" 
                name="search_query" 
                placeholder="I want to find web html book"
                required
            ><?php echo htmlspecialchars($searchQuery); ?></textarea>
            <button type="submit">Search Books</button>
        </form>
    </div>

    <?php if ($searchPerformed): ?>
        <div class="results">
            <?php if (!empty($searchResults)): ?>
                <?php foreach ($searchResults as $book): ?>
                    <div class="book-item">
                        <div class="book-title"><?php echo htmlspecialchars($book['title']); ?></div>
                        <div class="book-category">Category: <?php echo htmlspecialchars($book['category']); ?></div>
                        <div class="book-description"><?php echo htmlspecialchars($book['description']); ?></div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="no-results">
                    <p>No books found matching your search criteria. Please try different keywords.</p>
                </div>
            <?php endif; ?>
        </div>
    <?php endif; ?>

    <?php $conn->close(); ?>
</body>
</html>

