docker run --name simpletalk -p 1433:1433 -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Demo12#4" -v C:\Docker\SQL:/sql -d dbsimpletalk:0.6