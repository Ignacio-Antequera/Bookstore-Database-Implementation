-- Create the "bookstore" database and switch to using it
CREATE DATABASE bookstore;
USE bookstore;

-- Create the "store" table to store information about bookstores
CREATE TABLE store (
    storeID     CHAR(5) NOT NULL,       -- Store identifier
    openTime    TIME,                   -- Opening time
    closeTime   TIME,                   -- Closing time
    phoneNumber CHAR(10),               -- Phone number
    Address     VARCHAR(200),           -- Store address
    CONSTRAINT store_storeID_pk PRIMARY KEY (storeID)  -- Primary key constraint
);

-- Create the "employee" table to store information about employees
CREATE TABLE employee (
    ssn             CHAR(10) NOT NULL,  -- Social Security Number
    FName           VARCHAR(20) NOT NULL, -- First name
    LName           VARCHAR(20) NOT NULL, -- Last name
    Email           VARCHAR(50),         -- Email address
    Date_of_birth   DATE,                -- Date of birth
    storeID         CHAR(5) NOT NULL,    -- Associated store
    Date_of_hire    DATE,                -- Date of hire
    phoneNumber     CHAR(10),            -- Phone number
    CONSTRAINT employee_ssn_pk PRIMARY KEY (ssn),  -- Primary key constraint
    CONSTRAINT employee_storeID_fk FOREIGN KEY (storeID) REFERENCES store (storeID) -- Foreign key constraint
);

-- Create the "employee_positions" table to associate employees with positions
CREATE TABLE employee_positions (
    ssn             CHAR(10) NOT NULL,  -- Social Security Number of employee
    position        VARCHAR(20),         -- Position title
    CONSTRAINT employee_position_ssn_fk FOREIGN KEY (ssn) REFERENCES employee (ssn) -- Foreign key constraint
);

-- Create the "cafe" table to store information about cafes
CREATE TABLE cafe (
    cafeID      CHAR(5) NOT NULL,        -- Cafe identifier
    storeID     CHAR(5) NOT NULL,        -- Associated store
    openTime    TIME,                    -- Opening time
    closeTime   TIME,                    -- Closing time
    phoneNumber CHAR(10),                -- Phone number
    CONSTRAINT cafe_cafeID_pk PRIMARY KEY (cafeID), -- Primary key constraint
    CONSTRAINT cafe_storeID_fk FOREIGN KEY (storeID) REFERENCES store (storeID) -- Foreign key constraint
);

-- Create the "book" table to store information about books
CREATE TABLE book (
    ISBN            VARCHAR(13) NOT NULL,    -- ISBN of the book
    Price           VARCHAR(5),              -- Price of the book
    Publisher       VARCHAR(25),             -- Publisher of the book
    Customer_rating CHAR(3),                 -- Customer rating of the book
    Title           VARCHAR(100),            -- Title of the book
    Pages           VARCHAR(15),             -- Number of pages in the book
    Publication_date DATE,                   -- Date of publication
    Sales_rank      VARCHAR(5),              -- Sales rank of the book
    CONSTRAINT book_ISBN_pk PRIMARY KEY (ISBN) -- Primary key constraint
);

-- Create the "author" table to store information about authors
CREATE TABLE author (
    authorID        CHAR(6) NOT NULL,        -- Author's unique identifier
    authorFName     VARCHAR(50) NOT NULL,    -- Author's first name
    authorLName     VARCHAR(50) NOT NULL,    -- Author's last name
    CONSTRAINT author_authorID_pk PRIMARY KEY (authorID) -- Primary key constraint
);

-- Create the "book_author" table to associate books with authors
CREATE TABLE book_author (
    ISBN            VARCHAR(13) NOT NULL,    -- ISBN of the book
    authorID        CHAR(6) NOT NULL,        -- Author's unique identifier
    Category        VARCHAR(15),             -- Category of the book (e.g., genre)
    CONSTRAINT book_author_ISBN_fk FOREIGN KEY (ISBN) REFERENCES book (ISBN), -- Foreign key constraint
    CONSTRAINT book_author_authorID_fk FOREIGN KEY (authorID) REFERENCES author (authorID) -- Foreign key constraint
);

