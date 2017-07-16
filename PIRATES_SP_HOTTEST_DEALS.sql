USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PRIATES_SP_HOTTEST_DEALS]    Script Date: 9/27/2016 2:23:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PIRATES_SP_HOTTEST_DEALS]
AS
BEGIN 
SELECT * FROM ITEMS 
WHERE ITEM_OFFER_END_DATE>=convert(date,getdate())
ORDER BY ITEM_OFFER DESC
END


GO
