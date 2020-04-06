@echo off
docker container stop SQL17
docker container rm SQL17
docker run --name SQL17b -p 1433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -v C:\Docker\SQL:/sql -d mcr.microsoft.com/mssql/server:2017-CU15-ubuntu
