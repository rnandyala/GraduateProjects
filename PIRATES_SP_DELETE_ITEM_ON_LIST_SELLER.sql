USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_DELETE_ITEM_ON_LIST_SELLER]    Script Date: 9/27/2016 3:59:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PIRATES_SP_DELETE_ITEM_ON_LIST_SELLER]
@ITEM_ID VARCHAR(30)
AS
BEGIN 
DELETE FROM ITEMS 
WHERE ITEM_ID=@ITEM_ID
END


GO
