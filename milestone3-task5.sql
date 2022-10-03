-- task 5 Welcome text for the homepage
SELECT description from Department where dID IN (SELECT dID FROM Has where rootID is NULL);

-- task 5 List of the top level departments with fields needed for the homepage

SELECT title ,description  from Department where dID IN (SELECT dID from Has where rootID IN (SELECT dID FROM Has where rootID is NULL));

-- task 5 List of the featured products with fields needed for the homepage
SELECT title,originalPrice,discount ,tax,PQuantity  FROM Product as p where isFeatured =1;

-- task 5 Given a product, list all keyword-related products

SELECT pk.keyword from Product_Keyword as pk WHERE pk.pID =36;

-- task 5  Given an department, list of all its products (title, short description, current retail price) with their average rating
select title, description, (originalPrice * discount * (1+tax)) as retailPrice, avg(star), P.pID
from Product as P left outer join Review as R on P.pID = R.pID
where dID = 5
group by P.pID;

-- task 5 List of all products on sale sorted by the discount percentage (starting with the biggest discount)
SELECT * FROM Product where discount < 1 order by discount;

-- task 5 List 10 best-selling products (in last 30 days)
SELECT pID, SUM(oQuantity) AS totalquantity
FROM `Order` natural join Added
WHERE orderDate >= current_date() - interval 30 day
GROUP BY pID
Order by totalquantity DESC
limit 10;

-- task 5 Write an SQL query as complex as possible (but still doing something useful).
SELECT title  from Product p where pID IN (SELECT pID  FROM Added a where orderID IN
(SELECT orderID FROM `Order` WHERE trackingID is not NULL and orderDate BETWEEN NOW() - INTERVAL 30 DAY AND NOW())) AND title like ('% desktop%');