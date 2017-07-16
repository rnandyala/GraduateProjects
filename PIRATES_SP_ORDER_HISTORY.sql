USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_ORDER_HISTORY]    Script Date: 10/1/2016 7:48:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_ORDER_HISTORY]
@EMAIL VARCHAR(30)
AS
BEGIN
IF EXISTS (SELECT * FROM ORDER_HISTORY WHERE EMAIL= @EMAIL) 
BEGIN
SELECT * FROM ORDER_HISTORY WHERE EMAIL= @EMAIL
END
ELSE 
PRINT 'LIST EMPTY'  
RETURN
END

GO

