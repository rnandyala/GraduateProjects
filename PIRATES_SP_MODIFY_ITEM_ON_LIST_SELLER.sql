USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PRIATES_SP_MODIFY_ITEM_ON_LIST_SELLER]    Script Date: 9/27/2016 3:57:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PRIATES_SP_MODIFY_ITEM_ON_LIST_SELLER]
@ITEM_ID VARCHAR(30),
@ITEM_PRICE float,
@ITEM_NAME varchar(30),
@ITEM_CATEGORY varchar(30),
@ITEM_OFFER INT,
@ITEM_OFFER_START_DATE date,
@ITEM_OFFER_END_DATE date,
@SELLER_EMAIL VARCHAR(30)
AS
BEGIN 
UPDATE ITEMS 
SET ITEM_ID=@ITEM_ID,
ITEM_PRICE=ISNULL(@ITEM_PRICE,ITEM_PRICE),
ITEM_NAME=ISNULL(@ITEM_NAME,ITEM_NAME),
ITEM_CATEGORY=ISNULL(@ITEM_CATEGORY,ITEM_CATEGORY),
ITEM_OFFER=ISNULL(@ITEM_OFFER,ITEM_OFFER),
ITEM_OFFER_START_DATE=ISNULL(@ITEM_OFFER_START_DATE,ITEM_OFFER_START_DATE),
ITEM_OFFER_END_DATE=ISNULL(@ITEM_OFFER_END_DATE,ITEM_OFFER_END_DATE),
SELLER_EMAIL=@SELLER_EMAIL
END

GO

