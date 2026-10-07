/*
  Create database and schemas..

  Script Purpose:
           This script creates a new database named "DataWareHouse" after checking if already 
           exists.
           If the DB exists dropped and recreated. Additionally , the script
           set up three schemas within the DB : 'Bronze', 'Silver', 'Gold'
*/


use master;
GO


--drop amnd recreate the "DataWareHouse" database

IF EXISTS(SELECT 1 FROM sys.databases WHERE name ='DataWareHouse')
BEGIN
     ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE DataWareHouse;
END;
GO

-- create database 'DataWareHouse'

CREATE DATABASE DataWareHouse;
GO

use DataWareHouse;
GO

--create schemas

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO 
CREATE SCHEMA Gold;
GO
