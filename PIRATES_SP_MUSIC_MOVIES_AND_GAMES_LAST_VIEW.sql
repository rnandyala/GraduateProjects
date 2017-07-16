USE [PIRATES]
GO

/****** Object:  StoredProcedure [dbo].[PIRATES_SP_MUSIC_MOVIES_AND_GAMES_LAST_VIEW]    Script Date: 10/1/2016 5:00:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PIRATES_SP_MUSIC_MOVIES_AND_GAMES_LAST_VIEW]
AS
BEGIN 
SELECT * FROM ITEMS 
WHERE (ITEM_CATEGORY='MUSIC' OR ITEM_CATEGORY='MOVIES' OR ITEM_CATEGORY='GAMES' ) AND DATEDIFF(DAY,CONVERT(DATE,GETDATE()),ITEM_OFFER_END_DATE) >=0
ORDER BY ITEM_OFFER_START_DATE
END


GO
