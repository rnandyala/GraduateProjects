USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_COMPUTERS]    Script Date: 9/27/2016 3:02:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PIRATES_SP_COMPUTERS]
AS
BEGIN 
SELECT * FROM ITEMS 
WHERE ITEM_CATEGORY='COMPUTERS'
END

GO

