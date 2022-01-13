USE [ACCustomerServiceV2]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllCustomerLicenseSP]    Script Date: 1/13/2022 3:42:28 PM ******/
DROP PROCEDURE [dbo].[SelectAllCustomerLicenseSP]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllCustomerLicenseSP]    Script Date: 1/13/2022 3:42:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAllCustomerLicenseSP]
AS   

    SET NOCOUNT ON;  
    select cs.FirstName, cs.LastName, l.Title as LicenseTitle
	from [dbo].[CustomerLicense] as cl
		inner join [dbo].[CustomerService] as cs on cs.CustomerId = cl.CustomerId
		inner join [dbo].[License] as l on l.licenseid = cl.licenseid; 
GO


