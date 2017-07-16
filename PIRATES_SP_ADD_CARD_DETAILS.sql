USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_ADD_CARD_DETAILS]    Script Date: 10/1/2016 7:45:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_ADD_CARD_DETAILS]
@CARD_NUMBER VARCHAR(30),
@EMAIL VARCHAR(30),
@CARD_OWNER VARCHAR(30),
@CARD_TYPE VARCHAR(30),
@CVV INT,
@EXPIRY_DATE DATE
AS
BEGIN
INSERT INTO CARD_DETAILS(CARD_NUMBER,EMAIL,CARD_OWNER,CARD_TYPE,CVV,EXPIRY_DATE)
VALUES (@CARD_NUMBER,@EMAIL,@CARD_OWNER,@CARD_TYPE,@CVV,@EXPIRY_DATE)
END

GO
