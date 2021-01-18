Creation of Database and Tables:


CREATE DATABASE BDMS;

CREATE TABLE Address ( 
  Address_Id numeric NOT NULL, 
  City varchar (20) NOT NULL, 
  District varchar (20) NOT NULL, 
  Neighborhood varchar (60) NOT NULL, 
  PRIMARY KEY (Address_Id)  
);
CREATE TABLE Status ( 
  Status_Id numeric NOT NULL, 
  Status varchar (20) NOT NULL, 
  PRIMARY KEY (Status_Id) 
 );
CREATE TABLE Users ( 
  User_Id numeric NOT NULL, 
  Status_Id numeric NOT NULL, 
  Address_Id numeric NOT NULL, 
  Phone_No varchar(10)  NOT NULL, Password varchar(45)  NOT NULL, 
  PRIMARY KEY (User_Id), 
  FOREIGN KEY (Status_Id) REFERENCES Status (Status_Id), 
  FOREIGN KEY (Address_Id) REFERENCES Address (Address_Id),
); 

CREATE TABLE Blood_Type ( 
  Blood_Id numeric NOT NULL, 
  Blood_Code varchar (5) NOT NULL, 
  Donates_to varchar (45) NOT NULL, 
  Receives_from varchar (45) NOT NULL,  
  PRIMARY KEY (Blood_Id)  
);
CREATE TABLE Donor ( 
  Donor_Id numeric NOT NULL, 
  First_Name varchar (20) NOT NULL, 
  Last_Name varchar (20) NOT NULL, 
  Blood_Id numeric NOT NULL, 
  PRIMARY KEY (Donor_Id), 
  FOREIGN KEY (Donor_Id) REFERENCES Users (User_Id), 
  FOREIGN KEY (Blood_Id) REFERENCES Blood_Type (Blood_Id),
);
CREATE TABLE Medical_Info ( 
  Report_Id numeric NOT NULL, 
  Donor_Id numeric NOT NULL, 
  Date date NOT NULL, 
  Result varchar (50) NOT NULL, 
  PRIMARY KEY (Report_Id), 
  FOREIGN KEY (Donor_Id) REFERENCES Donor (Donor_Id),
);
CREATE TABLE Recipient ( 
  Recipient_Id numeric NOT NULL, 
  First_Name varchar (20) NOT NULL, 
  Last_Name varchar (20) NOT NULL, 
  Blood_Id numeric NOT NULL, 
  PRIMARY KEY (Recipient_Id), 
  FOREIGN KEY (Recipient_Id) REFERENCES Users (User_Id), 
  FOREIGN KEY (Blood_Id) REFERENCES Blood_Type (Blood_Id),
);
CREATE TABLE Blood_Bank ( 
  Bank_Id numeric NOT NULL, 
  Name varchar (50) NOT NULL, 
  Capacity numeric NOT NULL, 
  PRIMARY KEY (Bank_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Users (User_Id), 
); 

CREATE TABLE Gives_to ( 
  Donation_id numeric NOT NULL, 
  Donor_id numeric NOT NULL, 
  Bank_Id numeric NOT NULL, 
  Date date NOT NULL, 
  Amount numeric NOT NULL, 
  PRIMARY KEY (Donation_id), 
  FOREIGN KEY (Donor_Id) REFERENCES Donor (Donor_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Blood_Bank (Bank_Id),
);
CREATE TABLE Takes_From ( 
  Transfer_Id numeric NOT NULL, 
  Recipient_id numeric NOT NULL, 
  Bank_Id numeric NOT NULL, 
  Date date NOT NULL, 
  Amount numeric NOT NULL, 
  PRIMARY KEY (Transfer_Id), 
  FOREIGN KEY (Recipient_Id) REFERENCES Recipient (Recipient_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Blood_Bank (Bank_Id), 
);



Inserting Data into TABLE “Address”:

INSERT INTO ADDRESS VALUES ( 1000000 , 'Kayseri' , 'Kocasinan' ,'Mithatpasa'); 
INSERT INTO ADDRESS VALUES ( 1000001 , 'Kayseri' , 'Melikgazi' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000002 , 'Kayseri' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000003 , 'Khanpur' , 'RYK' ,'Ahmedpur'); 
INSERT INTO ADDRESS VALUES ( 1000004 , 'Lahore' , 'lahore' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000005 , 'Karachi' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000006 , 'Islamabad' , 'RYK' ,'Ahmedpur'); 
INSERT INTO ADDRESS VALUES ( 1000007 , 'FSD' , 'lahore' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000008 , 'Rawalpindi' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000009 , 'Multan' , 'lahore' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000010 , 'BWP' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000011 , 'Kayseri' , 'Kocasinan' ,'Mithatpasa'); 
INSERT INTO ADDRESS VALUES ( 1000012 , 'Kayseri' , 'Melikgazi' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000013 , 'Kayseri' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000014 , 'Khanpur' , 'RYK' ,'Ahmedpur'); 
INSERT INTO ADDRESS VALUES ( 1000015 , 'Lahore' , 'lahore' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000016 , 'Karachi' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000017 , 'Islamabad' , 'RYK' ,'Ahmedpur'); 
INSERT INTO ADDRESS VALUES ( 1000018 , 'FSD' , 'lahore' ,'Cumhuriyet Meydani');
INSERT INTO ADDRESS VALUES ( 1000019 , 'Rawalpindi' , 'Talas' ,'Anayurt'); 

INSERT INTO ADDRESS VALUES ( 1000020 , 'Multan' , 'lahore' ,'Cumhuriyet Meydani');



Inserting Data into TABLE “Status”:



INSERT INTO STATUS VALUES ( 1 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 2 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 3 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 4 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 5 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 6 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 7 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 8 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 9 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 10 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 11 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 12 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 13 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 14 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 15 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 16 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 17 , 'Donor' ); 
INSERT INTO STATUS VALUES ( 18 , 'Recipient' ); 
INSERT INTO STATUS VALUES ( 19 , 'Blood Bank' ); 
INSERT INTO STATUS VALUES ( 20 , 'Donor' );


Inserting Data into TABLE “Blood_Type”:



INSERT INTO BLOOD_TYPE VALUES ( 1 , 'AB' , 'AB' , 'ALL'); 
INSERT INTO BLOOD_TYPE VALUES ( 2 , 'A' , 'A & AB' , 'A & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 3 , 'B' , 'B & AB' , 'B & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 4 , 'O' , 'ALL' , 'O'); 
INSERT INTO BLOOD_TYPE VALUES ( 5 , 'AB' , 'AB' , 'ALL'); 
INSERT INTO BLOOD_TYPE VALUES ( 6 , 'A' , 'A & AB' , 'A & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 7 , 'B' , 'B & AB' , 'B & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 8 , 'O' , 'ALL' , 'O'); 
INSERT INTO BLOOD_TYPE VALUES ( 9 , 'AB' , 'AB' , 'ALL'); 
INSERT INTO BLOOD_TYPE VALUES ( 10 , 'A' , 'A & AB' , 'A & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 11 , 'B' , 'B & AB' , 'B & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 12 , 'O' , 'ALL' , 'O'); 
INSERT INTO BLOOD_TYPE VALUES ( 13 , 'AB' , 'AB' , 'ALL'); 
INSERT INTO BLOOD_TYPE VALUES ( 14 , 'A' , 'A & AB' , 'A & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 15 , 'B' , 'B & AB' , 'B & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 16 , 'O' , 'ALL' , 'O'); 
INSERT INTO BLOOD_TYPE VALUES ( 17 , 'AB' , 'AB' , 'ALL'); 
INSERT INTO BLOOD_TYPE VALUES ( 18 , 'A' , 'A & AB' , 'A & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 19 , 'B' , 'B & AB' , 'B & O'); 
INSERT INTO BLOOD_TYPE VALUES ( 20 , 'O' , 'ALL' , 'O'); 




Inserting Data into TABLE “Users”:


INSERT INTO USERS VALUES ( 1 , 1 , 1000001, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 2 , 2 , 1000002, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 3 , 3 , 1000003, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 4 , 4 , 1000004, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 5 , 5 , 1000005, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 6 , 6 , 1000006, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 7 , 7 , 1000007, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 8 , 8 , 1000008, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 9 , 9 , 1000009, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 10 , 10 , 1000010, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 11, 11 , 1000011, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 12 , 12 , 1000012, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 13 , 13 , 1000013, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 14 , 14 , 1000014, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 15 , 15 , 1000015, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 16 , 16 , 1000016, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 17 , 17 , 1000017, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 18, 18 , 1000018, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 19 , 19 , 1000019, 5539190967 , 1000001);
INSERT INTO USERS VALUES ( 20 , 20 , 1000020, 5539190967 , 1000001);
 

Inserting Data into TABLE “Donor”:


INSERT INTO DONOR VALUES ( 1 , 'Ahmed' , 'Alqershi' , 1 ); 
INSERT INTO DONOR VALUES ( 2 , 'Aqsa' , 'Alq' , 2 ); 
INSERT INTO DONOR VALUES ( 3 , 'Ahli' , 'nmk' , 3 ); 
INSERT INTO DONOR VALUES ( 4 , 'Ali' , 'Alqershi' , 4 ); 
INSERT INTO DONOR VALUES ( 5 , 'Ahsan' , 'Alqershi' , 5 ); 
INSERT INTO DONOR VALUES ( 6 , 'Asad' , 'Alqershi' , 6 ); 
INSERT INTO DONOR VALUES ( 7 , 'Afia' , 'Alqshi' , 7 ); 
INSERT INTO DONOR VALUES ( 8 , 'abc' , 'Alershi' , 8 ); 
INSERT INTO DONOR VALUES ( 9 , 'Asma' , 'Alqershi' , 9 ); 
INSERT INTO DONOR VALUES ( 10 , 'Ah' , 'Alqershi' , 10 ); 
INSERT INTO DONOR VALUES ( 11 , 'Ahm' , 'Akg' , 11 ); 
INSERT INTO DONOR VALUES ( 12 , 'Ahme' , 'Alqershi' , 12 ); 
INSERT INTO DONOR VALUES ( 13 , 'Anc' , 'Alqershi' , 13 ); 
INSERT INTO DONOR VALUES ( 14 , 'Abid' , 'Alqershi' , 14 ); 
INSERT INTO DONOR VALUES ( 15 , 'Asim' , 'Alqershi' , 15 ); 
INSERT INTO DONOR VALUES ( 16 , 'kaynat' , 'Alqershi' , 16 ); 
INSERT INTO DONOR VALUES ( 17 , 'basima' , 'Alqershi' , 17 ); 
INSERT INTO DONOR VALUES ( 18 , 'maryum' , 'Alqershi' , 18 ); 
INSERT INTO DONOR VALUES ( 19 , 'sana' , 'Alqershi' , 19 ); 
INSERT INTO DONOR VALUES ( 20 , 'Akbg' , 'Alqershi' , 20 );


Inserting Data into TABLE “Recipient”:


INSERT INTO RECIPIENT VALUES ( 1 , 'Ahmed' , 'Alqershi' , 1 ); 
INSERT INTO RECIPIENT VALUES ( 2 , 'Aqsa' , 'Alq' , 2 ); 
INSERT INTO RECIPIENT VALUES ( 3 , 'Ahli' , 'nmk' , 3 ); 
INSERT INTO RECIPIENT VALUES ( 4 , 'Ali' , 'Alqershi' , 4 ); 
INSERT INTO RECIPIENT VALUES ( 5 , 'Ahsan' , 'Alqershi' , 5 ); 
INSERT INTO RECIPIENT VALUES ( 6 , 'Asad' , 'Alqershi' , 6 ); 
INSERT INTO RECIPIENT VALUES ( 7 , 'Afia' , 'Alqshi' , 7 ); 
INSERT INTO RECIPIENT VALUES ( 8 , 'abc' , 'Alershi' , 8 ); 
INSERT INTO RECIPIENT VALUES ( 9 , 'Asma' , 'Alqershi' , 9 ); 
INSERT INTO RECIPIENT VALUES ( 10 , 'Ah' , 'Alqershi' , 10 ); 
INSERT INTO RECIPIENT VALUES ( 11 , 'Ahm' , 'Akg' , 11 ); 
INSERT INTO RECIPIENT VALUES ( 12 , 'Ahme' , 'Alqershi' , 12 ); 
INSERT INTO RECIPIENT VALUES ( 13 , 'Anc' , 'Alqershi' , 13 ); 
INSERT INTO RECIPIENT VALUES ( 14 , 'Abid' , 'Alqershi' , 14 ); 
INSERT INTO RECIPIENT VALUES ( 15 , 'Asim' , 'Alqershi' , 15 ); 
INSERT INTO RECIPIENT VALUES ( 16 , 'kaynat' , 'Alqershi' , 16 ); 
INSERT INTO RECIPIENT VALUES ( 17 , 'basima' , 'Alqershi' , 17 ); 
INSERT INTO RECIPIENT VALUES ( 18 , 'maryum' , 'Alqershi' , 18 ); 
INSERT INTO RECIPIENT VALUES ( 19 , 'sana' , 'Alqershi' , 19 ); 
INSERT INTO RECIPIENT VALUES ( 20 , 'Akbg' , 'Alqershi' , 20 );


Inserting Data into TABLE “Blood_Bank”:


INSERT INTO BLOOD_BANK VALUES ( 1 , 'Melikgazi' , 10000 ); 
INSERT INTO BLOOD_BANK VALUES ( 2 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 3 , 'Melikgazi' , 1000 ); 
INSERT INTO BLOOD_BANK VALUES ( 4 , 'Melikgazi' , 10000 ); 
INSERT INTO BLOOD_BANK VALUES ( 5 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 6 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 7 , 'Melikgazi' , 1000000 ); 
INSERT INTO BLOOD_BANK VALUES ( 8 , 'Melikgazi' , 1000000 ); 
INSERT INTO BLOOD_BANK VALUES ( 9 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 10 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 11 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 12 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 13 , 'Melikgazi' , 1000 ); 
INSERT INTO BLOOD_BANK VALUES ( 14 , 'Melikgazi' , 10000 ); 
INSERT INTO BLOOD_BANK VALUES ( 15 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 16 , 'Melikgazi' , 100000 ); 
INSERT INTO BLOOD_BANK VALUES ( 17 , 'Melikgazi' , 1000000 ); 
INSERT INTO BLOOD_BANK VALUES ( 18 , 'Melikgazi' , 1000 ); 
INSERT INTO BLOOD_BANK VALUES ( 19 , 'Melikgazi' , 1000000 ); 
INSERT INTO BLOOD_BANK VALUES ( 20 , 'Melikgazi' , 1000000 );



Inserting Data into TABLE “Medical_Info”:

INSERT INTO MEDICAL_INFO VALUES ( 150100 , 1 , '2020-01-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150101 , 2 , '2020-02-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150102 , 3 , '2020-04-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150103 , 4 , '2020-06-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150104 , 5 , '2020-05-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150105 , 6 , '2020-01-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150106 , 7 , '2020-08-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150107 , 8 , '2020-09-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150108 , 9 , '2020-10-02' , 'No disease'); 
INSERT INTO MEDICAL_INFO VALUES ( 150109 , 10 , '2020-05-02' , 'No disease');

Inserting Data into TABLE “Gives_to”:

INSERT INTO GIVES_TO VALUES ( 990001 , 1 , 1 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990002 , 2 , 2 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990003 , 3 , 3 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990004 , 4 , 4 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990005 , 5 , 5 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990006 , 6 , 6 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990007 , 7 , 7 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990008 , 8 , 8 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990009 , 9 , 9 , '2020-03-12' , 350 ); 
INSERT INTO GIVES_TO VALUES ( 990010 , 10 , 10 , '2020-03-12' , 350 );


Inserting Data into TABLE “Takes_from”:

INSERT INTO TAKES_FROM VALUES ( 770001 , 1 , 1 , '2020-02-19' , 500 ); 
INSERT INTO TAKES_FROM VALUES ( 770002 , 2 , 2 , '2020-02-19' , 700 ); 
INSERT INTO TAKES_FROM VALUES ( 770003 , 3 , 3 , '2020-02-19' , 700 ); 
INSERT INTO TAKES_FROM VALUES ( 770004 , 4 , 4 , '2020-02-19' , 7700 ); 
INSERT INTO TAKES_FROM VALUES ( 770005 , 5 , 5 , '2020-02-19' , 7080 ); 
INSERT INTO TAKES_FROM VALUES ( 770006 , 6 , 6 , '2020-02-19' , 800 ); 
INSERT INTO TAKES_FROM VALUES ( 770007 , 7 , 7 , '2020-02-19' , 600 ); 
INSERT INTO TAKES_FROM VALUES ( 770008 , 8 , 8 , '2020-02-19' , 400 ); 
INSERT INTO TAKES_FROM VALUES ( 770009 , 9 , 9 , '2020-02-19' , 700 ); 
INSERT INTO TAKES_FROM VALUES ( 770010 , 10 , 10 , '2020-02-19' , 700 );


VIEWS:

	CREATE VIEW users_vu AS
       SELECT User_Id, Status_Id, Address_Id, Phone_No, Password
       FROM Users;
	Create VIEW find_Universal_donors AS
SELECT Blood_code, donor.First_Name, donor.Last_Name 
FROM Blood_Type, donor 
WHERE Blood_Type.Blood_Id = donor.Blood_Id and Blood_code = 'O'

	Create VIEW find_all_universal_receivers AS
SELECT Blood_code, recipient.First_Name, recipient.Last_Name
FROM Blood_Type, recipient
WHERE Blood_Type.Blood_Id = recipient.Blood_Id and Blood_code = 'AB'

	CREATE VIEW find_all_receiver_contact_info AS
SELECT distinct recipient.First_Name, recipient.Last_Name, Users.phone_no, address.city
FROM Users, recipient, address 
       WHERE Users.user_Id = recipient.recipient_Id or Users.user_id = address.Address_Id
	Create view final_all_donor_contact_info as 
select distinct donor.First_Name, donor.Last_Name, Users.phone_no, address.city
from Users, donor, address
where Users.user_Id = donor.donor_id or Users.user_id = address.Address_Id


	Create view find_all_blood_bank_contact_info as
select distinct Blood_bank.Name, Users.phone_no, address.city
from Users, blood_bank, address
       where Users.user_Id = blood_bank.bank_id or Users.user_id = address.Address_Id


Procedures:

CREATE PROCEDURE SelectUsers
AS
SELECT * FROM Users
GO;

Exec SelectUsers


Joins:

SELECT Users.User_Id, Users.Status_Id
FROM Users
INNER JOIN Status
ON Users.Status_Id=Status.Status_Id


RETRIVAL OF DATA:

Select Phone_No,Status_Id
from Users
where Address_Id>1000001;


UPDATE:
UPDATE Blood_Bank
SET Name = 'Afifa' 
WHERE Bank_id=1;
DELETE:

DELETE FROM Donor
WHERE First_Name='Akbg';
