/*Create and declare initial table*/
CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE Products(
	ItemID INTEGER(10) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10) NOT NULL,
    StockQuantity INTEGER(10),
    primary key (ItemId)
);
/*syntax for creating new product*/
SELECT * FROM Products

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Work_Pant','Apparel','24.99','10');

/*made mistake in usage of DECIMAL, delete old and create new correct column*/
ALTER TABLE Products DROP COLUMN Price;
ALTER TABLE Products ADD COLUMN Price DECIMAL(10,2) NOT NULL;

/*Create new row to ensure database has data*/
INSERT INTO Products (ProductName,DepartmentName,Price,StockQuantity) VALUES ('Tool_Roll','Accessory','14.99','15');

/* More options */

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Work_Boots','Apparel','$149.99','5');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Wrench', 'Tools','17.99','20');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Screwdriver','Tools','8.99','50');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Drill','Tools','200','44.99');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Helmet','Apparel','249.99','10');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Saddle_Bag','Tools','219.99','8');
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Black Glove','Apparel','29.99','8');

/* Name everything in plural form */
UPDATE Products SET ProductName = "Black Gloves" WHERE ProductName = "Black Glove";

/* Add price to Work_Pant. Wiped it out earlier with decimal redeclaration. */
UPDATE Products SET Price = 24.99 WHERE ProductName = "Work_Pant";
