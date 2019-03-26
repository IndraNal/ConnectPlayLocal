USE connect_play;
SET SQL_SAFE_UPDATES = 0;


INSERT INTO tbl_city (CityName) Values('Baltimore');
INSERT INTO tbl_city (CityName) Values('Sugar Land');
INSERT INTO tbl_city (CityName) Values('Salt Lake City');
INSERT INTO tbl_city (CityName) Values('Stuart');

INSERT INTO tbl_Address(Address,City_ID,ZipCode,State) ValUES('1578  Hewes Avenue', 1, 21202, 'Maryland');
INSERT INTO tbl_Address(Address,City_ID,ZipCode,State) ValUES('3966  Werninger Street', 2, 77478, 'Texas');
INSERT INTO tbl_Address(Address,City_ID,ZipCode,State) ValUES('1078  Philadelphia Avenue', 3, 84107, 'Utah');
INSERT INTO tbl_Address(Address,City_ID,ZipCode,State) ValUES('1446  Philli Lane', 4, 74570, 'Oklahoma');


INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address_ID) VALUES ('Russell','Dyer','russell@mysqlresources.com','RussellDyer','Test',1);
INSERT INTO tbl_player (FirstName, LastName, Email, UserName,UserPassword, Address_ID) VALUES ('Richard','Stringer','richard@mysqlresources.com','RichardStringer','Test',2);
INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address_ID) VALUES ('Rusty','Osborne','rusty@mysqlresources.com','RustyOsborne','Test',3);
INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address_ID) VALUES ('Lexi', 'Hollar', 'alexandra@mysqlresources.com', 'LexiHollar', 'Test',4);


USE connect_play;

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
    Address VARCHAR(255) NOT NULL,
    Address2 VARCHAR(255) ,
    CityName VARCHAR(255) NOT NULL,
    ZipCode int NOT NULL,
    State VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID)
    );
    
INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address, CityName, ZipCode, State) VALUES ('Russell','Dyer','russell@mysqlresources.com','RussellDyer','Test','1578  Hewes Avenue', 'Baltimore', 21202, 'Maryland');
INSERT INTO tbl_player (FirstName, LastName, Email, UserName,UserPassword, Address, CityName, ZipCode, State) VALUES ('Richard','Stringer','richard@mysqlresources.com','RichardStringer','Test','3966  Werninger Street', 'Sugar Land', 77478, 'Texas');
INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address, CityName, ZipCode, State) VALUES ('Rusty','Osborne','rusty@mysqlresources.com','RustyOsborne','Test','1078  Philadelphia Avenue', 'Salt Lake City', 84107, 'Utah');
INSERT INTO tbl_player (FirstName, LastName, Email, UserName, UserPassword, Address, CityName, ZipCode, State) VALUES ('Lexi', 'Hollar', 'alexandra@mysqlresources.com', 'LexiHollar', 'Test','1446  Philli Lane', 'Stuart', 74570, 'Oklahoma');