-- Create the "book_stock" table to track stock of books in stores
CREATE TABLE book_stock (
    ISBN            VARCHAR(13) NOT NULL,    -- ISBN of the book
    Quantity        VARCHAR(10),             -- Quantity of the book in stock
    storeID         CHAR(5) NOT NULL,        -- Store where the book is stocked
    CONSTRAINT book_stock_ISBN_fk FOREIGN KEY (ISBN) REFERENCES book (ISBN), -- Foreign key constraint
    CONSTRAINT book_stock_storeID_fk FOREIGN KEY (storeID) REFERENCES store (storeID) -- Foreign key constraint
);

-- Create the "cafe_item" table to store information about cafe items
CREATE TABLE cafe_item (
    Item_ID     CHAR(5) NOT NULL,        -- Item identifier
    name        VARCHAR(20),              -- Item name
    Price       VARCHAR(5),               -- Item price
    Category    VARCHAR(15),              -- Item category
    CONSTRAINT cafe_item_Item_ID_pk PRIMARY KEY (item_ID) -- Primary key constraint
);

-- Create the "cafe_stock" table to track stock of cafe items in cafes
CREATE TABLE cafe_stock (
    Item_ID     CHAR(5) NOT NULL,        -- Item identifier
    Quantity    VARCHAR(10),              -- Quantity of the item in stock
    cafeID      CHAR(5) NOT NULL,         -- Cafe where the item is stocked
    CONSTRAINT cafe_stock_Item_ID_fk FOREIGN KEY (Item_ID) REFERENCES cafe_item (Item_ID), -- Foreign key constraint
    CONSTRAINT cafe_stock_cafeID_fk FOREIGN KEY (cafeID) REFERENCES cafe (cafeID) -- Foreign key constraint
);

-- Create the "book_sale" table to track sales of books with discounts
CREATE TABLE book_sale (
    saleID          CHAR(8) NOT NULL,     -- Sale identifier
    storeID         CHAR(5) NOT NULL,     -- Store where the sale occurred
    discount_percent VARCHAR(2),           -- Discount percentage
    startDate       DATE,                 -- Start date of the sale
    endDate         DATE,                 -- End date of the sale
    ISBN            VARCHAR(13) NOT NULL, -- ISBN of the book being sold
    Quantity        VARCHAR(10),           -- Quantity of books sold
    CONSTRAINT sale_saleID_pk PRIMARY KEY (saleID), -- Primary key constraint
    CONSTRAINT sale_ISBN_fk FOREIGN KEY (ISBN) REFERENCES book (ISBN) -- Foreign key constraint
);

-- Create the "cafe_sale" table to track sales of cafe items with discounts
CREATE TABLE cafe_sale (
    saleID          CHAR(8) NOT NULL,     -- Sale identifier
    Quantity        VARCHAR(5),            -- Quantity of items sold
    Date            DATE,                  -- Date of the sale
    Item_ID         CHAR(5) NOT NULL,      -- Item identifier of the sold item
    discount_percent VARCHAR(2),            -- Discount percentage
    CONSTRAINT sale_saleID_pk PRIMARY KEY (saleID), -- Primary key constraint
    CONSTRAINT sale_Item_ID_fk FOREIGN KEY (Item_ID) REFERENCES cafe_item (Item_ID) -- Foreign key constraint
);

-- Create the "shift" table to store information about shifts
CREATE TABLE shift (
    Shift_number CHAR(4) NOT NULL,        -- Shift number
    storeID      CHAR(5) NOT NULL,        -- Store where the shift occurs
    CONSTRAINT shift_number_pk PRIMARY KEY (shift_number), -- Primary key constraint
    CONSTRAINT shift_storeID_fk FOREIGN KEY (storeID) REFERENCES store (storeID) -- Foreign key constraint
);

-- Create the "shift_schedule" table to associate shifts with employees
CREATE TABLE shift_schedule (
    Shift_number CHAR(4) NOT NULL,        -- Shift number
    ssn          CHAR(10) NOT NULL,       -- Employee's Social Security Number
    position     VARCHAR(20),              -- Employee's position in the shift
    Date         DATETIME,                -- Date and time of the shift
    CONSTRAINT shift_schedule_Shift_number_fk FOREIGN KEY (Shift_number) REFERENCES shift (Shift_number), -- Foreign key constraint
    CONSTRAINT shift_schedule_ssn_fk FOREIGN KEY (ssn) REFERENCES employee (ssn) -- Foreign key constraint
);
