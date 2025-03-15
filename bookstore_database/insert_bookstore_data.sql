-- 🚀 Select the Bookstore Database
USE `BookstoreDB`;

-- 📚 Insert Sample Books
INSERT INTO `Books` (`ISBN`, `Title`, `Price`) VALUES
('9781234567890', 'The Hitchhiker''s Guide to the Galaxy', 7.99),
('9780321765723', 'The Lord of the Rings', 12.99),
('9780743273565', 'Pride and Prejudice', 9.99);

-- ✍ Insert Sample Authors
INSERT INTO `Authors` (`AuthorID`, `Name`) VALUES
(1, 'Douglas Adams'),
(2, 'J.R.R. Tolkien'),
(3, 'Jane Austen');

-- 🔗 Insert Data into BookAuthors (Link Books to Authors)
INSERT INTO `BookAuthors` (`ISBN`, `AuthorID`) VALUES
('9781234567890', 1),
('9780321765723', 2),
('9780743273565', 3);

-- 🛒 Insert Sample Customers
INSERT INTO `Customers` (`CustomerID`, `Name`, `Email`) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'David Lee', 'david.lee@example.com');

-- 🛍️ Insert Sample Orders
INSERT INTO `Orders` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(1, 1, '2024-07-26'),
(2, 2, '2024-07-27'),
(3, 3, '2024-07-28');

-- 📦 Insert Sample OrderDetails (Link Orders to Books)
INSERT INTO `OrderDetails` (`OrderID`, `ISBN`, `Quantity`) VALUES
(1, '9781234567890', 1),
(1, '9780321765723', 2),
(2, '9780743273565', 1);
