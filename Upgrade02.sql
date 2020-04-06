/*
create database Sales
go
use Sales
go
create table Logger
( LoggerKey int identity(1,1)
, LogDate datetime default sysdatetime()
, LogMessage VARCHAR(200)
)
GO
INSERT dbo.Logger
(
    LogMessage
)
VALUES
('Initial database creation')
GO
*/
USE Sales
GO
INSERT dbo.Logger
(
    LogMessage
)
VALUES
('DB Version:' + CAST(DATABASEPROPERTYEX('Sales', 'Version') AS varchar(10)) +
 ' Level:' + CAST(SERVERPROPERTY('ProductLevel') AS VARCHAR(10)) + '-' + 
 CAST( COALESCE(SERVERPROPERTY('ProductUpdateLevel'), ' ') AS VARCHAR(10))
)
GO

SELECT *,
       DATABASEPROPERTYEX('Sales', 'Version') AS CurrentDBVersion,
       @@VERSION AS ServerVersion
FROM dbo.Logger
ORDER BY LoggerKey;

GO
