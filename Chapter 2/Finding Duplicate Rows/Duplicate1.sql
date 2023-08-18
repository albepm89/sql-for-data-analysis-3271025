SELECT Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName,
  COUNT(1) as NUM_ORDERS
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName
ORDER BY NUM_ORDERS DESC;
--the join clause is the one making the duplicates happen