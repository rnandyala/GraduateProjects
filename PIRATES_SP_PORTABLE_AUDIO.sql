USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_PORTABLE_AUDIO]    Script Date: 9/27/2016 3:05:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PIRATES_SP_PORTABLE_AUDIO]
AS
BEGIN 
SELECT * FROM ITEMS 
WHERE ITEM_CATEGORY='PORTABLE AUDIO'
END

GO

