USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_BUY_LIST]    Script Date: 9/27/2016 1:57:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PIRATES_SP_BUY_LIST]
@EMAIL VARCHAR(30)
AS
BEGIN
IF EXISTS (SELECT * FROM  ITEMS_LIST WHERE EMAIL= @EMAIL ) 
BEGIN
SELECT * FROM  ITEMS_LIST WHERE EMAIL= @EMAIL
END
ELSE 
PRINT 'LIST EMPTY'  
RETURN
END

GO
