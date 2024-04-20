-- Check if the database exists and drop it if it does
DROP DATABASE IF EXISTS testdatabase;

-- Create a new database
CREATE DATABASE testdatabase;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
CREATE TABLE IF NOT EXISTS `developer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`ID`, `Name`, `ImagePath`, `Description`) VALUES
(5, 'Eng Sunly', 'Sunly.jpg', 'Some quick example text to build on the card title and make.'),
(6, 'Kea Sreyleak', 'Sreyleak.jpg', 'Some quick example text to build on the card title and make.'),
(7, 'Khoeun Ratha', 'Ratha.jpg', 'Some quick example text to build on the card title and make.'),
(8, 'Ly Sokneath', 'Sokneath.jpg', 'Some quick example text to build on the card title and make.'),
(9, 'Ngin Davorn', 'Davorn.jpg', 'Some quick example text to build on the card title and make.'),
(10, 'Ngoun Kealeng', 'Kealeng.jpg', 'Some quick example text to build on the card title and make.'),
(11, 'Thouen Theara', 'Theara.jpg', 'Some quick example text to build on the card title and make.'),
(12, 'Sao Chansovath', 'placeholderimg.jpg', 'Some quick example text to build on the card title and make.');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `ID` int NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Std_Course_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `Name`, `Std_Course_Type`, `Feedback`, `Image`) VALUES
(1, 'Maryta', 'Student of web development', '“This course was very well-organized and easy to follow. The instructor was very knowledgeable and explained everything in a way that was easy to understand. I would recommend this course to anyone who wants to learn HTML.”', 'teacher-1.jpg'),
(2, 'Jonh Son', 'Student of Data Analytic', '“This course was very well-organized and easy to follow. The instructor was very knowledgeable and explained everything in a way that was easy to understand. I would recommend this course to anyone who wants to learn HTML.”', 'teacher-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `newcourses`
--

DROP TABLE IF EXISTS `newcourses`;
CREATE TABLE IF NOT EXISTS `newcourses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `image_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `Status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newcourses`
--

INSERT INTO `newcourses` (`id`, `title`, `description`, `rating`, `image_path`, `price`, `Status`) VALUES
(15, 'Mastering Android Development', 'Dive into the world of Android app development with this comprehensive course, covering fundamentals, UI/UX, Kotlin, and more.', '4.8', 'sources/Courses/android.jpg', '49.99', 1),
(16, 'CSS Fundamentals and Beyond', 'Learn the essential CSS skills to style your web pages like a pro, from basic syntax to advanced layouts and animations.', '4.7', 'sources/Courses/CSS.jpg', '49.99', 1),
(17, 'CSS with Sass and Preprocessors', 'Take your CSS to the next level with Sass, a popular preprocessor that streamlines coding and enhances maintainability.', '4.6', 'sources/Courses/CSS.png', '29.99', 1),
(18, 'Flutter for Cross-Platform App Development', 'Build beautiful and high-performance apps for iOS and Android with Flutter, a modern framework from Google.', '4.9', 'sources/Courses/Flutter.jpg', '79.99', 1),
(19, 'HTML5: The Building Blocks of the Web', 'Master the foundational language of the web, HTML5, and create engaging and interactive web pages.', '4.5', 'sources/Courses/HTML.png', '24.99', 1),
(20, 'Java Programming: From Beginner to Pro', 'Learn Java, a powerful and versatile language used for web, desktop, mobile, and more. Covers core concepts, advanced topics, and practical projects.', '4.9', 'sources/Courses/Java.jpeg', '129.99', 1),
(21, 'JavaScript: The Language of the Web', 'Unlock the power of JavaScript to create dynamic and interactive web experiences. Explore core concepts, libraries, frameworks, and more.', '4.8', 'sources/Courses/JavaScript.jpg', '99.99', 1),
(22, 'JavaScript Development with React', 'Learn React, a popular JavaScript library for building efficient and reusable user interfaces.', '4.7', 'sources/Courses/Javascript.png', '69.99', 1),
(23, 'Kotlin for Android Development', 'Kotlin is becoming the preferred language for Android development. Learn syntax, object-oriented concepts, and practical skills.', '4.8', 'sources/Courses/kotlin.jpg', '59.99', 1),
(24, 'PHP Web Development: Back-End Fundamentals', 'Build dynamic websites and web applications with PHP, a popular server-side scripting language.', '4.6', 'sources/Courses/PHP.jpg', '39.99', 1),
(25, 'Python Programming: Beginner to Data Science', 'Master Python, a versatile language used for web development, data science, machine learning, and more.', '4.9', 'sources/Courses/Python.jpg', '149.99', 1),
(26, 'React for Web Development: Build Modern UIs', 'Learn React, a popular JavaScript library for building efficient and reusable user interfaces.', '4.7', 'sources/Courses/React.jpg', '69.99', 1),
(27, 'React Native for Mobile Development', 'Build native mobile apps for iOS and Android with React Native, a framework using JavaScript and React.', '4.8', 'sources/Courses/react_native.png', '89.99', 1),
(28, 'Swift Programming: Build iOS Apps', 'Learn Swift, the official language for developing iOS apps on Apple devices, and bring your app ideas to life.', '4.9', 'sources/Courses/swift.jpg', '99.99', 1),
(38, 'Money', 'Money for computer', '0.3', 'sources/Courses/11119.png', '0.08', 0),
(56, 'kealeng', 'kealeng', '4.5', 'sources/Courses/Kealeng.jpg', '900000.20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
CREATE TABLE IF NOT EXISTS `platform` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PlatformName` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `PlatformName` (`PlatformName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`Id`, `PlatformName`) VALUES
(1, 'facebook'),
(3, 'instagram'),
(4, 'linkedin'),
(2, 'telegram');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE IF NOT EXISTS `social_media` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DeveloperID` int DEFAULT NULL,
  `PlatformId` int DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `DeveloperID` (`DeveloperID`),
  KEY `PlatformId` (`PlatformId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`Id`, `DeveloperID`, `PlatformId`, `Url`) VALUES
(7, 5, 1, 'https://www.facebook.com/SunlyCoding'),
(8, 5, 2, 'https://t.me/EngSunly'),
(9, 5, 3, 'https://www.instagram.com/sunly_3?fbclid=IwAR3rzQ5dFy__DvKEUuzUda11523MePJydNl4TG_Trtr3_muwF5-dRQcSMBA'),
(10, 5, 4, 'https://www.linkedin.com/in/engsunly/?originalSubdomain=kh'),
(11, 6, 1, 'https://www.facebook.com/aiiLyLeak'),
(12, 6, 2, 'https://t.me/srey_leak_kea'),
(13, 6, 3, 'https://www.instagram.com/kea_sreyleak/'),
(14, 6, 4, 'https://www.linkedin.com/in/kea-sreyleak-030914275/?originalSubdomain=kh'),
(15, 7, 1, 'https://www.facebook.com/profile.php?id=100050872305202'),
(16, 7, 2, 'https://t.me/khoeunratha'),
(17, 7, 3, 'https://www.instagram.com/khoeun__ratha/'),
(18, 7, 4, 'https://www.linkedin.com/in/engsunly/?originalSubdomain=kh'),
(19, 8, 1, 'https://www.facebook.com/july.neath.14'),
(20, 8, 2, 'https://t.me/Ly_Sokneath'),
(21, 8, 3, 'https://www.instagram.com/julyneath/'),
(22, 9, 1, 'https://www.facebook.com/profile.php?id=100076221452983'),
(23, 9, 2, 'https://t.me/Bong14k'),
(24, 9, 3, 'https://www.instagram.com/da_vornnn/'),
(25, 9, 4, 'https://www.linkedin.com/in/ngin-davorn2023/?originalSubdomain=kh'),
(26, 10, 1, 'https://www.facebook.com/ng.leng2'),
(27, 10, 2, 'https://t.me/kealeng_ngoun'),
(28, 10, 3, 'https://www.instagram.com/sunly_3?fbclid=IwAR3rzQ5dFy__DvKEUuzUda11523MePJydNl4TG_Trtr3_muwF5-dRQcSMBA'),
(29, 10, 4, 'https://www.linkedin.com/in/ngoun-kealeng-967016214/?originalSubdomain=kh'),
(30, 11, 1, 'https://www.facebook.com/thoeun.theara.9'),
(31, 11, 2, 'https://t.me/+85587507266'),
(32, 11, 3, 'https://instagram.com/uzhumika?igshid=MzMyNGUyNmU2YQ=='),
(33, 11, 4, 'https://www.linkedin.com/in/thoeun-theara-5081bb2a4/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'),
(34, 12, 2, 'https://t.me/chansovath');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Active` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`, `Image`, `Active`) VALUES
(2, 'Liza', 'teacher-3.jpg', 'yes'),
(15, 'Jonh Dev', 'teacher-1.jpg', 'yes'),
(16, 'Jonh son', 'teacher-4.jpg', 'no'),
(23, 'Ma Ryta', 'teacher-2.jpg', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `userCart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `isAdmin`, `userCart`) VALUES
(1, 'sunly', 'sunly@gmail.com', '$2y$10$tFJi0ib8e0ef79ndpBh6eez.A7mGwd3AASl1QYravNdY1z1aQz062', 0, NULL),
(2, 'dan', 'dan@mail.com', '$2y$10$eexN0zbM8eF5ywUXGl42r.68MxQWHKuAfR726Wq3.DcZCA9CPj67a', 0, NULL),
(11, 'admin', 'admin@gmail.com', '$2y$10$tFJi0ib8e0ef79ndpBh6eez.A7mGwd3AASl1QYravNdY1z1aQz062', 1, NULL),
(12, 'newuser', 'newuser@gmail.com', '$2y$10$MjlzSkMhdtuyDedXlqFtzOhU3RLhVSc46/upvwGmmhCT6ujaqYPeq', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE IF NOT EXISTS `user_cart` (
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`course_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`user_id`, `course_id`) VALUES
(1, 15),
(12, 15),
(12, 16),
(1, 17),
(1, 18),
(1, 19),
(12, 19),
(1, 22),
(1, 23),
(12, 23),
(1, 25),
(12, 25),
(1, 26),
(12, 26);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `social_media`
--
ALTER TABLE `social_media`
  ADD CONSTRAINT `social_media_ibfk_1` FOREIGN KEY (`DeveloperID`) REFERENCES `developer` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `social_media_ibfk_2` FOREIGN KEY (`PlatformId`) REFERENCES `platform` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_cart_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `newcourses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;