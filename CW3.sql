

/* ================================================   oracle    */


DROP TABLE IF EXISTS agency;
DROP TABLE IF EXISTS office;
DROP TABLE IF EXISTS property;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS forSale;
DROP TABLE IF EXISTS forRent;
DROP TABLE IF EXISTS Sold;


CREATE TABLE agency(
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    PhoneNumber varchar(15) UNIQUE ,
    PRIMARY KEY (ID)
);

CREATE TABLE office (
    ID int NOT NULL,
    AgencyId int,
    Area varchar(255),
    District varchar(255),
    Sector varchar(255),
    Unit varchar(255),
    PhoneNumber varchar(15) UNIQUE,
    PRIMARY KEY (ID),
    FOREIGN KEY (AgencyId) REFERENCES agency(ID)
);

CREATE TABLE property(
    ID int NOT NULL,
    Area varchar(255),
    District varchar(255),
    Sector varchar(255),
    Unit varchar(255),
    City varchar(255),
    Price DOUBLE PRECISION,
    Type varchar(255),
    NumBedrooms varchar(255),
    Description varchar(2000),
    PRIMARY KEY (ID)
);


CREATE TABLE customer (
    ID int NOT NULL,
    Name varchar(255),
    PhoneNumber varchar(15) UNIQUE,
    PRIMARY KEY (ID)
);

CREATE TABLE forSale(
    ID int primary key references property(ID),
    OfficeId int,
    FOREIGN KEY (OfficeId) REFERENCES office(ID)
    );


CREATE TABLE forRent (
    ID int primary key references property(ID),
    OfficeId int,
    FOREIGN KEY (OfficeId) REFERENCES office(ID)
);


CREATE TABLE sold(
    ID int primary key references property(ID),
    OfficeId int,
    customerId int,
    FOREIGN KEY (OfficeId) REFERENCES office(ID),
    FOREIGN KEY (CustomerId) REFERENCES customer(ID)
);

INSERT INTO agency
VALUES(1, 'John', '+44 1234134560');
INSERT INTO agency
VALUES(2, 'Louis', '+44 1234567899');
INSERT INTO agency
VALUES(3, 'Sam', '+44 11223344455');
INSERT INTO agency
VALUES(4, 'Matthew', '+44 3456789012');
INSERT INTO agency
VALUES(5, 'Tom', '+44 4567890123');
INSERT INTO agency
VALUES(6, 'Daniel', '+44 5678901234');
INSERT INTO agency
VALUES(7, 'Adam', '+44 6789012345');
INSERT INTO agency
VALUES(8, 'James', '+44 7890123456');
INSERT INTO agency
VALUES(9, 'Robert', '+44 8901234567');
INSERT INTO agency
VALUES(10, 'William', '+44 9012345678');

INSERT INTO office 
VALUES (10, 8, 'E', '1', '4', 'NS', '+44 2079460950');
INSERT INTO office 
VALUES (20, 1, 'F', '3', '4', 'CD', '+44 1514960308');
INSERT INTO office 
VALUES (30, 1, 'G', '2', '4', 'PK', '+44 1314960531');
INSERT INTO office 
VALUES (40, 10, 'E', '3', '6', 'PK', '+44 1164960967');
INSERT INTO office 
VALUES (50, 9, 'F', '1', '6', 'CD', '+44 1314960818');
INSERT INTO office 
VALUES (60, 7, 'G', '1', '4', 'NS', '+44 1184960805');
INSERT INTO office 
VALUES (70, 7, 'E', '2', '5', 'CD', '+44 1614960341');
INSERT INTO office 
VALUES (80, 2,'F', '2', '5', 'CD', '+44 1314960753');
INSERT INTO office 
VALUES (90, 7, 'G', '3', '6', 'PK', '+44 1614960585');
INSERT INTO office 
VALUES (100, 1, 'E', '2', '4', 'PK', '+44 1514960959');

