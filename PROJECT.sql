Create Database IF NOT EXISTS Rentals;
Use Rentals;

Create table Store_Information(
STORE_NAME varchar(50) NOT NULL,
STORE_LOCATION varchar(50) NOT NULL,
STORE_ID varchar(10) PRIMARY KEY,
STORE_PHONE_NUMBER numeric(10) NOT NULL);

CREATE table MEMBER_DETAILS(
MEMBER_ID VARCHAR(10) PRIMARY KEY,
STORE_ID varchar(10) NOT NULL,
MEMBER_NAME VARCHAR(20) NOT NULL,
MEMBER_EIRCODE VARCHAR(20) NOT NULL,
MEMBER_PHONE_NUMBER NUMERIC(10) NOT NULL,
FOREIGN KEY(STORE_ID) REFERENCES STORE_INFORMATION(STORE_ID));

CREATE TABLE GAMES(
GAME_ID VARCHAR(10) PRIMARY KEY,
GAME_NAME VARCHAR(50) NOT NULL,
RENTAL_PRICE DOUBLE NOT NULL);

CREATE TABLE GAME_INVENTORY(
GAME_ID VARCHAR(10) NOT NULL,
STORE_ID VARCHAR(10) NOT NULL,
GAME_ID_COUNT INT(4) NOT NULL,
FOREIGN KEY(GAME_ID) REFERENCES GAMES(GAME_ID),
FOREIGN KEY(STORE_ID) REFERENCES STORE_INFORMATION(STORE_ID));

CREATE TABLE MEMBER_RENTALS(
MEMBER_ID VARCHAR(10) NOT NULL,
STORE_ID VARCHAR(10) NOT NULL,
GAME_ID VARCHAR(10) NOT NULL,
RENTAL_STATUS VARCHAR(10) NOT NULL,
RENTAL_DATE DATE NULL,
RENTAL_RETURN_DATE DATE NULL,
FOREIGN KEY(MEMBER_ID) REFERENCES MEMBER_DETAILS(MEMBER_ID),
FOREIGN KEY(STORE_ID) REFERENCES STORE_INFORMATION(STORE_ID),
FOREIGN KEY(GAME_ID) REFERENCES GAMES(GAME_ID));

INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals North Dublin','Orchard Road, Clondalkin, Dublin 22','S1', 014574847);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals South Dublin','Ilac Centre, Henry St., Dublin 2','S2', 014574435);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Kerry','7 Walk Street, Kerry','S3', 014574123);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Wicklow','576 Railway Road, Wicklow','S4', 014574675);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Cork','Unit 4, Mary Road, Cork','S5', 014574876);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Belfast','Store B, Unit 9, Newry Street, Belfast','S6', 014574111);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Dundalk','89 Dublin Road, Dundalk','S7', 014574456);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Galway','Fall Avenue, Galway','S8', 014574555);
INSERT INTO STORE_INFORMATION VALUES('Computer Games Rentals Donegal','98 Core Road, Donegal','S9', 014574900);

INSERT INTO MEMBER_DETAILS VALUES('M1',	'S1','John Jones','R45TH4',	0865321458);
INSERT INTO MEMBER_DETAILS VALUES('M2',	'S2','Sam Harris','E89TF4',	0875400456);
INSERT INTO MEMBER_DETAILS VALUES('M3',	'S3','Mark Gaskin','O34RN5', 0895241100);
INSERT INTO MEMBER_DETAILS VALUES('M4',	'S4','Paul Ryan','P98CV4', 0865254477);
INSERT INTO MEMBER_DETAILS VALUES('M5',	'S5','Anna Smyth','Q34SX3',	0874541117);
INSERT INTO MEMBER_DETAILS VALUES('M6',	'S6','Margaret Troy','PL1RH4', 0856684578);
INSERT INTO MEMBER_DETAILS VALUES('M7',	'S7','David Toal','B22FM5', 0854547896);
INSERT INTO MEMBER_DETAILS VALUES('M8',	'S8','Anne Cullen','M43RB5', 0879654587);
INSERT INTO MEMBER_DETAILS VALUES('M9',	'S9','Paula Foley','Z44TM8', 0865258745);

INSERT INTO GAMES VALUES('V1','FIFA 2018', 5);
INSERT INTO GAMES VALUES('V2','Metal Gear Solid', 4.5);
INSERT INTO GAMES VALUES('V3','Tombstone', 4.5);
INSERT INTO GAMES VALUES('V4','Bubbles', 4.5);
INSERT INTO GAMES VALUES('V5','Fear 6', 3);
INSERT INTO GAMES VALUES('V6','Go Car 3', 3);
INSERT INTO GAMES VALUES('V7','Force Match 2', 3);
INSERT INTO GAMES VALUES('V8','Volcano', 1.5);
INSERT INTO GAMES VALUES('V9','SIMs 7', 1.5);

