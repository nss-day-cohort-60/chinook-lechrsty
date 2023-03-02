SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Invoice
JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
JOIN Employee ON Customer.SupportRepId=Employee.EmployeeId