USE [BI_LAB2]
GO
/****** Object:  StoredProcedure [dbo].[InsertDates]    Script Date: 5/18/2018 6:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[InsertDates]
as
begin
	update CarDataSet
	set [date] = DATEADD(day, (ABS(CHECKSUM(NEWID())) % 6698), '2000-01-01')
end