INSERT INTO property
VALUES (1, 'E', '1', '4', 'NS', 'Ealing', 245911, 'house', '3', 'Description');
INSERT INTO property
VALUES (2, 'F','3', '4', 'CD',  'Finchley', 354481,  'flat' ,'2','Description');
INSERT INTO property
VALUES (3, 'G', '2', '4', 'PK', 'Greenwich' , 537920, 'house','4','Description');
INSERT INTO property
VALUES (4, 'E', '3', '6', 'PK', 'Ealing', 157924, 'flat','1','Description');
INSERT INTO property
VALUES (5, 'F', '1', '6', 'CD', 'Finchley', 212347, 'house','2','Description');
INSERT INTO property
VALUES (6, 'G', '1', '4', 'NS', 'Greenwich', 390513, 'flat','2','Description');
INSERT INTO property
VALUES (7, 'E', '2', '5', 'CD', 'Ealing', 322329, 'house','3','Description');
INSERT INTO property
VALUES (8,'F', '2', '5', 'CD', 'Finchley', 246114, 'flat','1','Description');
INSERT INTO property
VALUES (9, 'G', '3', '6', 'PK', 'Greenwich', 429910, 'house','3','Description');
INSERT INTO property
VALUES (10, 'E', '2', '4', 'PK', 'Ealing', 203973, 'flat','2','Description');
INSERT INTO property
VALUES (11, 'F', '4', '5', 'CD', 'Finchley', 245621, 'house', '4', 'Description');
INSERT INTO property
VALUES (12, 'E','2', '3', 'NS',  'Ealing', 358081,  'flat' ,'1','Description');
INSERT INTO property
VALUES (13, 'G', '1', '6', 'NS', 'Greenwich' , 537652, 'flat','2','Description');
INSERT INTO property
VALUES (14, 'G', '2', '3', 'PK', 'Finchley', 1578344, 'house','2','Description');
INSERT INTO property
VALUES (15, 'G', '3', '5', 'PK', 'Greenwich', 2342424, 'flat','4','Description');
INSERT INTO property
VALUES (16, 'F', '3', '5', 'CS', 'Finchley', 390953, 'house','3','Description');
INSERT INTO property
VALUES (17, 'E', '1', '2', 'NS', 'Ealing', 384221, 'flat','1','Description');
INSERT INTO property
VALUES (18,'F', '1', '3', 'PK', 'Greenwich', 246426, 'house','3','Description');
INSERT INTO property
VALUES (19, 'F', '2', '6', 'CD', 'Finchley', 42537, 'flat','1','Description');
INSERT INTO property
VALUES (20, 'E', '3', '6', 'NS', 'Ealing', 2743333345, 'flat','1','Description');
INSERT INTO property
VALUES (21, 'G', '2', '1', 'NS', 'Ealing', 20000023, 'house', '1', 'Description');
INSERT INTO property
VALUES (22, 'G','1', '2', 'PK',  'Finchley', 35808133,  'house' ,'4','Description');
INSERT INTO property
VALUES (23, 'E', '4', '7', 'CS', 'Greenwich' , 5123652, 'house','2','Description');
INSERT INTO property
VALUES (24, 'F', '2', '5', 'CS', 'Ealing', 157834, 'flat','3','Description');
INSERT INTO property
VALUES (25, 'F', '3', '2', 'NS', 'Greenwich', 227684, 'house','1','Description');
INSERT INTO property
VALUES (26, 'G', '2', '1', 'PK', 'Finchley', 39035343, 'house','2','Description');
INSERT INTO property
VALUES (27, 'E', '3', '4', 'NS', 'Greenwich', 38422741, 'flat','4','Description');
INSERT INTO property
VALUES (28,'F', '3', '3', 'CD', 'Finchley', 24648626, 'flat','4','Description');
INSERT INTO property
VALUES (29, 'G', '1', '2', 'PK', 'Ealing', 429537, 'house','2','Description');
INSERT INTO property
VALUES (30, 'G', '2', '5', 'CD', 'Finchley', 27443423, 'flat','2','Description');
INSERT INTO property
VALUES (31, 'E', '1', '5', 'CD', 'Greenwich', 2747993, 'flat','2','Description');
INSERT INTO property
VALUES (32, 'E', '1', '6', 'CD', 'Greenwich', 2747993, 'house','8','Description');


INSERT INTO customer 
VALUES (1, 'Donna Le', '+44 7700900185');
INSERT INTO customer 
VALUES (2, 'Nancy Luna', '+44 7700900627');
INSERT INTO customer 
VALUES (3, 'Kaeden Mccarty', '+44 7700900913');
INSERT INTO customer 
VALUES (4, 'Deacon Miles', '+44 7700900685');
INSERT INTO customer 
VALUES (5, 'Reece Rivers', '+44 7700900541');
INSERT INTO customer 
VALUES (6, 'Madison Farrell', '+44 7700900109');
INSERT INTO customer 
VALUES (7, 'Greta Estes', '+44 7700900213');
INSERT INTO customer 
VALUES (8, 'Brenda Coffey', '+44 7700 900989');
INSERT INTO customer 
VALUES (9, 'Quincy Randolph', '+44 7700900113');
INSERT INTO customer 
VALUES (10, 'Aydin Key', '+44 7700900476');

