-- 1
SELECT TOP(1)  [Name] , [Price] , [Publisher]
FROM Books_En
WHERE Publisher LIKE N'BHV%'
ORDER BY Price DESC
 
-- 2
--SELECT TOP(1) *
--FROM (
--		SELECT [Name], [Price], [Publisher] 
--		FROM Books_En
--		WHERE Publisher LIKE N'BHV%') AS pub
--ORDER BY Price DESC

SELECT TOP(1)  [Name] , [Price] , [Publisher]
FROM Books_En AS Books
WHERE Price = (
		SELECT Max([Price])
		FROM Books_En AS SubBooks
		WHERE SubBooks.Publisher LIKE N'BHV%'
		)
ORDER BY Price DESC