# Docker image with PYTHON3 and DEPENDENCES for pyodbc with MS ODBC 18 DRIVER, Debian GNU/Linux 10 (buster)
# BY pprezp
# Using the official Python image, Tag 3.8.3-buster
FROM python:3.8.3-buster

# UPDATE APT-GET
RUN apt-get update

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql18
RUN ACCEPT_EULA=Y apt-get install -y mssql-tools18
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
RUN ["/bin/bash", "-c", "source ~/.bashrc"]
RUN apt-get install -y unixodbc-dev