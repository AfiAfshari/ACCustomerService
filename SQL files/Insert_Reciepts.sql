SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Insert_Reciepts
	
	@RecieptID int ,
	@Amount decimal(18,0) = null,
	@datePaid date = null,
	@JobNumber int = null
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		BEGIN
			INSERT INTO [dbo].[Reciepts] (Amount, datePaid, JobNumber)
			VALUES (@Amount, @datePaid, @JobNumber)
	
		END


END
GO