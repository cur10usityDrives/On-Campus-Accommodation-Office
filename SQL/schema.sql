-- ************************************************************ --

-- DATABASE CREATION --  

create database db_project;
use  db_project;

-- ************************************************************ --

-- CREATE TABLE QUERIES --  

CREATE TABLE NextOfKin 
(
  NextOfKinID CHAR(6) NOT NULL,
  Name VARCHAR(100),
  BannerNumber CHAR(6) NOT NULL,
  Relationship VARCHAR(255),
  PRIMARY KEY (NextOfKinID)
);

CREATE TABLE Advisor
(
  AdviserID CHAR(6) NOT NULL,
  Position VARCHAR(100),
  RoomNumber CHAR(6),
  FullName VARCHAR(100),
  Department VARCHAR(50),
  Email VARCHAR(50),
  PhoneNumber VARCHAR(20),
  PRIMARY KEY (AdviserID)
);

CREATE TABLE ResidenceStaff
(
  StaffID CHAR(6) NOT NULL,
  FullName VARCHAR(100),
  DOB DATE,
  Position VARCHAR(100),
  Email VARCHAR(50),
  Gender VARCHAR(6),
  Address VARCHAR(100),
  PRIMARY KEY (StaffID)
);

CREATE TABLE ResidenceHall
(
  HallName VARCHAR(25) NOT NULL,
  NoOfrooms INT(4),
  Telephone VARCHAR(20),
  Address VARCHAR(100),
  StaffID CHAR(6) NOT NULL,
  PRIMARY KEY (HallName),
  FOREIGN KEY (StaffID) REFERENCES ResidenceStaff(StaffID)
);

CREATE TABLE StudentFlats
(
  FlatNumber CHAR(6) NOT NULL,
  NoOfrooms INT(4),
  Address VARCHAR(100),
  StaffID CHAR(6) NOT NULL,
  PRIMARY KEY (FlatNumber),
  FOREIGN KEY (StaffID) REFERENCES ResidenceStaff(StaffID)
);

CREATE TABLE Room
(
  RoomNumber CHAR(6) NOT NULL,
  RentRate FLOAT,
  PlaceNumber CHAR(6),
  HallName VARCHAR(25) NOT NULL,
  PRIMARY KEY (RoomNumber),
  FOREIGN KEY (HallName) REFERENCES ResidenceHall(HallName)
);

CREATE TABLE Inspection
(
  InspectionID CHAR(6) NOT NULL,
  InspectionDate DATE,
  SatisfactoryCondition	BOOLEAN,
  AdditionalComments VARCHAR(255),
  LeaseNumber CHAR(6) NOT NULL,
  HallName VARCHAR(25) NOT NULL,
  StaffID CHAR(6) NOT NULL,
  PRIMARY KEY (InspectionID, HallName, StaffID),
  FOREIGN KEY (HallName) REFERENCES ResidenceHall(HallName),
  FOREIGN KEY (StaffID) REFERENCES ResidenceStaff(StaffID)
);

CREATE TABLE Student
(
  BannerNumber CHAR(6) NOT NULL,
  Name VARCHAR(100),
  DOB DATE,
  Email VARCHAR(50),
  Gender VARCHAR(6),
  Minor VARCHAR(25), 
  Major VARCHAR(25),
  SpecialNeeds VARCHAR(255),
  AdditionalComments VARCHAR(255),
  Category VARCHAR(25),
  Nationality VARCHAR(50),
  PhoneNumber VARCHAR(20),
  HomeAddress VARCHAR(100),
  RoomNumber CHAR(6) NOT NULL,
  AdviserID CHAR(6) NOT NULL,
  PRIMARY KEY (BannerNumber),
  FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber),
  FOREIGN KEY (AdviserID) REFERENCES Advisor(AdviserID)
);

CREATE TABLE Lease
(
  LeaseNumber CHAR(6) NOT NULL,
  PlaceNumber CHAR(6) NOT NULL,
  StartDate DATE,
  LeaseRenewal BOOLEAN,
  BannerNumber CHAR(6) NOT NULL,
  RoomNumber CHAR(6) NOT NULL,
  EndDate DATE,
  Address VARCHAR(100),
  PRIMARY KEY (LeaseNumber),
  FOREIGN KEY (BannerNumber) REFERENCES Student(BannerNumber)
);

CREATE TABLE Invoice
(
  InvoiceNumber CHAR(6) NOT NULL,
  Semester VARCHAR(50),
  PaymentDue FLOAT,
  RoomNumber CHAR(6) NOT NULL,
  DatePaid DATE,
  MethodOfPayment VARCHAR(50),
  BannerNumber CHAR(6) NOT NULL,
  PlaceNumber CHAR(6) NOT NULL,
  DateFirstReminder DATE,
  DateSecondReminder DATE,
  Address VARCHAR(100),
  LeaseNumber CHAR(6) NOT NULL,
  PRIMARY KEY (InvoiceNumber),
  FOREIGN KEY (LeaseNumber) REFERENCES Lease(LeaseNumber)
);

CREATE TABLE Course
(
  CourseNumber CHAR(6) NOT NULL,
  CourseTitle VARCHAR(255),
  CourseInstructor VARCHAR(100),
  InstructorEmail VARCHAR(50),
  InstructorRoomNumber CHAR(6) NOT NULL,
  InstructorPhoneNumber VARCHAR(20),
  BannerNumber CHAR(6) NOT NULL,
  PRIMARY KEY (CourseNumber),
  FOREIGN KEY (BannerNumber) REFERENCES Student(BannerNumber)
);

CREATE TABLE Enrollment (
  CourseNumber CHAR(6) NOT NULL,
  BannerNumber CHAR(6) NOT NULL,
  PRIMARY KEY (CourseNumber, BannerNumber),
  FOREIGN KEY (CourseNumber) REFERENCES Course(CourseNumber),
  FOREIGN KEY (BannerNumber) REFERENCES Student(BannerNumber)
);

-- ************************************************************ --

-- CREATING INDICES --

CREATE INDEX idx_student_bannernumber ON Student(BannerNumber);
CREATE INDEX idx_nextofkin_bannernumber ON NextOfKin(BannerNumber);
CREATE INDEX idx_room_roomnumber ON Room(RoomNumber);
CREATE INDEX idx_residencehall_hallname ON ResidenceHall(HallName);
CREATE INDEX idx_studentflats_staffid ON StudentFlats(StaffID);
CREATE INDEX idx_lease_bannernumber ON Lease(BannerNumber);
CREATE INDEX idx_lease_roomnumber ON Lease(RoomNumber);
CREATE INDEX idx_invoice_roomnumber ON Invoice(RoomNumber);
CREATE INDEX idx_invoice_bannernumber ON Invoice(BannerNumber);
CREATE INDEX idx_invoice_leasenumber ON Invoice(LeaseNumber);
CREATE INDEX idx_enrollment_coursenumber ON Enrollment(CourseNumber);
CREATE INDEX idx_enrollment_bannernumber ON Enrollment(BannerNumber);

-- ************************************************************ --
