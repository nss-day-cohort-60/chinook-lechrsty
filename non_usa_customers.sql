SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE NOT Country = "USA"