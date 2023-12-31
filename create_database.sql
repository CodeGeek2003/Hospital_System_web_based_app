﻿-- User table --
CREATE TABLE [User] (
    Username VARCHAR(255) PRIMARY KEY,
    DoB DATE,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    UserType VARCHAR(50),
    Password VARCHAR(255),
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- HospitalManager table --
CREATE TABLE HospitalManager (
    Username VARCHAR(255) PRIMARY KEY,
    [Role] VARCHAR(50),
    [Access_Level] INT
);

-- SystemAdmin table --
CREATE TABLE SystemAdmin (
    Username VARCHAR(255) PRIMARY KEY,
    SecurityLevel INT
);

-- Doctor table --
CREATE TABLE Doctor (
    Username VARCHAR(255) PRIMARY KEY,
    PagerNumber VARCHAR(20),
    LicenseNumber VARCHAR(50),
    Specialization VARCHAR(100)
);

-- Nurse table --
CREATE TABLE Nurse (
    Username VARCHAR(255) PRIMARY KEY,
    PagerNumber VARCHAR(20),
    LicenseNumber VARCHAR(50)
);

-- Pharmacist table --
CREATE TABLE Pharmacist (
    Username VARCHAR(255) PRIMARY KEY,
    LicenseNumber VARCHAR(50)
);

-- Patient table --
CREATE TABLE Patient (
    SSN VARCHAR(20) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    Gender CHAR(1),
    DoB DATE,
    RoomNumber INT
);

-- Room table --
CREATE TABLE Room (
    RoomNumber INT PRIMARY KEY,
    NumberOfBeds INT,
    FloorNumber INT,
    NurseUsername VARCHAR(255)
);

-- NHelpsD table --
CREATE TABLE NHelpsD (
    NurseUsername VARCHAR(255),
    DoctorUsername VARCHAR(255),
    PRIMARY KEY (NurseUsername, DoctorUsername)
);

-- NHelpsP table --
CREATE TABLE NHelpsP (
    NurseUsername VARCHAR(255),
    PatientSSN VARCHAR(20),
    PRIMARY KEY (NurseUsername, PatientSSN)
);

-- Resources table --
CREATE TABLE Resources (
    Res_ID INT PRIMARY KEY,
    Res_Name VARCHAR(100),
    Quantity INT,
    Type VARCHAR(50),
    Manufacture VARCHAR(100)
);

-- Medicine table --
CREATE TABLE Medicine (
    Res_ID INT PRIMARY KEY,
    Expiration DATE,
    Dosage VARCHAR(50),
    CurrentStock INT,
    Purpose VARCHAR(100)
);

-- Beholden table --
CREATE TABLE Beholden (
    PharmacistUsername VARCHAR(255),
    MedicineID INT,
    PRIMARY KEY (PharmacistUsername, MedicineID)
);

-- Medical_Equipment table --
CREATE TABLE Medical_Equipment (
    Res_ID INT PRIMARY KEY,
    Equipment_Type VARCHAR(50),
    Purchase_Date DATE,
    Current_Condition VARCHAR(100)
);

-- Utilizes table --
CREATE TABLE Utilizes (
    DoctorUsername VARCHAR(255),
    Res_ID INT,
    PRIMARY KEY (DoctorUsername, Res_ID)
);

-- Medical_History table --
CREATE TABLE Medical_History (
    MedHis_ID INT PRIMARY KEY,
    PatientSSN VARCHAR(20)
);

-- MedicalHistory_Diagnosis table --
CREATE TABLE MedicalHistory_Diagnosis (
    MedHis_ID INT,
    Diagnosis VARCHAR(100),
    PRIMARY KEY (MedHis_ID, Diagnosis)
);

-- Patient_Medication table --
CREATE TABLE Patient_Medication (
    MedHis_ID INT,
    Medicine_ID INT,
    PRIMARY KEY (MedHis_ID, Medicine_ID)
);

-- Treats table --
CREATE TABLE Treats (
    DoctorUsername VARCHAR(255),
    PatientSSN VARCHAR(20),
    PRIMARY KEY (DoctorUsername, PatientSSN)
);

-- MedicalHistory_Treatment table --
CREATE TABLE MedicalHistory_Treatment (
    Treatment INT,
    MedHis_ID INT,
    PRIMARY KEY (Treatment, MedHis_ID)
);

-- MedicalHistory_Procedures table --
CREATE TABLE MedicalHistory_Procedures (
    Procedures INT,
    MedHis_ID INT,
    PRIMARY KEY (Procedures, MedHis_ID)
);

-- MedicalHistory_Allergies table --
CREATE TABLE MedicalHistory_Allergies (
    Allergies INT,
    MedHis_ID INT,
    PRIMARY KEY (Allergies, MedHis_ID)
);

-- Writes table --
CREATE TABLE Writes (
    MedHis_ID INT,
    DoctorUsername VARCHAR(255),
    PRIMARY KEY (MedHis_ID, DoctorUsername)
);

-- Add Foreign Key Constraints --
ALTER TABLE HospitalManager
ADD FOREIGN KEY (Username) REFERENCES [User](Username);

ALTER TABLE SystemAdmin
ADD FOREIGN KEY (Username) REFERENCES [User](Username);

ALTER TABLE Doctor
ADD FOREIGN KEY (Username) REFERENCES [User](Username);

ALTER TABLE Nurse
ADD FOREIGN KEY (Username) REFERENCES [User](Username);

ALTER TABLE Pharmacist
ADD FOREIGN KEY (Username) REFERENCES [User](Username);

ALTER TABLE Patient
ADD FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber);

