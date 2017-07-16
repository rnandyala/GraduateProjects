USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_MODIFY_ITEM_ON_LIST_CUST]    Script Date: 9/27/2016 1:49:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_MODIFY_ITEM_ON_LIST]
@EMAIL VARCHAR(30),
@ITEM_ID VARCHAR(30),
@QUANTITY INT,
@SHIPPING_ADDRESS VARCHAR(50) = NULL,
@SHIPPING_TYPE VARCHAR(10) =NULL
AS
BEGIN
UPDATE ITEMS_LIST 
SET QUANTITY=ISNULL(@QUANTITY,QUANTITY),
SHIPPING_ADDRESS=ISNULL(@SHIPPING_ADDRESS,SHIPPING_ADDRESS),
SHIPPING_TYPE=ISNULL(@SHIPPING_TYPE,SHIPPING_TYPE)
WHERE EMAIL=@EMAIL AND ITEM_ID=@ITEM_ID
END
GO
