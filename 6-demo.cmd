docker run --name SQL17v2 -p 51433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -v C:\Docker\SQL:/sql -d mcr.microsoft.com/mssql/server:2017-latest