ALTER TABLE Room
ADD FOREIGN KEY (NurseUsername) REFERENCES Nurse(Username);

ALTER TABLE NHelpsD
ADD FOREIGN KEY (NurseUsername) REFERENCES Nurse(Username);

ALTER TABLE NHelpsD
ADD FOREIGN KEY (DoctorUsername) REFERENCES Doctor(Username);

ALTER TABLE NHelpsP
ADD FOREIGN KEY (NurseUsername) REFERENCES Nurse(Username);

ALTER TABLE NHelpsP
ADD FOREIGN KEY (PatientSSN) REFERENCES Patient(SSN);

ALTER TABLE Medicine
ADD FOREIGN KEY (Res_ID) REFERENCES Resources(Res_ID);

ALTER TABLE Beholden
ADD FOREIGN KEY (PharmacistUsername) REFERENCES Pharmacist(Username);

ALTER TABLE Beholden
ADD FOREIGN KEY (MedicineID) REFERENCES Medicine(Res_ID);

ALTER TABLE Medical_Equipment
ADD FOREIGN KEY (Res_ID) REFERENCES Resources(Res_ID);

ALTER TABLE Utilizes
ADD FOREIGN KEY (DoctorUsername) REFERENCES Doctor(Username);

ALTER TABLE Utilizes
ADD FOREIGN KEY (Res_ID) REFERENCES Resources(Res_ID);

ALTER TABLE Medical_History
ADD FOREIGN KEY (PatientSSN) REFERENCES Patient(SSN);

ALTER TABLE MedicalHistory_Diagnosis
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE Patient_Medication
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE Patient_Medication
ADD FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Res_ID);

ALTER TABLE Treats
ADD FOREIGN KEY (DoctorUsername) REFERENCES Doctor(Username);

ALTER TABLE Treats
ADD FOREIGN KEY (PatientSSN) REFERENCES Patient(SSN);

ALTER TABLE MedicalHistory_Treatment
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE MedicalHistory_Procedures
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE MedicalHistory_Allergies
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE Writes
ADD FOREIGN KEY (MedHis_ID) REFERENCES Medical_History(MedHis_ID);

ALTER TABLE Writes
ADD FOREIGN KEY (DoctorUsername) REFERENCES Doctor(Username);
