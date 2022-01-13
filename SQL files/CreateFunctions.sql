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



CREATE FUNCTION dbo.ScalarFunction (
	@FirstName Varchar(Max),
	@LastName VarChar(Max)
)
RETURNS VarChar(Max) AS
BEGIN
    
    RETURN Concat(@FirstName , ' ' , @LastName)
END;




USE [ACCustomerServiceV2]
GO


DROP FUNCTION [dbo].[ScalarFunction]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ScalarFunction] (
	@FirstName Varchar(Max),
	@LastName VarChar(Max)
)
RETURNS VarChar(Max) AS
BEGIN
    
    RETURN Concat(@FirstName , ' ' , @LastName)
END;


GO
