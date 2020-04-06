USE [master]
RESTORE DATABASE [SimpleTalkDev_Steve] FROM  DISK = N'/sql/SimpleTalk.bak' WITH  FILE = 1,  MOVE N'SimpleTalk_1_Dev' TO N'/var/opt/mssql/data/SimpleTalk_1_Dev.mdf',  MOVE N'SimpleTalk_1_Dev_log' TO N'/var/opt/mssql/data/SimpleTalk_1_Dev_log.ldf',  NOUNLOAD,  STATS = 5

GO


USE SimpleTalkDev_Steve
GO
SELECT top 10
 *
 FROM dbo.RSSFeeds AS rf
 
 GO
 
 INSERT dbo.RSSFeeds
 (FeedName, Checked, FeedBurner, ModifiedDate)
 VALUES
 (   'LA Data Platform'            -- varchar(max)
   , 1          -- bit
   , 1          -- bit
   , SYSDATETIME() -- datetime2(3)
     )
GO
SELECT top 10
 *
 FROM dbo.RSSFeeds AS rf
     