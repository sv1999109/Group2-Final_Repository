
USE Group2_sharedworkspace;
	
/*Populate User Table*/
SET IDENTITY_INSERT Users ON 
INSERT INTO Group2_sharedworkspace.dbo.Users (UserID, UserName, UserPhone, UserEmail,UserRoll)
VALUES
(1,'Dabra', 4533426578,'d10@gmail.com','Owner'),(2,'Angad' , 3458653210, 'Ad@gmail.com','Coworker'),(3, 'Ravi', 3455677563, 'rvit@gmail.com','Coworker'),(4,'Daryl',2347892100,'12d@gmail.com','Coworker'), (5,'Ram', 4523426578,'78@gmail.com','Owner'), (6,'Sham', 1233426578,'jk0@gmail.com','Coworker'),
(7,'karine', 4533456778,'av10@gmail.com','Owner'), (8,'akaska', 5093426578,'jkg@gmail.com','Owner'), (9,'Darbira', 8743426578,'jk90@gmail.com','Coworker'), (10,'Anuj','1234567895','anuj456@gmail.com','Owner');
SET IDENTITY_INSERT Users OFF
	GO

/*Populate Post Table*/
SET IDENTITY_INSERT Post ON 
INSERT INTO Group2_sharedworkspace.dbo.Post(PostID, UserID, Rent,LocationName, PostName, PostCatagory, PostDescription, PostDate,Neighborhood,Square_feet)
VALUES (50,1,708,'Calgary','Xyz Company','Shared','Furnished','2021-07-10','Starbucks store',1100), (51,2,514,'Sherwood','Shiba Ltd','Suit','Not Furnished','2021-11-15','Burger king',1150),   
 (52,3,300,'Edminton','Abbey Cons','Deluxe','NULL','2021-10-01','Mc Donald',1000), (54,4,258,'Iverness','Shiba Ltd','Terrace','Furnished','2021-02-28','LRT Station',1050),
 (55,5,558,'Alberta','jkg Ltd','Terrace','Furnished','2021-02-04','Playground',1122), (56,6,268,'insfil','pbLtd','Terrace','Furnished','2021-01-28','Grocery store',900),
 (57,7,278,'goa','Shiba Ltd','Terrace',' Not Furnished','2021-02-23','Walmart',950), (59,8,208,'shimla','abc Ltd','Terrace','Furnished','2021-02-28','Tim Hortorn',1250),
 (60,9,298,'Toronto','xyz Ltd','Terrace','Furnished','2021-03-01','Burger king',1180), (63,10,858,'montreal','happy Ltd','Terrace',' Not Furnished','2021-07-5','LRT Station',1200)
;	
SET IDENTITY_INSERT Post OFF
	GO

/*Populate Facility Table*/
SET IDENTITY_INSERT Facility ON 
INSERT INTO Group2_sharedworkspace.dbo.Facility (FacilityID, PostID, Furniture,ParkingSpace,DesktopCom,Workspace,Printer, WIFI,Public_Transition)
VALUES(201,50,'Yes','Yes','Yes','office_Room','Yes','Nacho','yes'),(202,51,'No','Yes','Yes','Private office_Room','No','PorqueFI','yes'),
(203,52,'NIL','No','Yes','Meeting Room','Yes','ByteME','no'), (204,54,'No','Yes','Yes','Private office_Room','Yes','W 3','yes'), (205,55,'Yes','Yes','Yes','office_Room','Yes','W 6','no'),
(206,56,'Yes','NO','Yes','Meeting Room','No','JaxxTI','Yes'), (207,57,'Yes','Yes','Yes','Meeting Room','Yes','B 9','no'), (208,59,'Yes','Yes','Yes','Meeting Room','Yes','RaniXY','no'),
(209,60,'No','Yes','Yes','office_Room','Yes','W 9','yes'), (210,63,'Yes','Yes','No','Private office_Room','Yes','W 10','yes'); 
SET IDENTITY_INSERT Facility OFF
	GO

/*Populate RentalSpecification Table*/
SET IDENTITY_INSERT RentalSpecification ON 
INSERT INTO Group2_sharedworkspace.dbo.RentalSpecification(RentalSpecificationID, FacilityID, PostID, RentalAgreement, DamageDeposit, ProofOfID, ProofOfVaccination,Individual_Allowed,Smoking,Availability_date)
VALUES(301,201,50,'Yes',1200,'Yes','yes',2,'yes','2021-07-10'),(302,202,51,'No',1234,'Yes','yes',3,'no','2021-11-15'),
(303,203,52,'Yes',897,'Yes','no',4,'yes','2021-10-01'),(304,204,54,'Yes',1100,'Yes','no',2,'yes','2021-02-28'),
(305,205,55,'Yes',657,'Yes','no',3,'no','2021-02-04'),(306,206,56,'no',4678,'Yes','Yes',4,'yes','2021-01-28'),
(307,207,57,'Yes',345,'Yes','Yes',3,'no','2021-02-23'),(308,208,59,'Yes',467,'Yes','no',3,'no','2021-02-28'),
(309,209,60,'Yes',867,'Yes','no',4,'yes','2021-03-01'),(310,210,63,'Yes',4778,'no','no',2,'no','2021-07-5');
SET IDENTITY_INSERT RentalSpecification OFF
	GO

	USE master
GO

ALTER DATABASE Group2_sharedworkspace SET READ_WRITE 
GO

