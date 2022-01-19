SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE GetFullServiceInfo
	
AS
BEGIN

	SET NOCOUNT ON;


	SELECT * FROM CustInfo CI
    JOIN [Services] SV ON CI.CustomerID = SV.CustomerID
END
GO