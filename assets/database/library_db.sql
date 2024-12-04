-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for library_db
CREATE DATABASE IF NOT EXISTS `library_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `library_db`;

-- Dumping structure for table library_db.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table library_db.books: ~60 rows (approximately)
INSERT INTO `books` (`id`, `title`, `category`, `description`, `created_at`) VALUES
	(1, 'HTML and CSS: Design and Build Websites', 'Web Development', 'A comprehensive guide to HTML and CSS for beginners', '2024-12-04 07:28:42'),
	(2, 'JavaScript: The Good Parts', 'Web Development', 'Detailed exploration of JavaScript best practices', '2024-12-04 07:28:42'),
	(3, 'Learning Web Design', 'Web Development', 'A beginner-friendly guide to web design principles', '2024-12-04 07:28:42'),
	(4, 'PHP and MySQL Web Development', 'Web Development', 'Complete guide to building dynamic websites', '2024-12-04 07:28:42'),
	(5, 'Python Programming for Beginners', 'Programming', 'Introduction to Python programming language', '2024-12-04 07:28:42'),
	(6, 'Data Structures and Algorithms', 'Computer Science', 'Fundamental computer science concepts explained', '2024-12-04 07:28:42'),
	(7, 'The Clean Coder', 'Software Development', 'Professional guidelines for software developers', '2024-12-04 07:28:42'),
	(8, 'Web Security Basics', 'Web Development', 'Introduction to web security principles and practices', '2024-12-04 07:28:42'),
	(9, 'React: Up and Running', 'Web Development', 'Building modern web applications with React', '2024-12-04 07:28:42'),
	(10, 'Vue.js 3 Cookbook', 'Web Development', 'Practical recipes for building Vue.js applications', '2024-12-04 07:28:42'),
	(11, 'Angular in Action', 'Web Development', 'Complete guide to building applications with Angular', '2024-12-04 07:28:42'),
	(12, 'Node.js Design Patterns', 'Web Development', 'Advanced concepts and patterns for Node.js development', '2024-12-04 07:28:42'),
	(13, 'MongoDB: The Definitive Guide', 'Database', 'Comprehensive guide to MongoDB development', '2024-12-04 07:28:42'),
	(14, 'PostgreSQL: Up and Running', 'Database', 'Everything you need to know about PostgreSQL', '2024-12-04 07:28:42'),
	(15, 'Redis in Action', 'Database', 'Practical guide to Redis database development', '2024-12-04 07:28:42'),
	(16, 'AWS Solutions Architect', 'Cloud Computing', 'Complete guide to AWS architecture and services', '2024-12-04 07:28:42'),
	(17, 'Google Cloud Platform in Action', 'Cloud Computing', 'Building and deploying on Google Cloud', '2024-12-04 07:28:42'),
	(18, 'Azure for Developers', 'Cloud Computing', 'Microsoft Azure development guide', '2024-12-04 07:28:42'),
	(19, 'Docker: Up & Running', 'DevOps', 'Container deployment and management with Docker', '2024-12-04 07:28:42'),
	(20, 'Kubernetes in Action', 'DevOps', 'Container orchestration with Kubernetes', '2024-12-04 07:28:42'),
	(21, 'Jenkins: The Definitive Guide', 'DevOps', 'Continuous integration with Jenkins', '2024-12-04 07:28:42'),
	(22, 'Git Pro', 'Version Control', 'Advanced Git and GitHub techniques', '2024-12-04 07:28:42'),
	(23, 'Android Programming', 'Mobile Development', 'Building Android applications from scratch', '2024-12-04 07:28:42'),
	(24, 'iOS Development with Swift', 'Mobile Development', 'Modern iOS app development', '2024-12-04 07:28:42'),
	(25, 'Flutter in Action', 'Mobile Development', 'Cross-platform mobile development', '2024-12-04 07:28:42'),
	(26, 'React Native Cookbook', 'Mobile Development', 'Building mobile apps with React Native', '2024-12-04 07:28:42'),
	(27, 'Machine Learning Basics', 'Data Science', 'Introduction to machine learning concepts', '2024-12-04 07:28:42'),
	(28, 'Deep Learning with Python', 'Data Science', 'Neural networks and deep learning guide', '2024-12-04 07:28:42'),
	(29, 'Data Science from Scratch', 'Data Science', 'Fundamental principles of data science', '2024-12-04 07:28:42'),
	(30, 'Ethical Hacking', 'Cybersecurity', 'Introduction to ethical hacking and penetration testing', '2024-12-04 07:28:42'),
	(31, 'Network Security Essentials', 'Cybersecurity', 'Fundamentals of network security', '2024-12-04 07:28:42'),
	(32, 'Cryptography Basics', 'Cybersecurity', 'Introduction to cryptography and encryption', '2024-12-04 07:28:42'),
	(33, 'Game Development with Unity', 'Game Development', 'Creating games with Unity engine', '2024-12-04 07:28:42'),
	(34, 'Unreal Engine Game Design', 'Game Development', 'Game development using Unreal Engine', '2024-12-04 07:28:42'),
	(35, '3D Graphics Programming', 'Game Development', 'Fundamentals of 3D graphics and animation', '2024-12-04 07:28:42'),
	(36, 'Clean Architecture', 'Software Development', 'Principles of software architecture', '2024-12-04 07:28:42'),
	(37, 'Design Patterns', 'Software Development', 'Essential software design patterns', '2024-12-04 07:28:42'),
	(38, 'Agile Development', 'Software Development', 'Guide to agile development methodologies', '2024-12-04 07:28:42'),
	(39, 'TypeScript in Action', 'Web Development', 'Advanced TypeScript programming', '2024-12-04 07:28:42'),
	(40, 'GraphQL: The Complete Guide', 'Web Development', 'Modern API development with GraphQL', '2024-12-04 07:28:42'),
	(41, 'Progressive Web Apps', 'Web Development', 'Building modern progressive web applications', '2024-12-04 07:28:42'),
	(42, 'Sass and Less', 'Web Development', 'Advanced CSS preprocessing techniques', '2024-12-04 07:28:42'),
	(43, 'WebAssembly in Action', 'Web Development', 'Guide to WebAssembly development', '2024-12-04 07:28:42'),
	(44, 'Microservices Patterns', 'Software Architecture', 'Designing and implementing microservices', '2024-12-04 07:28:42'),
	(45, 'Domain-Driven Design', 'Software Architecture', 'Tackling complexity in software', '2024-12-04 07:28:42'),
	(46, 'RESTful Web Services', 'Web Development', 'Building and consuming REST APIs', '2024-12-04 07:28:42'),
	(47, 'Linux System Programming', 'System Programming', 'Low-level programming in Linux', '2024-12-04 07:28:42'),
	(48, 'Windows System Programming', 'System Programming', 'Windows system development guide', '2024-12-04 07:28:42'),
	(49, 'C++ Programming', 'Programming', 'Modern C++ development techniques', '2024-12-04 07:28:42'),
	(50, 'Rust Programming', 'Programming', 'Systems programming with Rust', '2024-12-04 07:28:42'),
	(51, 'Go in Practice', 'Programming', 'Practical Go programming patterns', '2024-12-04 07:28:42'),
	(52, 'Ruby on Rails Tutorial', 'Web Development', 'Learn web development with Ruby on Rails', '2024-12-04 07:28:42'),
	(53, 'Django for Beginners', 'Web Development', 'Python web development with Django', '2024-12-04 07:28:42'),
	(54, 'Laravel: Up & Running', 'Web Development', 'Modern PHP development with Laravel', '2024-12-04 07:28:42'),
	(55, 'Spring Boot in Action', 'Web Development', 'Enterprise Java development with Spring Boot', '2024-12-04 07:28:42'),
	(56, 'ASP.NET Core in Action', 'Web Development', 'Web development with ASP.NET Core', '2024-12-04 07:28:42'),
	(57, 'Svelte and Sapper', 'Web Development', 'Modern web development with Svelte', '2024-12-04 07:28:42'),
	(58, 'Web Components', 'Web Development', 'Building reusable web components', '2024-12-04 07:28:42'),
	(59, 'Testing Web Applications', 'Web Development', 'Comprehensive guide to web testing', '2024-12-04 07:28:42'),
	(60, 'Web Performance', 'Web Development', 'Optimizing web application performance', '2024-12-04 07:28:42');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
