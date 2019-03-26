### Schema
DROP DATABASE IF EXISTS connect_play;
CREATE DATABASE connect_play;
USE connect_play;
CREATE TABLE tbl_city
(
ID int NOT NULL AUTO_INCREMENT,
CityName VARCHAR(255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE tbl_Address(
ID int NOT NULL AUTO_INCREMENT,
Address VARCHAR(255) NOT NULL,
Address2 VARCHAR(255) ,
City_ID int NOT NULL,
ZipCode int NOT NULL,
State VARCHAR(100) NOT NULL,
FOREIGN KEY (City_ID) REFERENCES tbl_city(ID),
PRIMARY KEY (ID)
);
CREATE TABLE tbl_player
(
	ID int NOT NULL AUTO_INCREMENT,
	FirstName varchar(80) NOT NULL,
	LastName varchar(80) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    UserName varchar(100) NOT NULL,
   UserPassword varchar(40) NOT NULL,
    Address_ID  int,
    LogIn TIMESTAMP,
    LogOut TIMESTAMP,
    IsActive BOOLEAN DEFAULT true,
	PRIMARY KEY (ID),
	FOREIGN KEY (Address_ID) REFERENCES tbl_Address(ID)
);

