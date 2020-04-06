@echo off
docker container stop SQL19
docker container rm SQL19
docker run --name SQL17 -p 1433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -v sqlvol2:/sql -d mcr.microsoft.com/mssql/server:2017-CU12-ubuntu
