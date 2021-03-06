USE [DataExtractor]
GO
/****** Object:  StoredProcedure [dbo].[InsertAlarmData]    Script Date: 7/24/2018 4:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[InsertAlarmData]
	@id uniqueidentifier,
	@itemReference nvarchar(max) = null,
	@name nvarchar(max) = null,
	@message nvarchar(max) = null,
	@description nvarchar(max) = null,
	@isAckRequired bit,
	@type nvarchar(50) = null,
	@priority int,
	@triggerValue nvarchar(50) = null,
	@triggerValueUnits nvarchar(50) = null,
	@triggerValueHref nvarchar(max) = null,
	@creationTime datetime,
	@isAcknowledged bit,
	@isDiscarded bit,
	@category nvarchar(50) = null
AS
BEGIN
	INSERT INTO Alarms(
		[Id]
		,[ItemReference]
		,[Name]
		,[Message]
		,[Description]
		,[IsAckRequired]
		,[Type]
		,[Priority]
		,[TriggerValue]
		,[TriggerValueUnits]
		,[TriggerValueHref]
		,[CreationTime]
		,[IsAcknowledged]
		,[IsDiscarded]
		,[Category]
	)
	VALUES(
		@id,
		@itemReference,
		@name,
		@message,
		@description,
		@isAckRequired,
		@type,
		@priority,
		@triggerValue,
		@triggerValueUnits,
		@triggerValueHref,
		@creationTime,
		@isAcknowledged,
		@isDiscarded,
		@category
	)
END