INSERT INTO forSale
VALUES (1, 40);
INSERT INTO forSale
VALUES (2, 30);
INSERT INTO forSale
VALUES (3, 20);
INSERT INTO forSale
VALUES (4, 50);
INSERT INTO forSale
VALUES (5, 60);
INSERT INTO forSale
VALUES (6, 90);
INSERT INTO forSale
VALUES (7, 30);
INSERT INTO forSale
VALUES (8, 10);
INSERT INTO forSale
VALUES (9, 20);
INSERT INTO forSale
VALUES (10, 50);

INSERT INTO forRent 
VALUES (11, 20);
INSERT INTO forRent 
VALUES (12, 10);
INSERT INTO forRent 
VALUES (13, 60);
INSERT INTO forRent 
VALUES (14, 40);
INSERT INTO forRent 
VALUES (15, 80);
INSERT INTO forRent 
VALUES (16, 60);
INSERT INTO forRent 
VALUES (17, 90);
INSERT INTO forRent 
VALUES (18, 70);
INSERT INTO forRent 
VALUES (19, 40);
INSERT INTO forRent 
VALUES (20, 50);

INSERT INTO sold
VALUES (21, 20,2);
INSERT INTO sold
VALUES (22, 70,4);
INSERT INTO sold
VALUES (23, 40,6);
INSERT INTO sold
VALUES (24, 100,8);
INSERT INTO sold
VALUES (25, 90,10);
INSERT INTO sold
VALUES (26, 40,1);
INSERT INTO sold
VALUES (27, 30,3);
INSERT INTO sold
VALUES (28, 60,5);
INSERT INTO sold
VALUES (29, 100,7);
INSERT INTO sold
VALUES (30, 20,9);
INSERT INTO sold
VALUES (31, 30,10);
INSERT INTO sold
VALUES (32, 30,10);

/* ================================================   PART 2   */

/*  look for all the property for Sale with 3 bedroom has the price over £300000  */
Select * 
From property
Inner Join forSale On property.ID = forSale.ID 
Where property.NumBedrooms = 3 and property.price > 300000;

/*   Find all customers who booked a flat  */
SELECT *  
FROM customer c  
INNER JOIN sold s  ON c.ID = s.customerId  
INNER JOIN property p  ON s.ID = p.ID 
WHERE p.type = 'flat';


/* ================================================   PART 3   */

/*   Find the address of the office that have sold only 1 property  */

SELECT office.Area, office.District, office.Sector, office.Unit, COUNT(*) FROM sold 
LEFT OUTER JOIN office ON sold.OfficeId = office.ID
GROUP BY office.Area, office.District, office.Sector, office.Unit
HAVING COUNT(*) = 1;


/* Find all properties and the customers who have booked them */


SELECT agency.Name, COUNT(*) 
FROM agency 
INNER JOIN office ON agency.Id = office.AgencyId 
INNER JOIN sold ON office.Id = sold.OfficeId 
GROUP BY agency.Name;


/* Show the total number of properties that an agency has sold */


SELECT agency.Name, COUNT(*) 
FROM agency 
INNER JOIN office ON agency.Id = office.AgencyId 
INNER JOIN sold ON office.Id = sold.OfficeId 
GROUP BY agency.Name;


/* ================================================   PART 4   */

/* Show customers who booked mostly luxury rooms (i.e. more than 60% of their bookings were for luxury rooms) */ 
SELECT c.* 
FROM customer c 
INNER JOIN sold s 
ON c.ID = s.CustomerId 
INNER JOIN property p 
ON s.ID = p.ID 
GROUP BY c.ID, c.Name, c.PhoneNumber
HAVING (SUM(CASE WHEN p.Type = 'house' THEN 1 ELSE 0 END) / COUNT(s.ID)) > 0.6;


/*find the minimum price of each type of property in Greenwich that is higher then the median price of all property */

SELECT type,min(price) from property 
where price >(SELECT median(price) from property) 
and city ='Greenwich' group by type;

/*Query to get the agencies which have offices in more than two areas*/
SELECT agency.Name 
FROM agency 
INNER JOIN      (SELECT AgencyId, COUNT(Area) as NumAreas FROM office GROUP BY AgencyId HAVING COUNT(Area) > 2) 
O on agency.ID = O.AgencyId;
