USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_SELECT_CARD_DETAILS]    Script Date: 10/1/2016 7:45:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_SELECT_CARD_DETAILS]
@EMAIL VARCHAR(30)
AS
BEGIN
SELECT * FROM CARD_DETAILS WHERE EMAIL=@EMAIL
END

GO

