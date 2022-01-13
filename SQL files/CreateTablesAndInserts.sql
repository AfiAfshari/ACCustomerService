USE [ACCustomerServiceV2]
GO

/****** Object:  Table [dbo].[CustomerLicense]    Script Date: 1/13/2022 3:35:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLicense](
	[CustomerId] [int] NOT NULL,
	[LicenseId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerLicense] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[LicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerService]    Script Date: 1/13/2022 3:35:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerService](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NULL,
	[LastName] [nchar](75) NULL,
	[Address] [text] NULL,
	[PhoneNumber] [varchar](11) NULL,
	[DataCalled] [date] NULL,
	[DateCreated] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[License]    Script Date: 1/13/2022 3:35:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[License](
	[LicenseId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](50) NULL,
	[Type] [nchar](50) NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[LicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[CustomerLicense] ([CustomerId], [LicenseId]) VALUES (1, 1)
GO
INSERT [dbo].[CustomerLicense] ([CustomerId], [LicenseId]) VALUES (2, 2)
GO
INSERT [dbo].[CustomerLicense] ([CustomerId], [LicenseId]) VALUES (3, 3)
GO

SET IDENTITY_INSERT [dbo].[CustomerService] ON 
GO
INSERT [dbo].[CustomerService] ([CustomerId], [FirstName], [LastName], [Address], [PhoneNumber], [DataCalled], [DateCreated]) VALUES (1, N'John                                              ', N'lion                                                                       ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerService] ([CustomerId], [FirstName], [LastName], [Address], [PhoneNumber], [DataCalled], [DateCreated]) VALUES (2, N'Mark                                              ', N'lion                                                                       ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerService] ([CustomerId], [FirstName], [LastName], [Address], [PhoneNumber], [DataCalled], [DateCreated]) VALUES (3, N'Tony                                              ', N'Adams                                                                      ', NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[CustomerService] OFF
GO
SET IDENTITY_INSERT [dbo].[License] ON 
GO
INSERT [dbo].[License] ([LicenseId], [Title], [Type]) VALUES (1, N'John’s Title                                      ', N'General Class B                                   ')
GO
INSERT [dbo].[License] ([LicenseId], [Title], [Type]) VALUES (2, N'Mark’s Title                                      ', N'General Class B                                   ')
GO
INSERT [dbo].[License] ([LicenseId], [Title], [Type]) VALUES (3, N'Tony’s Title                                      ', N'Wholesaler’s Permit                               ')
GO
SET IDENTITY_INSERT [dbo].[License] OFF
GO
