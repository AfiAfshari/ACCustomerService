SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE InsertOrUpdate_CustInfo
	
	@CustomerID int ,
	@FirstName varchar(75) = null,
	@LastName varchar(75) = null,
	@PhoneNumber varchar(12) = null,
	@Address text = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@CustomerID = 0)
		BEGIN
			INSERT INTO [dbo].[CustInfo] (FirstName, LastName, PhoneNumber, Address)
			VALUES (@FirstName, @LastName, @PhoneNumber, @Address)
		END
	ELSE
		BEGIN
			UPDATE [dbo].[CustInfo] 
				SET FirstName = @FirstName,
					LastName = @LastName,
					PhoneNumber = @PhoneNumber,
					Address = @Address
				WHERE CustomerID = @CustomerID

		END


END
GO