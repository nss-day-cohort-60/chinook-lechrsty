ALTER TABLE Employee 
RENAME FirstName TO EmployeeFirstName;

ALTER TABLE Employee 
RENAME LastName TO EmployeeLastName;

ALTER TABLE Customer 
RENAME FirstName TO CustomerFirstName;

ALTER TABLE Customer 
RENAME LastName TO CustomerLastName;

SELECT  Invoice.InvoiceId, Invoice.Total, Employee.EmployeeFirstName, Employee.EmployeeLastName, Customer.CustomerFirstName, Customer.CustomerLastName, Customer.Country
FROM Invoice
JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
JOIN Employee ON Customer.SupportRepId=Employee.EmployeeId
