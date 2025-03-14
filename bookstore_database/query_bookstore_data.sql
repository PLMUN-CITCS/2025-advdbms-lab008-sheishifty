-- 🚀 Use the Bookstore Database
USE `BookstoreDB`;

-- 📌 Query 1: List all customers who placed an order
SELECT DISTINCT `Customers`.`Name`, `Customers`.`Email`
FROM `Customers`
JOIN `Orders` ON `Customers`.`CustomerID` = `Orders`.`CustomerID`;

-- 📌 Query 2: Retrieve all order details including book titles and customers
SELECT `Customers`.`Name` AS `Customer Name`, `Orders`.`OrderDate`, `Books`.`Title` AS `Book Title`, `OrderDetails`.`Quantity`
FROM `Customers`
JOIN `Orders` ON `Customers`.`CustomerID` = `Orders`.`CustomerID`
JOIN `OrderDetails` ON `Orders`.`OrderID` = `OrderDetails`.`OrderID`
JOIN `Books` ON `OrderDetails`.`ISBN` = `Books`.`ISBN`;

-- 📌 Query 3: List books along with their authors
SELECT `Books`.`Title` AS `Book Title`, `Authors`.`Name` AS `Author Name`
FROM `Books`
JOIN `BookAuthors` ON `Books`.`ISBN` = `BookAuthors`.`ISBN`
JOIN `Authors` ON `BookAuthors`.`AuthorID` = `Authors`.`AuthorID`;

-- 📌 Query 4: Update the price of a book and verify it
UPDATE `Books` 
SET `Price` = 8.99 
WHERE `ISBN` = '9781234567890';

SELECT * FROM `Books` WHERE `ISBN` = '9781234567890';

-- 📌 Query 5: Delete an order detail and verify it
DELETE FROM `OrderDetails` WHERE `OrderID` = 1 AND `ISBN` = '9780321765723';

SELECT * FROM `OrderDetails` WHERE `OrderID` = 1;
