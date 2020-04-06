docker stop Upgrade2
docker run --name Upgrade3 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -p 1433:1433 -v sqlvol2:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2017-CU12-ubuntu
