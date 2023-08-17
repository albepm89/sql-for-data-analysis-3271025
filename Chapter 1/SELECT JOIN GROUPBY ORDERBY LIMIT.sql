SELECT Customer.CustomerID,
  FirstName,
  LastName,
  SUM(TotalDue) AS total
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY total DESC
LIMIT 12;