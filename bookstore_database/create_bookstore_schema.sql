-- 🚀 Create the Bookstore Database
CREATE DATABASE IF NOT EXISTS `BookstoreDB`;

-- 📌 Use the Bookstore Database
USE `BookstoreDB`;

-- 📚 Create Books Table
CREATE TABLE IF NOT EXISTS `Books` (
   `ISBN` VARCHAR(20) PRIMARY KEY,
   `Title` VARCHAR(255) NOT NULL,
   `Price` DECIMAL(10,2) NOT NULL
);

-- ✍ Create Authors Table
CREATE TABLE IF NOT EXISTS `Authors` (
   `AuthorID` INT PRIMARY KEY AUTO_INCREMENT,
   `Name` VARCHAR(255) NOT NULL
);

-- 🔗 Create BookAuthors Table (Many-to-Many Relationship)
CREATE TABLE IF NOT EXISTS `BookAuthors` (
   `ISBN` VARCHAR(20),
   `AuthorID` INT,
   PRIMARY KEY (`ISBN`, `AuthorID`),
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`) ON DELETE CASCADE,
   FOREIGN KEY (`AuthorID`) REFERENCES `Authors`(`AuthorID`) ON DELETE CASCADE
);

-- 🛒 Create Customers Table
CREATE TABLE IF NOT EXISTS `Customers` (
   `CustomerID` INT PRIMARY KEY AUTO_INCREMENT,
   `Name` VARCHAR(255) NOT NULL,
   `Email` VARCHAR(255) NOT NULL
);

-- 🛍️ Create Orders Table
CREATE TABLE IF NOT EXISTS `Orders` (
   `OrderID` INT PRIMARY KEY AUTO_INCREMENT,
   `CustomerID` INT,
   `OrderDate` DATE NOT NULL,
   FOREIGN KEY (`CustomerID`) REFERENCES `Customers`(`CustomerID`) ON DELETE CASCADE
);

-- 📦 Create OrderDetails Table
CREATE TABLE IF NOT EXISTS `OrderDetails` (
   `OrderID` INT,
   `ISBN` VARCHAR(20),
   `Quantity` INT NOT NULL,
   PRIMARY KEY (`OrderID`, `ISBN`),
   FOREIGN KEY (`OrderID`) REFERENCES `Orders`(`OrderID`) ON DELETE CASCADE,
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`) ON DELETE CASCADE
);
