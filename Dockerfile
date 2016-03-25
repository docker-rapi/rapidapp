FROM rapi/rapidapp-base:1.1005
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

# Install drivers and packages needed to access the 3 main
# RDBMS backends (besides SQLite which is already baked in):
# 
#  * MySQL
#  * PostgreSQL
#  * Microsoft SQL Server
#

# -- ODBC/TDS drivers needed for MSSQL:
RUN apt-get update && apt-get install -y \
  unixodbc-dev tdsodbc \
&& rm -fr /var/lib/apt/lists/*

COPY etc/odbcinst.ini /etc/
# --

RUN cpanm \
 Gazelle \
 DBD::mysql DBD::Pg DBD::ODBC \
&& rm -rf .cpanm/
