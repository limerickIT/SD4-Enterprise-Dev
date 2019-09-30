# Snippets for Lab Exercise Two  :point_down:

- [SQL Script For Books DB](#sql-script)
- [Maven Dependencys](#maven-dependencys)
- [DBUtil](#dbutil)

	
	
## SQL Script
```sql
CREATE USER 'sd3user'@'localhost' IDENTIFIED BY 'pass';GRANT ALL PRIVILEGES ON *.* TO 'sd3user'@'localhost' IDENTIFIED BY 'pass' WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0; 
-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 30, 2014 at 04:54 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

CREATE DATABASE books;
USE books;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorisbn`
--

CREATE TABLE `authorisbn` (
  `ISBN` text NOT NULL,
  `AuthorID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorisbn`
--

INSERT INTO `authorisbn` (`ISBN`, `AuthorID`) VALUES
('0-13-010671-2', 1),
('0-13-010671-2', 2),
('0-13-020522-2', 1),
('0-13-020522-2', 2),
('0-13-020522-2', 3),
('0-13-082714-2', 1),
('0-13-082714-2', 2),
('0-13-082925-0', 1),
('0-13-082925-0', 2),
('0-13-082927-7', 1),
('0-13-082927-7', 2),
('0-13-082928-5', 1),
('0-13-082928-5', 2),
('0-13-082928-5', 3),
('0-13-083054-2', 1),
('0-13-083054-2', 2),
('0-13-083055-0', 1),
('0-13-083055-0', 2),
('0-13-118043-6', 1),
('0-13-118043-6', 2),
('0-13-226119-7', 1),
('0-13-226119-7', 2),
('0-13-271974-6', 1),
('0-13-271974-6', 2),
('0-13-456955-5', 1),
('0-13-456955-5', 2),
('0-13-456955-5', 3),
('0-13-528910-6', 1),
('0-13-528910-6', 2),
('0-13-565912-4', 1),
('0-13-565912-4', 2),
('0-13-565912-4', 3),
('0-13-899394-7', 1),
('0-13-899394-7', 2),
('0-13-904947-9', 1),
('0-13-904947-9', 2),
('0-13-904947-9', 3),
('0-13-GSVCPP-x', 1),
('0-13-GSVCPP-x', 2),
('0-13-IWCTC-x', 1),
('0-13-IWCTC-x', 2),
('0-13-IWCTC-x', 3),
('0-13-IWWW-x', 1),
('0-13-IWWW-x', 2),
('0-13-IWWW-x', 3),
('0-13-IWWWIM-x', 1),
('0-13-IWWWIM-x', 2),
('0-13-IWWWIM-x', 3),
('0-13-JAVA3-x', 1),
('0-13-JAVA3-x', 2),
('0-13-JCTC2-x', 1),
('0-13-JCTC2-x', 2);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL auto_increment,
  `FirstName` text,
  `LastName` text,
  `YearBorn` int(11) default NULL,
  PRIMARY KEY  (`AuthorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239997783 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AuthorID`, `FirstName`, `LastName`, `YearBorn`) VALUES
(1, 'Harvey', 'Deitel', 1946),
(2, 'Paul', 'Deitel', 1964),
(3, 'Tem', 'Nieto', 1969);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `PublisherID` int(11) NOT NULL,
  `PublisherName` text,
  PRIMARY KEY  (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`PublisherID`, `PublisherName`) VALUES
(1, 'Prentice Hall'),
(2, 'Prentice Hall PTR');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `ISBN` text NOT NULL,
  `Title` text NOT NULL,
  `EditionNumber` int(11) NOT NULL,
  `YearPublished` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  `Price` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`ISBN`, `Title`, `EditionNumber`, `YearPublished`, `PublisherID`, `Price`) VALUES
('0-13-010671-2', 'Java How to Program 2/e and Getting Started with Visual J++ 1.1 Tutorial', 2, 2019, 1, 29),
('0-13-020522-2', 'Visual Basic 6 How to Program Instructor''s Manual with Solution Disk', 1, 2018, 1, 366.99),
('0-13-082714-2', 'C++ How to Program 2/e and Getting Started with Visual C++ 5.0 Tutorial', 2, 2018, 1, 17),
('0-13-082925-0', 'The Complete C++ Training Course', 2, 2014, 2, 13),
('0-13-082927-7', 'The Complete Java Training Course', 2, 2010, 2, 30),
('0-13-082928-5', 'The Complete Visual Basic 6 Training Course', 1, 2018, 2, 21),
('0-13-083054-2', 'The Complete C++ Training Course 2/e and Getting Started with Visual C++ 5.0 Tutorial', 2, 2019, 1, 2555.99),
('0-13-083055-0', 'The Complete Java Training Course 2/e and Getting Started with Visual J++ 1.1 Tutorial', 2, 2019, 1, 20),
('0-13-118043-6', 'C How to Program', 1, 2018, 1, 43),
('0-13-226119-7', 'C How to Program', 2, 2016, 1, 17),
('0-13-271974-6', 'Java Multimedia Cyber Classroom', 1, 2017, 2, 25),
('0-13-456955-5', 'Visual Basic 6 How to Program', 1, 2004, 1, 12),
('0-13-528910-6', 'C++ How to Program', 2, 2007, 1, 15),
('0-13-565912-4', 'C++ How to Program Instructor''s Manual with Solutions Disk', 2, 2015, 1, 40000.99),
('0-13-899394-7', 'Java How to Program', 2, 2017, 1, 49),
('0-13-904947-9', 'Java How to Program Instructor''s Manual with Solution Disk', 2, 2017, 1, 22),
('0-13-GSVCPP-x', 'Getting Started with Visual C++ 6 with an Introduction to MFC', 1, 2019, 1, 20),
('0-13-IWCTC-x', 'The Internet and World Wide Web How to Program Complete Training Course', 1, 2017, 2, 9),
('0-13-IWWWIM-x', 'Internet and World Wide Web How to Program Instructor''s Manual with Solutions Disk', 1, 2019, 1, 9),
('0-13-IWWW-x', 'Internet and World Wide Web How to Program', 1, 2017, 1, 20),
('0-13-JAVA3-x', 'Java How to Program', 3, 2017, 1, 36),
('0-13-JCTC2-x', 'The Complete Java Training Course', 3, 2019, 2, 20);

```

## Maven Dependencys
```xml
	
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency>
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.15</version>
</dependency>
<!-- only required if you are using Apache commons dbutils library for DB connection -->
<dependency>
    <groupId>commons-dbutils</groupId>
    <artifactId>commons-dbutils</artifactId>
    <version>1.6</version>
</dependency>
<dependency>
   <groupId>org.eclipse.persistence</groupId>
   <artifactId>eclipselink</artifactId>
   <version>2.5.2</version>
</dependency>
<dependency>
   <groupId>org.eclipse.persistence</groupId>
   <artifactId>org.eclipse.persistence.jpa.modelgen.processor</artifactId>
   <version>2.5.2</version>
   <scope>provided</scope>
</dependency>

```		
```
## DBUtil
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
     
    private static final EntityManagerFactory EMF = 
            Persistence.createEntityManagerFactory("xxxx");
     
    public static EntityManagerFactory getEMF() { return EMF; }
}
```		
