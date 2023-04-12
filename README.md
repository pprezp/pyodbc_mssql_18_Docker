# pyodbc-msodbcsql18-debian

## Overview

This is a Docker image to deploy apps on Python 3, using pyodbc and Driver 18 for SQL Server®.

## Elements

Uses official image [Python 3.8.3-buster](https://hub.docker.com/_/python/)

1. Debian 10.0 (Buster)
2. Python 3.8.3
3. Dependences tested for [Pyodbc 4.0.30](https://pypi.org/project/pyodbc/4.0.30/)
4. Microsoft® ODBC SQL Server® 18 Driver installed

## Don't forget

This image hasn't pyodbc yet, so please remember include it on your deployment.

### License

See this [License](LICENSE)

### Issues

If you are trying to connect to a MS SQL SERVER 2016 instance, and get the following error " '08001', '[08001] [Microsoft][ODBC Driver 17 for SQL Server]TCP Provider: Error code 0x27", try to uncomment these lines from Dockerfile
```
RUN cp /etc/ssl/openssl.cnf /etc/ssl/openssl_bkD.cnf
WORKDIR /etc/ssl/
ADD openssl.cnf /etc/ssl/
```
those lines change the ssl version protocol to connect to the server

##

### Trademark Notices

Microsoft® and SQL Server® are registered trademarks of Microsoft Corporation in the United States and/or other countries.
