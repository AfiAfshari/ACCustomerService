
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE InsertOrUpdate_Services
	
	@JobNumber int ,
	@Services varchar(100) = null,
	@Type varchar(100) = null,
	@ScheduleDate date = null,
	@JobDoneDate date = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@JobNumber = 0)
		BEGIN
			INSERT INTO [dbo].[Services] ([Services], [Type], ScheduleDate, JobDoneDate)
			VALUES (@Services, @Type, @ScheduleDate, @JobDoneDate)
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Services] 
				SET [Services] = @Services,
					[Type] = @Type,
					ScheduleDate = @ScheduleDate,
					JobDoneDate = @JobDoneDate
				WHERE JobNumber = @JobNumber

		END


END
GO
