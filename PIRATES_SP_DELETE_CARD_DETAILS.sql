USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_DELETE_CARD_DETAILS]    Script Date: 10/1/2016 7:45:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_DELETE_CARD_DETAILS]
@CARD_NUMBER VARCHAR(30)
AS
BEGIN
DELETE FROM CARD_DETAILS WHERE CARD_NUMBER=@CARD_NUMBER
END

GO
