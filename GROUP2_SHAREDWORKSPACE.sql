

/*Creating Group2_sharedworkspace Database */
DROP DATABASE Group2_sharedworkspace;


CREATE DATABASE Group2_sharedworkspace;

/*Creating User Table*/
CREATE TABLE Group2_sharedworkspace.dbo.Users
(
[UserID] int NOT NULL IDENTITY PRIMARY KEY,
[UserName] varchar(50)  NOT NULL,
[UserPhone] varchar(50) NOT NULL,
[UserEmail] varchar(50) NOT NULL,
[UserRoll] varchar(50) NOT NULL
);


/*Creating Post Table*/
CREATE TABLE Group2_sharedworkspace.dbo.Post
(
[PostID] int NOT NULL IDENTITY PRIMARY KEY,
[UserID] int NOT NULL REFERENCES Users(UserID),
[Rent] money NOT NULL,
[LocationName] varchar(50) NOT NULL,
[PostName] varchar(50) NOT NULL,
[PostCatagory] varchar(50) NOT NULL,
[PostDescription] varchar(50) NULL,
[PostDate] date NOT NULL,
[Neighborhood] varchar(50) NULL,
[Square_feet] int NOT NULL
);


/*Creating Facility Table*/
CREATE TABLE Group2_sharedworkspace.dbo.Facility
(
[FacilityID] int NOT NULL IDENTITY PRIMARY KEY,
[PostID] int NOT NULL REFERENCES Post(PostID),
[Furniture] varchar(50) NULL,
[ParkingSpace] varchar(50) NOT NULL,
[DesktopCom] varchar(50) NOT NULL,
[Workspace] varchar(50) NOT NULL,
[Printer] varchar(50) NOT NULL,
[WIFI] varchar(50) NOT NULL,
[Public_Transition] varchar(50) NOT NULL
);


/*Creating RentalSpecification Table*/
CREATE TABLE Group2_sharedworkspace.dbo.RentalSpecification
(
[RentalSpecificationID] int NOT NULL IDENTITY PRIMARY KEY,
[FacilityID] int NOT NULL REFERENCES Facility(FacilityID),
[PostID] int NOT NULL REFERENCES Post(PostID),
[RentalAgreement] varchar(50) NOT NULL,
[DamageDeposit] money NOT NULL,
[ProofOfID] varchar(50) NOT NULL,
[ProofOfVaccination] varchar(50) NOT NULL,
[Individual_Allowed] int NOT NULL,
[Smoking] varchar(50) NOT NULL,
[Availability_date] date NOT NULL
);