INSERT INTO GAME_INVENTORY VALUES('V1', 'S1', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S2', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S3', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S4', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S5', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S6', 3);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S7', 7);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S8', 7);
INSERT INTO GAME_INVENTORY VALUES('V1', 'S9', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S1', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S2', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S3', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S4', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S5', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S6', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S7', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S8', 7);
INSERT INTO GAME_INVENTORY VALUES('V2', 'S9', 7);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S1', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S2', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S3', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S4', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S5', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S6', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S7', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S8', 8);
INSERT INTO GAME_INVENTORY VALUES('V3', 'S9', 8);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S1', 8);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S2', 8);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S3', 8);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S4', 8);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S5', 23);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S6', 23);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S7', 23);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S8', 12);
INSERT INTO GAME_INVENTORY VALUES('V4', 'S9', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S1', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S2', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S3', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S4', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S5', 12);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S6', 8);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S7', 8);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S8', 8);
INSERT INTO GAME_INVENTORY VALUES('V5', 'S9', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S1', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S2', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S3', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S4', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S5', 8);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S6', 12);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S7', 12);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S8', 12);
INSERT INTO GAME_INVENTORY VALUES('V6', 'S9', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S1', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S2', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S3', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S4', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S5', 12);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S6', 14);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S7', 14);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S8', 14);
INSERT INTO GAME_INVENTORY VALUES('V7', 'S9', 14);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S1', 14);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S2', 14);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S3', 14);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S4', 4);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S5', 4);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S6', 4);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S7', 19);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S8', 19);
INSERT INTO GAME_INVENTORY VALUES('V8', 'S9', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S1', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S2', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S3', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S4', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S5', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S6', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S7', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S8', 19);
INSERT INTO GAME_INVENTORY VALUES('V9', 'S9', 19);

INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V1','Rented', '2017-10-10', '2017-10-14');
INSERT INTO MEMBER_RENTALS VALUES('M2', 'S2','V1','Rented', '2017-10-10', '2017-10-14');
INSERT INTO MEMBER_RENTALS VALUES('M3', 'S3','V1','Rented', '2017-10-14', '2017-10-16');
INSERT INTO MEMBER_RENTALS VALUES('M4', 'S4','V1','Returned', '2017-10-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M5', 'S5','V1','Returned', '2017-10-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M6', 'S6','V1','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M7', 'S7','V1','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M8', 'S8','V2','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M9', 'S9','V2','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V2','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M2', 'S2','V2','Returned', '2017-10-16',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M3', 'S3','V2','Rented', '2017-10-16', '2017-11-03');
INSERT INTO MEMBER_RENTALS VALUES('M4', 'S4','V2','Rented', '2017-10-24', '2017-11-03');
INSERT INTO MEMBER_RENTALS VALUES('M5', 'S5','V2','Rented', '2017-10-24', '2017-11-03');
INSERT INTO MEMBER_RENTALS VALUES('M6', 'S6','V2','Rented', '2017-10-24', '2017-11-03');
INSERT INTO MEMBER_RENTALS VALUES('M7', 'S7','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M8', 'S8','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M9', 'S9','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M2', 'S2','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M3', 'S3','V2','Rented', '2017-11-03', '2017-11-14');
INSERT INTO MEMBER_RENTALS VALUES('M4', 'S4','V3','Returned', '2017-11-09',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M5', 'S5','V3','Returned', '2017-11-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M6', 'S6','V4','Returned', '2017-11-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M7', 'S7','V5','Returned', '2017-11-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M8', 'S8','V6','Returned', '2017-11-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M9', 'S9','V6','Rented', '2017-11-14', '2017-11-19');
INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V7','Rented', '2017-11-14', '2017-11-19');
INSERT INTO MEMBER_RENTALS VALUES('M2', 'S2','V8','Rented', '2017-11-14', '2017-11-19');
INSERT INTO MEMBER_RENTALS VALUES('M3', 'S3','V8','Rented', '2017-11-19', '2017-11-24');
INSERT INTO MEMBER_RENTALS VALUES('M4', 'S4','V8','Returned', '2017-11-19',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M5', 'S5','V8','Rented', '2017-11-19', '2017-11-24');
INSERT INTO MEMBER_RENTALS VALUES('M6', 'S6','V9','Returned', '2017-11-24', '2017-11-29');
INSERT INTO MEMBER_RENTALS VALUES('M7', 'S7','V9','Rented', '2017-11-29', '2017-12-03');
INSERT INTO MEMBER_RENTALS VALUES('M8', 'S8','V9','Returned', '2017-11-29',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M9', 'S9','V9','Rented', '2017-11-29', '2017-12-03');
INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V9','Rented', '2017-11-29', '2017-12-03');
INSERT INTO MEMBER_RENTALS VALUES('M2', 'S2','V9','Rented', '2017-12-03', '2017-12-12');
INSERT INTO MEMBER_RENTALS VALUES('M3', 'S3','V9','Rented', '2017-12-03', '2017-12-12');
INSERT INTO MEMBER_RENTALS VALUES('M4', 'S4','V9','Returned', '2017-12-03',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M5', 'S5','V9','Returned', '2017-12-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M6', 'S6','V9','Returned', '2017-12-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M7', 'S7','V9','Returned', '2017-12-14',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M8', 'S8','V9','Returned', '2017-12-23',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M9', 'S9','V9','Returned', '2017-12-23',NULL);
INSERT INTO MEMBER_RENTALS VALUES('M1', 'S1','V9','Returned', '2017-12-23',NULL);


SELECT *
FROM MEMBER_RENTALS, GAME_INVENTORY, GAMES, MEMBER_DETAILS, STORE_INFORMATION
