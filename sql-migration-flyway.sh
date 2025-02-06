#!/bin/bash

  

S3_URI=s3://li-sql-migration-files/V1__shopwise.sql

RDS_ENDPOINT=dev-rds.chiek2sq8jr9.us-east-1.rds.amazonaws.com

RDS_DB_NAME=applicationdb

RDS_DB_USERNAME=admin

RDS_DB_PASSWORD=password

  

# Update all packages

sudo yum update -y

  

# Download and extract Flyway

sudo wget -qO- https://download.red-gate.com/maven/release/com/redgate/flyway/flyway-commandline/11.3.0/flyway-commandline-11.3.0-linux-x64.tar.gz | tar -xvz

  

# Create a symbolic link to make Flyway accessible globally

sudo ln -s $(pwd)/flyway-11.3.0/flyway /usr/local/bin

  

# Create the SQL directory for migrations

sudo mkdir sql

  

# Download the migration SQL script from AWS S3

sudo aws s3 cp "$S3_URI" sql/

  

# Run Flyway migration
flyway \
  -url="jdbc:mysql://$RDS_ENDPOINT:3306/$RDS_DB_NAME?allowPublicKeyRetrieval=true&useSSL=false" \
  -user="$RDS_DB_USERNAME" \
  -password="$RDS_DB_PASSWORD" \
  -locations="filesystem:sql" \
  migrate