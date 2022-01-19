INSERT INTO [dbo].[CustInfo] (FirstName, LastName, PhoneNumber, Address)
VALUES ('Jack', 'Dorsey', 2105674567, '32 Main st, Georgetown, WA, 20345');

SELECT *
FROM [dbo].[Reciepts];

INSERT INTO [dbo].[CustInfo] (FirstName, LastName, PhoneNumber, Address)
VALUES ('Joe', 'Salivan', 2104605587, '432 oak st, Montgomery, PA, 39876');

INSERT INTO [dbo].[CustInfo] (FirstName, LastName, PhoneNumber, Address)
VALUES ('Jenn', 'Joel', 5713438988, '544 Oakmant Ave, Boyds, VA, 20878');

UPDATE [dbo].[Services]
SET Type = 'Replacing control board'
WHERE JobNumber = 1;

INSERT INTO [dbo].[Services] (Services, Type, ScheduleDate, JobDoneDate)
VALUES ('Repair', 'Replace control board', '01/15/2022', '01/17/2022');

INSERT INTO [dbo].[Reciepts] (Amount, datePaid)
VALUES ('5600', '01/12/2022');

DELETE FROM [dbo].[Reciepts] WHERE RecieptID = 4;