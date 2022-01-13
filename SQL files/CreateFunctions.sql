CREATE FUNCTION dbo.UpperFirstNames()
RETURNS Table
As
return
(
SELECT 
UPPER(FirstName) As FirstName
From CustomerService
 As FirstName
 )


 USE [ACCustomerServiceV2]
GO

SELECT * FROM [dbo].[UpperFirstNames] ()
Go