USE [master]
RESTORE DATABASE [SimpleTalk] FROM  DISK = N'/var/opt/mssql/data/SimpleTalk.bak' WITH  FILE = 1,  MOVE N'SimpleTalk_1_Dev' TO N'/var/opt/mssql/data/SimpleTalk.mdf',  MOVE N'SimpleTalk_1_Dev_log' TO N'/var/opt/mssql/data/SimpleTalk_log.ldf',  NOUNLOAD,  STATS = 5

GO


