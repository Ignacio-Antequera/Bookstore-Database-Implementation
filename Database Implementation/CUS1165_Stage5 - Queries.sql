-- Query 1: Retrieve book information along with the author's first and last names and the category from book_author.
SELECT book.*, author.authorFName, author.authorLName, book_author.category
FROM book, author, book_author
WHERE book.title = "Fundamentals of Database System"
AND book.ISBN = book_author.ISBN AND author.authorID = book_author.authorID;

-- Query 2: Retrieve cafe item name, discount percent, and sale date from cafe_sale for sales after August 1, 2021.
SELECT cafe_item.name AS 'Item Name', cafe_sale.discount_percent AS 'Discount Percent', cafe_sale.date AS 'Sale Date'
FROM cafe_item, cafe_sale
WHERE cafe_item.item_ID = cafe_sale.item_ID AND cafe_sale.date >= '2021-08-01';

-- Query 3: Count the number of scheduled employees for each shift.
SELECT shift.Shift_number AS 'Shift ID', count(*) AS 'Number of scheduled employees'
FROM shift, shift_schedule
WHERE shift.Shift_number = shift_schedule.Shift_number
GROUP BY shift_schedule.Shift_number;

-- Query 4: Retrieve shift_schedule details for an employee (ssn: 6478002207) who is not scheduled for certain positions.
SELECT employee.FName AS 'First Name', employee.LName AS 'Last Name', employee.ssn,
       shift_schedule.* FROM shift, shift_schedule, employee, employee_positions
WHERE employee.ssn = '6478002207'
AND shift_schedule.position NOT IN (SELECT employee_positions.position FROM employee_positions 
                                    WHERE employee_positions.ssn = '6478002207')
GROUP BY shift_schedule.shift_number;

-- Query 5: Retrieve book sale information for a specific store (storeID: 51120) and book title.
SELECT book_sale.storeID AS 'Store ID', book.title AS 'Book Title', book_sale.startDate AS 'Sale Date', book_sale.quantity 
FROM book_sale, book
WHERE book.ISBN = book_sale.ISBN AND book_sale.storeID = '51120';

-- Query 6: Retrieve the name and ID of the cafe item with the highest price.
SELECT name, Item_ID AS 'Item Name' FROM cafe_item
WHERE price = (SELECT MAX(price) FROM cafe_item);

-- Query 7: Calculate the average price of books in the "Tragedy" genre.
SELECT book_author.category AS 'Genre', AVG(book.price) AS 'Average Price'
FROM book, book_author
WHERE book_author.ISBN = book.ISBN AND book_author.category = 'Tragedy';

-- Query 8: Retrieve cafe items by category.
SELECT * FROM cafe_item WHERE category = 'Hot food';
SELECT * FROM cafe_item WHERE category = 'Beverage';

-- Query 9: Retrieve employee information along with store details and employee position.
SELECT employee.*, store.storeID AS 'Store ID', store.phoneNumber AS 'Phone Number', store.address, employee_positions.position
FROM employee, store, employee_positions
WHERE employee.ssn = employee_positions.ssn AND employee.storeID = store.storeID
ORDER BY employee.LName;

-- Query 10: Check book stock for a specific book (title: 'Hamlet') across different stores.
SELECT book.title AS 'Book title', book_stock.storeID, book_stock.quantity
FROM book_stock, book
WHERE book.ISBN = book_stock.ISBN AND book.title = 'Hamlet'
ORDER BY book_stock.quantity ASC;
