@echo off
docker run --name SQL19 -p 1433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -v C:\Docker\SQL:/sql -d mcr.microsoft.com/mssql/server:2019-latest