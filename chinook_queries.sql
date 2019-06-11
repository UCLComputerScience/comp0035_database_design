--Solutions given for the first three queries as examples, you will need to work out the rest!

--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT FirstName, LastName, CustomerId, Country from Customer WHERE Country NOT IN ("USA");

--Provide a query only showing the Customers from Brazil.
SELECT FirstName,LastName FROM Customer WHERE Country LIKE "Brazil";

/* Provide a query showing the Invoices of customers who are from Brazil.
Show the customer's full name, Invoice ID, Date of the invoice and billing country.*/
SELECT InvoiceId,InvoiceDate,BillingCountry,FirstName,LastName
FROM Customer JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Country LIKE "Brazil";

--Provide a query showing only the Employees who are Sales Agents.

--Provide a query showing a unique/distinct list of billing countries from the Invoice table.

--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

--How many Invoices were there in 2009 and 2011?

--What are the respective total sales for each of those years?

--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

--Provide a query that includes the purchased track name with each invoice line item.

--Provide a query that includes the purchased track name AND artist name with each invoice line item.

--Provide a query that shows the # of invoices per country. HINT: GROUP BY

--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

--Provide a query that shows all Invoices but includes the # of invoice line items.

--Provide a query that shows total sales made by each sales agent.

--Which sales agent made the most in sales in 2009? Hint: Use the MAX function on a subquery. top_agent.sql: Which sales agent made the most in sales over all?

--Provide a query that shows the count of customers assigned to each sales agent.

--Provide a query that shows the total sales per country.

--Which country's customers spent the most?

--Provide a query that shows the most purchased track of 2013.

--Provide a query that shows the top 5 most purchased songs.

--Provide a query that shows the top 3 best selling artists.

--Provide a query that shows the most purchased Media Type.