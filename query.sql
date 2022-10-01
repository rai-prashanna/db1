SELECT p.pID, p.keyword
FROM (SELECT pID, keyword FROM Product_Keyword group by pID) AS p JOIN
     (SELECT keyword from Product_Keyword 
      WHERE pID = 5) AS p1
ON p.keyword = p1.keyword


SELECT pID, avg(star)
FROM Product AS p Natural JOIN Review
WHERE p.department = 4
group by pID

select pID, keyword
from Product_Keyword
where keyword in (select keyword from Product_Keyword where pID = 5) and pID != 5;


select pID
from Product
where discount != 1 
order by discount DESC


select *
from (select * from orderr where orderdate >= DATEADD(day, -30, GETDATE()))


select pID
from orderr natural join added
where orderdate >= DATEADD(day, -30, GETDATE())
group by pID