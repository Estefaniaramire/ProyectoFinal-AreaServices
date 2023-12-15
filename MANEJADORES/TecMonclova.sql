
--CREATE DATABASE TecMonclova;

use TecMonclova;

--academicdiploma

CREATE TABLE academicdiploma (
  idAcademicDiploma INT IDENTITY(1,1) PRIMARY KEY,
  idstudent INT NOT NULL,
  title VARCHAR(255) NULL,
  date DATE NULL,
  type VARCHAR(255) NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--academicaward

CREATE TABLE academicward (
  idAcademicAward INT IDENTITY(1,1) PRIMARY KEY,
  date DATE NOT NULL,
  nameAcademicAward VARCHAR(255) NULL,
  description VARCHAR(255) NULL,
  recipients VARCHAR(255) NULL,
  idstudent INT NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--AccreditationControl
CREATE TABLE AccreditationControl 
(
    idAccreditation INT PRIMARY KEY IDENTITY(1,1),
    credits INT,
    serviceHours VARCHAR(50),
    idStudent INT,
    idClub INT,  
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--ActivityCompany

CREATE TABLE ActivityCompany (
    IdActivityCompany INT PRIMARY KEY,
    IdActivity INT NOT NULL,
    IdCompany INT NOT NULL,
	idUser INT NOT NULL,
    status BIT default 1,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);


--ActivityDetail
CREATE TABLE ActivityDetail (
idActivityDetail int IDENTITY(1,1),
activitydetailsdescription varchar(100) NOT NULL,
idEvaluationDetail int NULL,
idComplementaryActivity int NULL,
[status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL,
idUser INT NOT NULL
CONSTRAINT PK_ActivityDetail Primary KEY(idActivityDetail)
);

CREATE TABLE ActivityType (
idActivityType int IDENTITY(1,1),
[description] varchar(100) NOT NULL,
activityname varchar(100) NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL,
idUser INT NOT NULL
CONSTRAINT PK_ActivityType Primary KEY(idActivityType)
);

--Agreement
CREATE TABLE Agreement (
idAgreement int IDENTITY  (1,1),
acronym varchar(50) NOT NULL,
objetive varchar(25)NOT NULL,
idObjetive int NOT NULL,---Objetive
idTerritory int NOT NULL,---Territory
statusAgreement varchar(50) NOT NULL,
[status] bit NOT NULL DEFAULT 1,
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL,
idUser INT NOT NULL
CONSTRAINT PK_Agreement Primary KEY(idAgreement)
);

--AgreementCompany
CREATE TABLE AgreementCompany 
(
idAgreementCompany int IDENTITY (1,1),
idAgreement int NOT NULL, 
IdCompany int NOT NULL,
[status] bit NOT NULL DEFAULT 1,
idUsercreate int NULL, 
datecreate date NULL, 
idusermodified int NULL, 
datemodified date NULL,
idUser INT NOT NULL
CONSTRAINT PK_AgreementCompany Primary KEY(idAgreementCompany) 
);

--AgreementPurpose
CREATE TABLE AgreementPurpose
(
idAgreementPurpose int IDENTITY (1,1),
idAgreement int NOT NULL, 
IdPurpose int NOT NULL,
[status] bit NOT NULL DEFAULT 1,
idUsercreate int NULL, 
datecreate date NULL, 
idusermodified int NULL, 
datemodified date NULL,
idUser INT NOT NULL
CONSTRAINT PK_AgreementPurpose Primary KEY(idAgreementPurpose) 
);

--application

CREATE TABLE application (
  idApplication INT IDENTITY(1,1) PRIMARY KEY,
  ApplicantFirstName VARCHAR(255) NULL,
  ApplicantLastName VARCHAR(255) NULL,
  Gender VARCHAR(255) NULL,
  DateOfBirth DATE NOT NULL,
  TemporalID VARCHAR(255) NULL,
  SchoolOfOrigin VARCHAR(255) NULL,
  ApplicationDate DATE NOT NULL,
  Grade VARCHAR(255) NULL,
  PreferredCareer VARCHAR(255) NULL,
  SecondPreferredCareer VARCHAR(255) NULL,
  ThirdPreferredCareer VARCHAR(255) NULL,
  idStudent INT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--Area
CREATE TABLE Area 
(
idArea INT PRIMARY KEY IDENTITY(1,1), 
nameArea varchar(255), 
number int, 
descriptionArea varchar(255),
idAreaType int not null, 
idBuilding int not null, 
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
idUser INT NOT NULL,
modifiedDate date
);

CREATE TABLE AreaAplication
(
idAreaAplication INT PRIMARY KEY IDENTITY(1,1),
[date]date,
[description] varchar(255),
idArea int not null, 
idEmployee int not null, 
idClass int not null,
idAuthorization int not null,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
idUser INT NOT NULL,
modifiedDate date
);

--AreaType/TipoArea
CREATE TABLE AreaType 
(
idAreaType INT PRIMARY KEY IDENTITY(1,1), 
nameArea varchar(255),
[description] varchar(255),
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
idUser INT NOT NULL,
modifiedDate date
);

--Attendance 
CREATE TABLE Attendance (
    idAttendance INT PRIMARY KEY IDENTITY(1,1),
    Date DATE,
    Last_Name VARCHAR(255),
    Name VARCHAR(255),
    Period VARCHAR(255),
    Attendance VARCHAR(255),
    Mother_Last_Name VARCHAR(255),
    Status BIT,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

-- AttendanceRecord
CREATE TABLE AttendanceRecord 
(
    AttendanceRecordId INT PRIMARY KEY IDENTITY(1,1),
    [date] DATE,
    attended VARCHAR(50),
    idStudent INT NOT NULL,
    idClub INT NOT NULL,
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--authorization 

CREATE TABLE Authorization_ 
(
idAuthorization INT PRIMARY KEY IDENTITY(1,1),
authorizationDate date,
[description]varchar(255),
idUser INT NOT NULL,
idEmployee int not null,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

--BookCatalog
CREATE TABLE BookCatalog 
(
idBookCatalog INT PRIMARY KEY IDENTITY(1,1),
bookTitle varchar(50), 
authorName varchar(50), 
publisher varchar(50),
inStock int not null,
idArea int not null,
idCourse int not null,
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

--Building
CREATE TABLE Building 
(
idBuilding INT PRIMARY KEY IDENTITY(1,1), 
number int,
[description] varchar(255),
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

--CandidateStudent
CREATE TABLE CandidateStudent (
    idCandidateStudent INT PRIMARY KEY,
    contactInfo VARCHAR(255),
    gener VARCHAR(255),
    address VARCHAR(255),
    nationality VARCHAR(255),
    name VARCHAR(255),
    status BIT,
    idApplication INT,
    idStudent INT,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

-- Career
CREATE TABLE Career (
    idCareer INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--careerplan
CREATE TABLE careerplan (
  idCareerPlan INT IDENTITY(1,1) PRIMARY KEY,
  idCareer INT NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- CareerService
CREATE TABLE CareerService (
    idCareerService INT PRIMARY KEY IDENTITY(1,1),
    idCareer INT NOT NULL,
    idEmployee INT NOT NULL,
    serviceDate DATE NOT NULL,
    description VARCHAR(100) NOT NULL,
    state VARCHAR(20) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);


-- Class
CREATE TABLE Class (
    idClass INT PRIMARY KEY IDENTITY(1,1),
    idEmployee INT NOT NULL,
    idCourse INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--ClassDetail
CREATE TABLE ClassDetail 
(
idClassDetail  INT PRIMARY KEY IDENTITY(1,1),
startTime Time , 
endTime Time, 
days Time,
idClass int not null,
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

--classroom
CREATE TABLE classroom (
    idAula INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
	roomNumber int not null,
    capacity INT,
    NSeats NVARCHAR(25),
    Building NVARCHAR(50),
    Location NVARCHAR(100),
	idUser INT NOT NULL,
    status bit default 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--Club
CREATE TABLE Club 
(
    idClub INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50),
    classification VARCHAR(50),
    idEmployee INT,
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--ClubSchedule
CREATE TABLE ClubSchedule (
    idClubSchedule INT PRIMARY KEY IDENTITY(1,1),
    dayOfWeek DATE,
    startTime TIME,
    endTime TIME,
    idClub INT,
	idUser INT NOT NULL,
    idEmployee INT,
    status BIT,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);


-- ClubStudent 
CREATE TABLE ClubStudent 
(
    idClubStudent INT PRIMARY KEY IDENTITY(1,1),
    idClub INT,
    idStudent INT,
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);


--Company
CREATE TABLE Company (
    IdCompany INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255),
    identificationnumber VARCHAR(50),
	idUser INT NOT NULL,
    IdSector INT,
    status BIT,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);

--CompanyStudent
CREATE TABLE CompanyStudent (
IdCompanyStudent int IDENTITY(1,1),
[date] Date NULL,
workplace varchar(50) NOT NULL,
idStudent int NOT NULL,
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1,
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
CONSTRAINT PK_CompanyStudent Primary KEY(idCompanyStudent)
);

--ComplementaryActivity
CREATE TABLE ComplementaryActivity 
(    
 idComplementaryActivity int IDENTITY (1,1), 
 activityname varchar(50) NOT NULL, 
 [status] bit NOT NULL DEFAULT 1, 
 idStudent int NOT NULL, 
 idUser INT NOT NULL,
 idActivityType int NOT NULL,
 idusercreate int NULL, 
 datecreate date NULL, 
 idusermodified int NULL, 
 datemodified date NULL 
 CONSTRAINT PK_ComplementaryActivity PRIMARY KEY (idComplementaryActivity) 
 );

 CREATE TABLE ComplementaryActivityCompany (
    idComplementaryActivityCompany INT PRIMARY KEY IDENTITY(1,1),
    idComplementaryActivity INT,
    idCompany INT,
	idUser INT NOT NULL,
    status BIT,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);

--Contract
CREATE TABLE Contract (
  idContract INT PRIMARY KEY IDENTITY(1,1),
  startDate DATE NOT NULL,
  endDate DATE NOT NULL,
  salary DECIMAL(10,0) NOT NULL,
  contractType VARCHAR(255) NULL,
  idUser INT NOT NULL,
  idEmployee INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- Course
CREATE TABLE Course (
    idCourse INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    credits INT NOT NULL,
    code VARCHAR(20) NOT NULL,
	Characteristic varchar(50)NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--CourseStudyPlan
CREATE TABLE CourseStudyPlan (
    IdCourseStudyPlan INT PRIMARY KEY IDENTITY(1,1),
    IdCourse INT,
    IdStudyPlan INT,
	idUser INT NOT NULL,
    status BIT,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);

--Cubicle
CREATE TABLE Cubicle (
    idCubicle INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    Building NVARCHAR(50),
    Period DATE,
    CubicleNumber NVARCHAR(10),
    Capacity INT,
	idUser INT NOT NULL,
    status bit DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--Curriculum
CREATE TABLE Curriculum (
    idCurriculum INT PRIMARY KEY IDENTITY(1,1),
    Semester INT,
    Period DATETIME,
    Status VARCHAR(50),
    Date DATE,
    Subject_Names VARCHAR(255),
    Curriculum_Names VARCHAR(255),
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);


-- Degree
CREATE TABLE Degree (
    idDegree INT PRIMARY KEY IDENTITY(1,1),
    graduationDate DATE NOT NULL,
    ofbtainedDegree VARCHAR(50) NOT NULL,
    registrationNumber VARCHAR(20) NOT NULL,
	idStudent INT,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- degreerequirements
CREATE TABLE DegreeRequirements (
  idDegreeRequirements INT PRIMARY KEY IDENTITY(1,1),
  semester INT NOT NULL,
  tipo VARCHAR(255) NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL,
  idSubject INT NOT NULL,
  idCareer INT NOT NULL
);

-- department
CREATE TABLE Department (
  idDepartment INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NULL,
  description VARCHAR(255) NULL,
  director VARCHAR(255) NULL,
  foundingDate DATE NOT NULL,
  phone VARCHAR(255) NULL,
  email VARCHAR(255) NULL,
  location VARCHAR(255) NULL,
  openingHour TIME NOT NULL,
  closingHour TIME NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- DocumentRequest
CREATE TABLE DocumentRequest (
    idDocumentRequest INT PRIMARY KEY IDENTITY(1,1),
    idStudent INT NOT NULL,
    idDocumentType INT NOT NULL,
    idEmployee INT NOT NULL,
    RequestDate DATE NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- DocumentType
CREATE TABLE DocumentType (
    idDocumentType INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- dropout
CREATE TABLE DropOut (
  idDropOut INT PRIMARY KEY IDENTITY(1,1),
  dropoutDate DATE NOT NULL,
  Reason VARCHAR(255) NULL,
  idStudent INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- Education
CREATE TABLE Education (
    idEducation INT PRIMARY KEY IDENTITY(1,1),
    educationLevel VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    idStudent INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);


-- employee
CREATE TABLE Employee (
    idEmployee INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    dateOfBirth DATE NOT NULL,
    address VARCHAR(100) NOT NULL,
    zipCode VARCHAR(10) NOT NULL,
    rfc VARCHAR(13) NOT NULL,
    socialSecurity VARCHAR(15) NOT NULL,
    idEmployeeType INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--EmployeePosition
CREATE TABLE EmployeePosition 
(    
idEmployeePosition int IDENTITY (1,1), 
IdEmployee int NOT NULL, 
IdPosition int NOT NULL, 
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idusercreate int NULL, 
datecreate date NULL, 
idusermodified int NULL, 
datemodified date NULL ,
CONSTRAINT PK_EmployeePosition PRIMARY KEY (idEmployeePosition) 
); 

-- EmployeeType
CREATE TABLE EmployeeType (
    idEmployeeType INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    position VARCHAR(50) NOT NULL,
    baseSalary DECIMAL(10, 2) NOT NULL,
    hours INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- Enrollment
CREATE TABLE Enrollment (
    idEnrollment INT PRIMARY KEY IDENTITY(1,1),
    idStudent INT NOT NULL,
    idPeriod INT NOT NULL,
    numericalReference INT NOT NULL,
    totalPayment DECIMAL(10, 2) NOT NULL,
    matriculation VARCHAR(50) NOT NULL,
    dueDate DATE NOT NULL,
    semester INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--Entrepreneur
CREATE TABLE Entrepreneur (
    idEntrepreneur INT PRIMARY KEY IDENTITY(1,1),
    request VARCHAR(50) NOT NULL,
    objective VARCHAR(50) NOT NULL,
    codeEntrepreneur VARCHAR(50) NOT NULL,
    workTeam VARCHAR(50) NOT NULL,
    startdate DATE NOT NULL,
    finaldate DATE NOT NULL,
    duration VARCHAR(50) NOT NULL,
    IdEmploye INT NOT NULL,
    IdStudent INT NOT NULL,
    [status] BIT NOT NULL,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);


--EvaluationDetail
CREATE TABLE EvaluationDetail (
idEvaluationDetail int IDENTITY(1,1),
assessment varchar(50) NOT NULL,
criterion varchar(100) NOT NULL,
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
CONSTRAINT PK_EvaluationDetail Primary KEY(idEvaluationDetail)
);

-- event
CREATE TABLE Event (
  idEvent INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  description VARCHAR(255) NULL,
  location VARCHAR(255) NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- EventEmployee
CREATE TABLE EventEmployee (
  idEventEmployee INT PRIMARY KEY IDENTITY(1,1),
  idEmployee INT NOT NULL,
  idEvent INT NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- eventstudent
CREATE TABLE EventStudent (
  idEventStudent INT PRIMARY KEY IDENTITY(1,1),
  idEvent INT NOT NULL,
  idStudent INT NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- Exam
CREATE TABLE Exam (
    idExam INT PRIMARY KEY IDENTITY,
    Grade NVARCHAR(20),
    Date DATE,
    StartTime TIME,
    ExamType NVARCHAR(25),
    StudentName NVARCHAR(50),
    DurationMinutes INT,
    ClassroomID INT,
	idUser INT NOT NULL,
    status bit DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- Expenses
CREATE TABLE Expenses 
(
    idExpenses INT PRIMARY KEY IDENTITY(1,1),
    expenseDate DATE,
    amount DECIMAL(10, 2),
	idUser INT NOT NULL,
    expenseDescription VARCHAR(50),
    status INT DEFAULT 1,
    idExpenseType INT,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- ExpenseType
CREATE TABLE ExpenseType 
(
    idExpenseType INT PRIMARY KEY IDENTITY(1,1),
    expenseTypeName VARCHAR(50),
    [description] VARCHAR(50),
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--ExternalPayment
CREATE TABLE ExternalPayment (
    idExternalPayment INT PRIMARY KEY IDENTITY(1,1),
    payee VARCHAR(255),
    referenceNumber VARCHAR(50),
    paymentMethod VARCHAR(50),
    paymentAmount DECIMAL(18,2),
	idUser INT NOT NULL,
    [status] BIT NOT NULL,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

-- ExternalScholarship
CREATE TABLE ExternalScholarship (
    idExternalScholarship INT PRIMARY KEY IDENTITY(1,1),
    scholarshipName VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    paymentDate DATE NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- ExternalScholarshipDetails
CREATE TABLE ExternalScholarshipDetails (
    idExternalScholarshipDetails INT PRIMARY KEY IDENTITY(1,1),
    idStudent INT NOT NULL,
    idExternalScholarship INT NOT NULL,
    institution VARCHAR(50) NOT NULL,
    campus VARCHAR(50) NOT NULL,
    major VARCHAR(50) NOT NULL,
    semester INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--ExtraCurricularScholarship
CREATE TABLE ExtraCurricularScholarship 
(
    idScholarship INT PRIMARY KEY IDENTITY(1,1),
    scholarshipAmount DECIMAL(10, 2),
    eligibilityRequirements NVARCHAR(100),
    scholarshipDuration VARCHAR(50),
    [description] NVARCHAR(100),
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- Facility
CREATE TABLE Facility 
(
    idFacility INT PRIMARY KEY IDENTITY(1,1),
    facilityName VARCHAR(50),
    capacity VARCHAR(50),
    [location] VARCHAR(50),
    [Availability] VARCHAR(50),
	idUser INT NOT NULL,
    status INT DEFAULT 1,
    idClub INT,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- FamilyData
CREATE TABLE FamilyData (
    idFamilyData INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    relationship VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    idStudent INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- GraduateInformation
CREATE TABLE GraduateInformation (
    idGraduateInformation INT PRIMARY KEY IDENTITY(1,1),
    graduationDate DATE NOT NULL,
    currentJob VARCHAR(50) NOT NULL,
    currentPosition VARCHAR(50) NOT NULL,
	idStudent INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);


-- groupp
CREATE TABLE Groupp (
  idGroup INT PRIMARY KEY IDENTITY(1,1),
  groupName VARCHAR(255) NULL,
  numberOfStudents INT NOT NULL,
  idUser INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- InstitutionalScholarship
CREATE TABLE InstitutionalScholarship (
    idInstitutionalScholarship INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    percentage DECIMAL(5, 2) NOT NULL,
    requirements VARCHAR(100) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- InternalScholarshipDetails
CREATE TABLE InternalScholarshipDetails (
    idInternalScholarshipDetails INT PRIMARY KEY IDENTITY(1,1),
    idInstitutionalScholarship INT NOT NULL,
    idStudent INT NOT NULL,
    semester INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);


-- Kardex
CREATE TABLE Kardex (
    idKardex INT PRIMARY KEY IDENTITY(1,1),
    idClass INT NOT NULL,
    idOpportunity INT NOT NULL,
    idStudent INT NOT NULL,
    unity VARCHAR(50) NOT NULL,
    note DECIMAL(5, 2) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- LifeInsurance
CREATE TABLE LifeInsurance (
    idLifeInsurance INT PRIMARY KEY IDENTITY(1,1),
    policyNumber VARCHAR(20) NOT NULL,
    insuranceCompany VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    beneficiary VARCHAR(50) NOT NULL,
    deathCoverage DECIMAL(10, 2) NOT NULL,
    disabilityCoverage DECIMAL(10, 2) NOT NULL,
    insurancePayment DECIMAL(10, 2) NOT NULL,
    paymentPeriod INT NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

CREATE TABLE LoanAplication
(
idLoanAplication  INT PRIMARY KEY IDENTITY(1,1),
numberLoan int ,
descriptionLoanAplication varchar(50),
deliveryDate datetime,
departureDate datetime,
quantity int ,
idBookCatalog int,
idStudent int not null,
idAuthorization int not null,
idEmployee int not null,
idToolCatalog int,
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

CREATE TABLE LoanAplicationBookCatalog 
(
idLoanAplicationBookCatalog INT PRIMARY KEY IDENTITY(1,1), 
idLoanAplication  int not null,  
idBookCatalog  int not null, 
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

-- Material
CREATE TABLE Material 
(
    idMaterial INT PRIMARY KEY IDENTITY(1,1),
    itemName VARCHAR(50),
    quantity INT,
    itemType VARCHAR(50),
    idMaterialLoan INT,
	idUser INT NOT NULL,
    idMaterialType INT,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--MaterialLoan
CREATE TABLE MaterialLoan 
(
    idMaterialLoan INT PRIMARY KEY IDENTITY(1,1),
    specialty VARCHAR(50),
    article VARCHAR(50),
    entryDate DATE,
    exitDate DATE,
    materialStatus VARCHAR(50),
    idStudent INT,
    idEmployee INT,
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

-- MaterialType
CREATE TABLE MaterialType 
(
    idMaterialType INT PRIMARY KEY IDENTITY(1,1),
    materialTypeName VARCHAR(50),
    [description] VARCHAR(50),
	idUser INT NOT NULL,
    status INT DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--Objetive
CREATE TABLE Objetive (
    IdObjetive INT PRIMARY KEY IDENTITY(1,1),
    objetivename VARCHAR(255),
	idUser INT NOT NULL,
    [status] BIT NOT NULL,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);

--OfficeRequestcommission
CREATE TABLE OfficeRequestcommission 
(    
 idOfficeRequestcommission int IDENTITY (1,1), 
 addressee varchar(50) NOT NULL, 
 header varchar(50) NOT NULL, 
 afftair varchar(150) NOT NULL, 
 date1 date NOT NULL, 
 idUser INT NOT NULL,
 [status] bit NOT NULL DEFAULT 1, 
 idEmploye int NOT NULL, 
 IdUserCreate int null, 
 creationdate date NULL, 
 IdUserModify int null, 
 modified date null 
 CONSTRAINT PK_OfficeRequestcommission PRIMARY KEY (idOfficeRequestcommission) 
); 

--OfficeRequestcommissionEmployee
CREATE TABLE OfficeRequestcommissionEmployee (
    idOfficeRequestcommissionEmployee INT PRIMARY KEY IDENTITY(1,1),
    idOfficeRequestcommission INT,
    idEmployee INT,
    status BIT NOT NULL,
    IdUserCreate INT,
    creationDate DATE,
    IdUserModify INT,
    modifiedDate DATE
);

-- Opportunity
CREATE TABLE Opportunity (
    idOpportunity INT PRIMARY KEY IDENTITY(1,1),
    description VARCHAR(50) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

--Position
CREATE TABLE Position 
(    
 idPosition int IDENTITY (1,1), 
 jobDescription varchar(50) NOT NULL, 
 wage varchar(50) NOT NULL, 
 workingHours varchar(50) NOT NULL, 
 idUser INT NOT NULL,
 [status] bit NOT NULL DEFAULT 1, 
 idTypePosition int NOT NULL, 
 IdUserCreate int null, 
 creationdate date NULL, 
 IdUserModify int null, 
 modified date null 
 CONSTRAINT PK_Position PRIMARY KEY (idPosition) 
 );

 -- Projects
CREATE TABLE Projects (
    idProject INT PRIMARY KEY IDENTITY,
    ProjectName NVARCHAR(100),
    StudentName NVARCHAR(100),
    Grade NVARCHAR(50),
    Description NVARCHAR(255),
    DeliveryDate DATE,
    idSubject INT,
	idUser INT NOT NULL,
    status bit DEFAULT 1,
	idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
);

--Proof
CREATE TABLE Proof(
idProof int IDENTITY (1,1), 
[date] date NOT NULL,
reason varchar(50) NOT NULL, 
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
  CONSTRAINT PK_Proof PRIMARY KEY (idProof)
); 


--Purpose
CREATE TABLE Purpose
(   
	 idPurpose int IDENTITY (1,1),
	investigation varchar(50) NOT NULL,
	purposename varchar(50) NOT NULL,
	idUser INT NOT NULL,
	 [status] bit NOT NULL DEFAULT 1,
	 idUserCreate int NULL,
    dateCreate date NULL,
    idUserModified int NULL,
     dateModified date NULL
	 CONSTRAINT PK_Purpose PRIMARY KEY (idPurpose)
);

-- Reticule
CREATE TABLE Reticule (
    idReticule INT PRIMARY KEY IDENTITY(1,1),
    description VARCHAR(100) NOT NULL,
    idCourse INT NOT NULL,
    idStudyPlan INT NOT NULL,
    contactInformation VARCHAR(100) NOT NULL,
	idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT,
    modifiedDate DATE
);

-- Schedule
CREATE TABLE Schedule (
    idSchedule INT PRIMARY KEY IDENTITY,
    Weekday NVARCHAR(20),
    Subject NVARCHAR(20),
    StartTime TIME,
    EndTime TIME,
    ClassID INT,
    idUser INT NOT NULL,
    status bit DEFAULT 1,
    idUserCreate int NULL,
    idUserModify INT NULL
);

--Sector
CREATE TABLE Sector 
(  
idSector int IDENTITY (1,1), 
sectorname varchar(30) NOT NULL, 
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModify INT NULL,
dateModified date NULL
CONSTRAINT PK_Sector PRIMARY KEY (idSector) 
); 

--ServicePayment
CREATE TABLE ServicePayment (
    idServicePayment INT PRIMARY KEY IDENTITY(1,1),
    amount DECIMAL(10,2) NOT NULL,
    paymentDate DATE NOT NULL,
    paymentMethod VARCHAR(50),
    bank VARCHAR(50),
    idStudent INT,
    status BIT NOT NULL,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

--Shift
CREATE TABLE Shift (
    idShift INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Description VARCHAR(255),
	idEmployee INT NOT NULL,
    status BIT DEFAULT 1,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

-- Student
CREATE TABLE Student (
    idStudent INT PRIMARY KEY IDENTITY(1,1),
    idStudyPlan INT NOT NULL,
    registrationNumber VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    curp VARCHAR(18) NOT NULL,
    rfc VARCHAR(13) NOT NULL,
    nss VARCHAR(15) NOT NULL,
    idLifeInsurance INT NOT NULL,
    idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT NULL,
    modifiedDate DATE
);

-- StudyCertificate
CREATE TABLE StudyCertificate (
    idStudyCertificate INT PRIMARY KEY IDENTITY(1,1),
    issuanceDate DATE NOT NULL,
    registrationDate DATE NOT NULL,
    information VARCHAR(100) NOT NULL,
    idStudent INT NOT NULL,
    idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT NULL,
    modifiedDate DATE
);


-- StudyPlan
CREATE TABLE StudyPlan (
    idStudyPlan INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    code VARCHAR(10) NOT NULL,
    duration INT NOT NULL,
    credits INT NOT NULL,
    idCareer INT NOT NULL,
    idUser INT NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT NOT NULL,
    creationDate DATE NOT NULL,
    idUserModify INT NULL,
    modifiedDate DATE
);

--[Subject]
CREATE TABLE [Subject]
(   
	 idSubject int IDENTITY (1,1),
	 [name] varchar(50) NOT NULL,
	 credit varchar(30) NOT NULL,
	 unit varchar(50) NOT NULL,
	 characteristic varchar(50) NOT NULL,
	 keyMatter varchar(50) NOT NULL,
	 idStudyPlan INT NOT NULL,
     idUser INT NOT NULL,
	 [status] bit NOT NULL DEFAULT 1,
	 idUserCreate int NULL,
     dateCreate date NULL,
     idUserModified int NULL,
     dateModified date NULL
	 CONSTRAINT PK_Subject PRIMARY KEY (idSubject)
);

--Tasks
CREATE TABLE Tasks (
    idTask INT PRIMARY KEY IDENTITY(1,1),
    idSubject INT,
    Approval VARCHAR(50),
    TaskType VARCHAR(50),
    Student_Name VARCHAR(100),
    Description VARCHAR(255),
    DeliveryDate DATE,
	idUser INT NOT NULL,
    Weight DECIMAL(10,2),
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE,
	status bit default 1
);

--Teacher
CREATE TABLE Teacher (
    idTeacher INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Email VARCHAR(100),
    Tutor VARCHAR(100),
    StudentList VARCHAR(255),
    Specialization VARCHAR(100),
    HiringDate DATE,
	idUser INT NOT NULL,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE,
	status bit default 1
);

-- teacherevaluation
CREATE TABLE TeacherEvaluation (
  idTeacherEvaluation INT PRIMARY KEY IDENTITY(1,1),
  date DATE NOT NULL,
  calification DECIMAL(10,0) NULL,
  idUser INT NOT NULL,
  idTeacher INT NOT NULL,
  status BIT DEFAULT 1,
  idUserCreate int NULL,
  idStudent INT NOT NULL,
  idSubject INT NOT NULL,
  idUserModify INT NULL,
);

--Territory
CREATE TABLE Territory
(   
	 idTerritory int IDENTITY (1,1),
	 territoryname varchar(50) NOT NULL,
         idUser INT NOT NULL,
	 [status] bit NOT NULL DEFAULT 1,
	 idUserCreate int NULL,
     dateCreate date NULL,
     idUserModified int NULL,
     dateModified date NULL,
 idUserModify INT,
	 CONSTRAINT PK_Territory PRIMARY KEY (idTerritory)
);


--ToolCatalog
CREATE TABLE ToolCatalog
(
idToolCatalog INT PRIMARY KEY IDENTITY(1,1),
nameToolCatalog varchar(50), 
brand varchar(50),
model varchar(50),
quantityExistence int,
descriptionToolCatalog varchar(50), 
idArea int not null,
idUser INT NOT NULL,
status bit default 1,
idUserCreate int,
creationDate date,
idUserModify int NULL,
modifiedDate date
);

--Transcript
CREATE TABLE Transcript (
    idTranscript INT PRIMARY KEY IDENTITY(1,1),
    idStudent INT,
    idSubject INT,
    Career VARCHAR(100),
    Status VARCHAR(50),
    Grade DECIMAL(5,2),
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);

--Tutor
CREATE TABLE Tutor (
    idTutor INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Student_List VARCHAR(255),
    Last_Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Specialization VARCHAR(100),
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT,
    modifiedDate DATE
);


--Tutorial
CREATE TABLE Tutorial (
    idTutorial INT PRIMARY KEY IDENTITY,
    Date DATE,
    SubjectName NVARCHAR(25),
    Unit NVARCHAR(50),
    StartTime TIME,
    EndTime TIME,
    TeacherID INT,
    StudentID INT,
    Comments NVARCHAR(500),
    idUser INT NOT NULL,
    status bit DEFAULT 1,
    idUserCreate int NULL,
    idUserModify INT NULL,
);

--TypePosition
CREATE TABLE TypePosition (    
 idTypePosition int IDENTITY (1,1), 
 [level] varchar(50) NOT NULL, 
  typepositionname varchar(50) NOT NULL,
 idUser INT NOT NULL,  
 [status] bit NOT NULL DEFAULT 1, 
idUserCreate int NULL,
dateCreate date NULL,
idUserModified int NULL,
dateModified date NULL
 CONSTRAINT PK_TypePosition PRIMARY KEY (idTypePosition) 
); 

--University
CREATE TABLE University (
    UniversityID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    Address NVARCHAR(255),
    PostalCode NVARCHAR(10),
    DirectorName NVARCHAR(50),
    City NVARCHAR(50),
    Country NVARCHAR(50),
    Phone NVARCHAR(15),
   idUser INT NOT NULL,
    Status bit DEFAULT 1,
    idUserCreate int NULL,
     idUserModify INT NULL,
);

--User
CREATE TABLE [User] (
    idUser INT PRIMARY KEY IDENTITY(1,1),
    userName VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    status BIT DEFAULT 1 NOT NULL,
    idUserCreate INT,
    creationDate DATE,
    idUserModify INT NULL,
    modifiedDate DATE,
);

--Viatic
CREATE TABLE Viatic
(    
	 idViatic int IDENTITY (1,1),
	 place varchar(200) NOT NULL,
	 description1 varchar(250) NOT NULL,
	 amount decimal (10,2) NOT NULL,
	 idEmployee int NOT NULL,
         idUser INT NOT NULL,
	 [status] bit NOT NULL DEFAULT 1,
	 IdUserCreate int null,
	 creationdate date NULL,
	 IdUserModify int null,
	 modified date null
	 CONSTRAINT PK_Viatic PRIMARY KEY (idViatic)
);


--Visit
Create table Visit 
(
idVisit int IDENTITY (1,1) ,
numberofstudent int NOT NULL, 
duration varchar(50) NOT NULL, 
objetive varchar(100)NOT NULL ,
aplicacion date NOT NULL, 
datevisit date NOT NULL,
requiretransportation varchar(10) NOT NULL ,
result varchar(150)NOT NULL ,
idCompany int NOT NULL ,
idZone int NOT NULL,
idEmployee int NOT NULL,
idStudent int NOT NULL,
idUser INT NOT NULL,
status bit NOT NULL DEFAULT 1 ,
idUsercreate int NOT NULL ,
datecreate date NOT NULL,
idusermodified int NOT NULL ,
datemodified date NOT NULL ,
CONSTRAINT PK_Visit Primary KEY(idVisit) 
);

--Zone
CREATE TABLE [Zone] (
idZone int IDENTITY (1,1) ,
zonename varchar(30)NOT NULL, 
idUser INT NOT NULL,
[status] bit NOT NULL DEFAULT 1, 
idUsercreate int NULL, 
datecreate date NULL, 
idusermodified int NULL, 
datemodified date NULL 
CONSTRAINT PK_Zone Primary KEY(idZone) 
);

---------------------------------------------
--INDEX 
---------------------------------------------

-- AcademicDiploma
CREATE INDEX idx_AcademicDiploma_idUser ON AcademicDiploma (idUser);

-- AcademicAward
CREATE INDEX idx_AcademicAward_idStudent ON AcademicWard (idStudent);
CREATE INDEX idx_AcademicAward_idUser ON AcademicWard (idUser);

-- AccreditationControl
CREATE INDEX idx_AccreditationControl_idUser ON AccreditationControl (idUser);

-- ActivityCompany
CREATE INDEX idx_ActivityCompany_idUser ON ActivityCompany (idUser);

-- ActivityDetail
CREATE INDEX idx_ActivityDetail_idUser ON ActivityDetail (idUser);

-- ActivityType
CREATE INDEX idx_ActivityType_idUser ON ActivityType (idUser);

-- Agreement
CREATE INDEX idx_Agreement_idObjetive ON Agreement (idObjetive);
CREATE INDEX idx_Agreement_idTerritory ON Agreement (idTerritory);

-- AgreementCompany
CREATE INDEX idx_AgreementCompany_idAgreement ON AgreementCompany (idAgreement);
CREATE INDEX idx_AgreementCompany_idCompany ON AgreementCompany (IdCompany);

-- AgreementPurpose
CREATE INDEX idx_AgreementPurpose_idAgreement ON AgreementPurpose (idAgreement);
CREATE INDEX idx_AgreementPurpose_idPurpose ON AgreementPurpose (IdPurpose);

-- Application
CREATE INDEX idx_Application_idUser ON Application (idUser);

-- Area
CREATE INDEX idx_Area_idUser ON Area (idUser);

-- AreaAplication
CREATE INDEX idx_AreaAplication_idUser ON AreaAplication (idUser);

-- AreaType
CREATE INDEX idx_AreaType_idUser ON AreaType (idUser);

-- AttendanceRecord
CREATE INDEX idx_AttendanceRecord_idUser ON AttendanceRecord (idUser);

-- Authorization_
CREATE INDEX idx_Authorization_idUser ON Authorization_ (idUser);

-- BookCatalog
CREATE INDEX idx_BookCatalog_idUser ON BookCatalog (idUser);
CREATE INDEX idx_BookCatalog_idArea ON BookCatalog (idArea);
CREATE INDEX idx_BookCatalog_idCourse ON BookCatalog (idCourse);

-- Building
CREATE INDEX idx_Building_idUser ON Building (idUser);

-- Career
CREATE INDEX idx_Career_idUser ON Career (idUser);

-- careerplan
CREATE INDEX idx_careerplan_idCareer ON careerplan (idCareer);
CREATE INDEX idx_careerplan_idUser ON careerplan (idUser);

-- CareerService
CREATE INDEX idx_CareerService_idCareer ON CareerService (idCareer);
CREATE INDEX idx_CareerService_idEmployee ON CareerService (idEmployee);
CREATE INDEX idx_CareerService_idUser ON CareerService (idUser);

-- Class
CREATE INDEX idx_Class_idEmployee ON Class (idEmployee);
CREATE INDEX idx_Class_idCourse ON Class (idCourse);
CREATE INDEX idx_Class_idUser ON Class (idUser);

-- ClassDetail
CREATE INDEX idx_ClassDetail_idClass ON ClassDetail (idClass);
CREATE INDEX idx_ClassDetail_idUser ON ClassDetail (idUser);

-- Classroom
CREATE INDEX idx_Classroom_idUser ON Classroom (idUser);

-- Club
CREATE INDEX idx_Club_idUser ON Club (idUser);
CREATE INDEX idx_Club_idEmployee ON Club (idEmployee);

-- ClubStudent
CREATE INDEX idx_ClubStudent_idClub ON ClubStudent (idClub);
CREATE INDEX idx_ClubStudent_idStudent ON ClubStudent (idStudent);
CREATE INDEX idx_ClubStudent_idUser ON ClubStudent (idUser);

-- ClubSchedule
CREATE INDEX idx_ClubSchedule_idClub ON ClubSchedule (idClub);
CREATE INDEX idx_ClubSchedule_idEmployee ON ClubSchedule (idEmployee);
CREATE INDEX idx_ClubSchedule_idUser ON ClubSchedule (idUser);

-- CompanyStudent
CREATE INDEX idx_CompanyStudent_idUser ON CompanyStudent (idUser);
CREATE INDEX idx_CompanyStudent_idStudent ON CompanyStudent (idStudent);

-- ComplementaryActivity
CREATE INDEX idx_ComplementaryActivity_idStudent ON ComplementaryActivity (idStudent);
CREATE INDEX idx_ComplementaryActivity_idUser ON ComplementaryActivity (idUser);
CREATE INDEX idx_ComplementaryActivity_idActivityType ON ComplementaryActivity (idActivityType);

-- Contract
CREATE INDEX idx_Contract_idUser ON Contract (idUser);
CREATE INDEX idx_Contract_idEmployee ON Contract (idEmployee);

-- Course
CREATE INDEX idx_Course_idUser ON Course (idUser);

-- Company
CREATE INDEX idx_Company_idUser ON Company (idUser);
CREATE INDEX idx_Company_idSector ON Company (idSector);

-- Cubicle
CREATE INDEX idx_Cubicle_idUser ON Cubicle (idUser);

-- Degree
CREATE INDEX idx_Degree_idStudent ON Degree (idStudent);
CREATE INDEX idx_Degree_idUser ON Degree (idUser);

-- DegreeRequirements
CREATE INDEX idx_DegreeRequirements_idUser ON DegreeRequirements (idUser);
CREATE INDEX idx_DegreeRequirements_idSubject ON DegreeRequirements (idSubject);
CREATE INDEX idx_DegreeRequirements_idCareer ON DegreeRequirements (idCareer);

-- Department
CREATE INDEX idx_Department_idUser ON Department (idUser);

-- DocumentRequest
CREATE INDEX idx_DocumentRequest_idStudent ON DocumentRequest (idStudent);
CREATE INDEX idx_DocumentRequest_idDocumentType ON DocumentRequest (idDocumentType);
CREATE INDEX idx_DocumentRequest_idEmployee ON DocumentRequest (idEmployee);

-- Índices para las llaves foráneas en las tablas

-- DocumentType
CREATE INDEX idx_DocumentType_idUser ON DocumentType (idUser);

-- DropOut
CREATE INDEX idx_DropOut_idStudent ON DropOut (idStudent);

-- Education
CREATE INDEX idx_Education_idStudent ON Education (idStudent);

-- Employee
CREATE INDEX idx_Employee_idEmployeeType ON Employee (idEmployeeType);
CREATE INDEX idx_Employee_idUser ON Employee (idUser);

-- EmployeePosition
CREATE INDEX idx_EmployeePosition_idEmployee ON EmployeePosition (IdEmployee);
CREATE INDEX idx_EmployeePosition_idPosition ON EmployeePosition (IdPosition);
CREATE INDEX idx_EmployeePosition_idUser ON EmployeePosition (idUser);

-- EmployeeType
CREATE INDEX idx_EmployeeType_idUser ON EmployeeType (idUser);

-- Enrollment
CREATE INDEX idx_Enrollment_idStudent ON Enrollment (idStudent);
CREATE INDEX idx_Enrollment_idUser ON Enrollment (idUser);

-- Entrepreneur
CREATE INDEX idx_Entrepreneur_IdEmploye ON Entrepreneur (IdEmploye);
CREATE INDEX idx_Entrepreneur_IdStudent ON Entrepreneur (IdStudent);
CREATE INDEX idx_Entrepreneur_IdUserCreate ON Entrepreneur (IdUserCreate);
CREATE INDEX idx_Entrepreneur_IdUserModify ON Entrepreneur (IdUserModify);

-- EvaluationDetail
CREATE INDEX idx_EvaluationDetail_idUser ON EvaluationDetail (idUser);

-- Event
CREATE INDEX idx_Event_idUser ON Event (idUser);

-- EventEmployee
CREATE INDEX idx_EventEmployee_idEmployee ON EventEmployee (idEmployee);
CREATE INDEX idx_EventEmployee_idEvent ON EventEmployee (idEvent);
CREATE INDEX idx_EventEmployee_idUser ON EventEmployee (idUser);

-- EventStudent
CREATE INDEX idx_EventStudent_idEvent ON EventStudent (idEvent);
CREATE INDEX idx_EventStudent_idStudent ON EventStudent (idStudent);

-- Exam
CREATE INDEX idx_Exam_idUser ON Exam (idUser);

-- Expenses
CREATE INDEX idx_Expenses_idExpenseType ON Expenses (idExpenseType);
CREATE INDEX idx_Expenses_idUser ON Expenses (idUser);

-- ExpenseType
CREATE INDEX idx_ExpenseType_idUser ON ExpenseType (idUser);

-- ExternalPayment
CREATE INDEX idx_ExternalPayment_idUser ON ExternalPayment (idUser);

-- ExternalScholarship
CREATE INDEX idx_ExternalScholarship_idUser ON ExternalScholarship (idUser);

-- ExternalScholarshipDetails
CREATE INDEX idx_ExternalScholarshipDetails_idUser ON ExternalScholarshipDetails (idUser);

-- ExtraCurricularScholarship
CREATE INDEX idx_ExtraCurricularScholarship_idUser ON ExtraCurricularScholarship (idUser);

-- Facility
CREATE INDEX idx_Facility_idUser ON Facility (idUser);
CREATE INDEX idx_Facility_idClub ON Facility (idClub);

-- FamilyData
CREATE INDEX idx_FamilyData_idUser ON FamilyData (idUser);
CREATE INDEX idx_FamilyData_idStudent ON FamilyData (idStudent);

-- GraduateInformation
CREATE INDEX idx_GraduateInformation_idStudent ON GraduateInformation (idStudent);
CREATE INDEX idx_GraduateInformation_idUser ON GraduateInformation (idUser);

-- Índices para llaves foráneas en las tablas

-- Groupp
CREATE INDEX idx_Groupp_idUser ON Groupp (idUser);

-- InstitutionalScholarship
CREATE INDEX idx_InstitutionalScholarship_idUser ON InstitutionalScholarship (idUser);

-- InternalScholarshipDetails
CREATE INDEX idx_InternalScholarshipDetails_idInstitutionalScholarship ON InternalScholarshipDetails (idInstitutionalScholarship);
CREATE INDEX idx_InternalScholarshipDetails_idStudent ON InternalScholarshipDetails (idStudent);

-- Kardex
CREATE INDEX idx_Kardex_idClass ON Kardex (idClass);
CREATE INDEX idx_Kardex_idOpportunity ON Kardex (idOpportunity);
CREATE INDEX idx_Kardex_idStudent ON Kardex (idStudent);

-- LifeInsurance
CREATE INDEX idx_LifeInsurance_idUser ON LifeInsurance (idUser);

-- LoanAplication
CREATE INDEX idx_LoanAplication_idBookCatalog ON LoanAplication (idBookCatalog);
CREATE INDEX idx_LoanAplication_idStudent ON LoanAplication (idStudent);
CREATE INDEX idx_LoanAplication_idAuthorization ON LoanAplication (idAuthorization);
CREATE INDEX idx_LoanAplication_idEmployee ON LoanAplication (idEmployee);
CREATE INDEX idx_LoanAplication_idToolCatalog ON LoanAplication (idToolCatalog);

-- LoanAplicationBookCatalog
CREATE INDEX idx_LoanAplicationBookCatalog_idLoanAplication ON LoanAplicationBookCatalog (idLoanAplication);
CREATE INDEX idx_LoanAplicationBookCatalog_idBookCatalog ON LoanAplicationBookCatalog (idBookCatalog);

-- Material
CREATE INDEX idx_Material_idMaterialType ON Material (idMaterialType);
CREATE INDEX idx_Material_idMaterialLoan ON Material (idMaterialLoan);

-- MaterialLoan
CREATE INDEX idx_MaterialLoan_idStudent ON MaterialLoan (idStudent);
CREATE INDEX idx_MaterialLoan_idEmployee ON MaterialLoan (idEmployee);

-- MaterialType
CREATE INDEX idx_MaterialType_idUser ON MaterialType (idUser);

-- Objetive
CREATE INDEX idx_Objetive_idUser ON Objetive (idUser);

-- OfficeRequestComission
CREATE INDEX idx_OfficeRequestcommission_idEmploye ON OfficeRequestcommission (idEmploye);
CREATE INDEX idx_OfficeRequestcommission_idUser ON OfficeRequestcommission (idUser);

-- OfficeRequestcommissionEmployee
CREATE INDEX idx_OfficeRequestcommissionEmployee_idOfficeRequestcommission ON OfficeRequestcommissionEmployee (idOfficeRequestcommission);
CREATE INDEX idx_OfficeRequestcommissionEmployee_idEmployee ON OfficeRequestcommissionEmployee (idEmployee);

-- Opportunity
CREATE INDEX idx_Opportunity_idUser ON Opportunity (idUser);

-- Position
CREATE INDEX idx_Position_idUser ON Position (idUser);
CREATE INDEX idx_Position_idTypePosition ON Position (idTypePosition);

-- Projects
CREATE INDEX idx_Projects_idUser ON Projects (idUser);
CREATE INDEX idx_Projects_idSubject ON Projects (idSubject);

-- Proof
CREATE INDEX idx_Proof_idUser ON Proof (idUser);

-- Purpose
CREATE INDEX idx_Purpose_idUser ON Purpose (idUser);

-- Reticule
CREATE INDEX idx_Reticule_idCourse ON Reticule (idCourse);
CREATE INDEX idx_Reticule_idStudyPlan ON Reticule (idStudyPlan);

-- Schedule
CREATE INDEX idx_Schedule_ClassID ON Schedule (ClassID);

-- Sector
CREATE INDEX idx_Sector_idUser ON Sector (idUser);

-- ServicePayment
CREATE INDEX idx_ServicePayment_idStudent ON ServicePayment (idStudent);

-- Shift
CREATE INDEX idx_Shift_idEmployee ON Shift (idEmployee);

-- Student
CREATE INDEX idx_Student_idLifeInsurance ON Student (idLifeInsurance);

-- StudyCertificate
CREATE INDEX idx_StudyCertificate_idStudent ON StudyCertificate (idStudent);

-- Índices para llaves foráneas en las tablas

-- StudyPlan
CREATE INDEX idx_StudyPlan_idCareer ON StudyPlan (idCareer);

-- [Subject]
CREATE INDEX idx_Subject_idStudyPlan ON [Subject] (idStudyPlan);

-- Tasks
CREATE INDEX idx_Tasks_idSubject ON Tasks (idSubject);
CREATE INDEX idx_Tasks_idUser ON Tasks (idUser);

-- Teacher
CREATE INDEX idx_Teacher_idUser ON Teacher (idUser);

-- TeacherEvaluation
CREATE INDEX idx_TeacherEvaluation_idTeacher ON TeacherEvaluation (idTeacher);

-- Territory
CREATE INDEX idx_Territory_idUser ON Territory (idUser);

-- ToolCatalog
CREATE INDEX idx_ToolCatalog_idArea ON ToolCatalog (idArea);

-- Transcript
CREATE INDEX idx_Transcript_idStudent ON Transcript (idStudent);
CREATE INDEX idx_Transcript_idSubject ON Transcript (idSubject);

-- Tutor
CREATE INDEX idx_Tutor_idUserCreate ON Tutor (idUserCreate);

-- Tutorial
CREATE INDEX idx_Tutorial_TeacherID ON Tutorial (TeacherID);
CREATE INDEX idx_Tutorial_StudentID ON Tutorial (StudentID);

-- TypePosition
CREATE INDEX idx_TypePosition_idUser ON TypePosition (idUser);

-- University
CREATE INDEX idx_University_idUser ON University (idUser);

-- Viatic
CREATE INDEX idx_Viatic_idEmployee ON Viatic (idEmployee);

-- Visit
CREATE INDEX idx_Visit_idCompany ON Visit (idCompany);
CREATE INDEX idx_Visit_idZone ON Visit (idZone);
CREATE INDEX idx_Visit_idEmployee ON Visit (idEmployee);
CREATE INDEX idx_Visit_idStudent ON Visit (idStudent);
CREATE INDEX idx_Visit_idUser ON Visit (idUser);

-- Zone
CREATE INDEX idx_Zone_idZone ON [Zone] (idZone);

-------------------------
-- LLAVES FORANEAS
-------------------------

--academicdiploma
ALTER TABLE academicdiploma
ADD CONSTRAINT FK_AcademicDiploma_User FOREIGN KEY (idUser) REFERENCES [User](idUser);

--academicaward
ALTER TABLE academicward 
ADD CONSTRAINT FK_AcademicAward_Student FOREIGN KEY (idstudent) REFERENCES academicdiploma(idAcademicDiploma);

ALTER TABLE academicward
ADD CONSTRAINT FK_AcademicAward_User FOREIGN KEY (idUser) REFERENCES [User](idUser);

--AccreditationControl
ALTER TABLE AccreditationControl
ADD CONSTRAINT FK_AccreditationControl_User FOREIGN KEY (idUser) REFERENCES [User](idUser);

--ActivityCompany
ALTER TABLE ActivityCompany
ADD CONSTRAINT FK_Activity_Usuarios FOREIGN KEY (idUser) REFERENCES [User](idUser);

--ActivityDetail
ALTER TABLE ActivityDetail
ADD CONSTRAINT FK_ActivityDetail_User FOREIGN KEY (idUser) REFERENCES [User](idUser);

--ActivityType
ALTER TABLE ActivityType
ADD CONSTRAINT FK_ActivityType_Activity FOREIGN KEY (idUser) REFERENCES [User](idUser);

--Agreement
ALTER TABLE Agreement
ADD CONSTRAINT FK_Agreement_Objetive FOREIGN KEY (idObjetive)
REFERENCES Objetive(idObjetive);

ALTER TABLE Agreement
ADD CONSTRAINT FK_Agreement_Territory FOREIGN KEY (idTerritory)
REFERENCES Territory(idTerritory);

--AgreementCompany
ALTER TABLE AgreementCompany
ADD CONSTRAINT FK_AgreementCompany_Agreement FOREIGN KEY (idAgreement)
REFERENCES Agreement(idAgreement);

--AgreementPurpose
ALTER TABLE AgreementPurpose
ADD CONSTRAINT FK_AgreementPurpose_Agreement FOREIGN KEY (idAgreement) REFERENCES Agreement(idAgreement);

ALTER TABLE AgreementCompany
ADD CONSTRAINT FK_AgreementCompany_Company FOREIGN KEY (IdCompany) REFERENCES Company(IdCompany); 

ALTER TABLE AgreementPurpose
ADD CONSTRAINT FK_AgreementPurpose_Purpose FOREIGN KEY (IdPurpose)
REFERENCES Purpose(IdPurpose); -- Reemplaza Purpose con el nombre real de la tabla que contiene la información de propósitos

--application
ALTER TABLE application
ADD CONSTRAINT FK_Application_User FOREIGN KEY (idUser)
REFERENCES [User](idUser); 

--Area
ALTER TABLE Area
ADD CONSTRAINT FK_Area_User FOREIGN KEY (idUser)
REFERENCES [User](idUser); 

--AreaAplication
ALTER TABLE AreaAplication
ADD CONSTRAINT FK_AreaAplication_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--AreaType
ALTER TABLE AreaType
ADD CONSTRAINT FK_AreaType_User FOREIGN KEY (idUser)
REFERENCES [User](idUser); 

--AttendanceRecord
ALTER TABLE AttendanceRecord
ADD CONSTRAINT FK_AttendanceRecord_User FOREIGN KEY (idUser)
REFERENCES [User](idUser); 

--Authorization_
ALTER TABLE Authorization_
ADD CONSTRAINT FK_Authorization_User FOREIGN KEY (idUser)
REFERENCES [User](idUser); 

--BookCatalog
ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalog_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalog_Area FOREIGN KEY (idArea)
REFERENCES Area(idArea);

ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalog_Course FOREIGN KEY (idCourse)
REFERENCES Course(idCourse);


--Building
ALTER TABLE Building
ADD CONSTRAINT FK_Building_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

--Career
ALTER TABLE Career
ADD CONSTRAINT FK_Career_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

-- careerplan
ALTER TABLE careerplan
ADD CONSTRAINT FK_careerplan_Career FOREIGN KEY (idCareer)
REFERENCES Career(idCareer);

ALTER TABLE careerplan
ADD CONSTRAINT FK_careerplan_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);


-- CareerService
ALTER TABLE CareerService
ADD CONSTRAINT FK_CareerService_Career FOREIGN KEY (idCareer)
REFERENCES Career(idCareer);

ALTER TABLE CareerService
ADD CONSTRAINT FK_CareerService_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE CareerService
ADD CONSTRAINT FK_CareerService_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);


-- Class
ALTER TABLE Class
ADD CONSTRAINT FK_Class_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE Class
ADD CONSTRAINT FK_Class_Course FOREIGN KEY (idCourse)
REFERENCES Course(idCourse);

ALTER TABLE Class
ADD CONSTRAINT FK_Class_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);


-- ClassDetail
ALTER TABLE ClassDetail
ADD CONSTRAINT FK_ClassDetail_Class FOREIGN KEY (idClass)
REFERENCES Class(idClass);


ALTER TABLE ClassDetail
ADD CONSTRAINT FK_ClassDetail_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

-- classroom
ALTER TABLE classroom
ADD CONSTRAINT FK_Classroom_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

-- Club
ALTER TABLE Club
ADD CONSTRAINT FK_Club_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

ALTER TABLE Club
ADD CONSTRAINT FK_Club_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

-- ClubStudent
ALTER TABLE ClubStudent
ADD CONSTRAINT FK_ClubStudent_Club FOREIGN KEY (idClub)
REFERENCES Club(idClub);

ALTER TABLE ClubStudent
ADD CONSTRAINT FK_ClubStudent_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE ClubStudent
ADD CONSTRAINT FK_ClubStudent_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

-- ClubSchedule
ALTER TABLE ClubSchedule
ADD CONSTRAINT FK_ClubSchedule_Club FOREIGN KEY (idClub)
REFERENCES Club(idClub);

ALTER TABLE ClubSchedule
ADD CONSTRAINT FK_ClubSchedule_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE ClubSchedule
ADD CONSTRAINT FK_ClubSchedule_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);


-- CompanyStudent
ALTER TABLE CompanyStudent
ADD CONSTRAINT FK_CompanyStudent_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

ALTER TABLE CompanyStudent
ADD CONSTRAINT FK_CompanyStudent_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);


-- ComplementaryActivity
ALTER TABLE ComplementaryActivity
ADD CONSTRAINT FK_ComplementaryActivity_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE ComplementaryActivity
ADD CONSTRAINT FK_ComplementaryActivity_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE ComplementaryActivity
ADD CONSTRAINT FK_ComplementaryActivity_ActivityType FOREIGN KEY (idActivityType)
REFERENCES ActivityType(idActivityType);

-- Contract
ALTER TABLE Contract
ADD CONSTRAINT FK_Contract_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE Contract
ADD CONSTRAINT FK_Contract_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);


-- Course
ALTER TABLE Course
ADD CONSTRAINT FK_Course_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

-- Company
ALTER TABLE Company
ADD CONSTRAINT FK_Company_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE Company
ADD CONSTRAINT FK_Company_Sector FOREIGN KEY (idSector)
REFERENCES Sector(idSector);


-- Cubicle
ALTER TABLE Cubicle
ADD CONSTRAINT FK_Cubicle_User FOREIGN KEY (idUser)
REFERENCES [user](iduser);

-- Degree
ALTER TABLE Degree
ADD CONSTRAINT FK_Degree_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE Degree
ADD CONSTRAINT FK_Degree_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);


-- DegreeRequirements
ALTER TABLE DegreeRequirements
ADD CONSTRAINT FK_DegreeRequirements_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE DegreeRequirements
ADD CONSTRAINT FK_DegreeRequirements_Subject FOREIGN KEY (idSubject)
REFERENCES Subject(idSubject);

ALTER TABLE DegreeRequirements
ADD CONSTRAINT FK_DegreeRequirements_Career FOREIGN KEY (idCareer)
REFERENCES Career(idCareer);

--Department
ALTER TABLE Department
ADD CONSTRAINT FK_Department_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--DocumentRequest
ALTER TABLE DocumentRequest
ADD CONSTRAINT FK_DocumentRequest_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE DocumentRequest
ADD CONSTRAINT FK_DocumentRequest_DocumentType FOREIGN KEY (idDocumentType)
REFERENCES DocumentType(idDocumentType);

ALTER TABLE DocumentRequest
ADD CONSTRAINT FK_DocumentRequest_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

--DocumentType
ALTER TABLE DocumentType
ADD CONSTRAINT FK_DocumentType_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--DropOut
ALTER TABLE DropOut
ADD CONSTRAINT FK_DropOut_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

-- Education
ALTER TABLE Education
ADD CONSTRAINT FK_Education_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

--Employee
ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_EmployeeType FOREIGN KEY (idEmployeeType)
REFERENCES EmployeeType(idEmployeeType);

ALTER TABLE Education
ADD CONSTRAINT FK_Employee_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--EmployeePosition
ALTER TABLE EmployeePosition
ADD CONSTRAINT FK_EmployeePosition_Employee FOREIGN KEY (IdEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE EmployeePosition
ADD CONSTRAINT FK_EmployeePosition_Position FOREIGN KEY (IdPosition)
REFERENCES Position(idPosition);

ALTER TABLE EmployeePosition
ADD CONSTRAINT FK_EmployeePosition_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--EmployeeType
ALTER TABLE EmployeeType
ADD CONSTRAINT FK_EmployeeType_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Enrollment
ALTER TABLE Enrollment
ADD CONSTRAINT FK_Enrollment_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE Enrollment
ADD CONSTRAINT FK_Enrollment_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

-- Entrepreneur
ALTER TABLE Entrepreneur
ADD CONSTRAINT FK_Entrepreneur_Employee FOREIGN KEY (IdEmploye)
REFERENCES Employee(idEmployee);

ALTER TABLE Entrepreneur
ADD CONSTRAINT FK_Entrepreneur_Student FOREIGN KEY (IdStudent)
REFERENCES Student(idStudent);

ALTER TABLE Entrepreneur
ADD CONSTRAINT FK_Entrepreneur_UserCreate FOREIGN KEY (IdUserCreate)
REFERENCES [User](idUser);

ALTER TABLE Entrepreneur
ADD CONSTRAINT FK_Entrepreneur_UserModify FOREIGN KEY (IdUserModify)
REFERENCES [User](idUser);

--EvaluationDetail
ALTER TABLE EvaluationDetail
ADD CONSTRAINT FK_EvaluationDetail_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Event
ALTER TABLE Event
ADD CONSTRAINT FK_Event_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--EventEmployee
ALTER TABLE EventEmployee
ADD CONSTRAINT FK_EventEmployee_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE EventEmployee
ADD CONSTRAINT FK_EventEmployee_Event FOREIGN KEY (idEvent)
REFERENCES Event(idEvent);

ALTER TABLE EventEmployee
ADD CONSTRAINT FK_EventEmployee_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--EventStudent
ALTER TABLE EventStudent
ADD CONSTRAINT FK_EventStudent_Event FOREIGN KEY (idEvent)
REFERENCES Event(idEvent);

ALTER TABLE EventStudent
ADD CONSTRAINT FK_EventStudent_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

--Exam
ALTER TABLE Exam
ADD CONSTRAINT FK_Exam_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Expenses
ALTER TABLE Expenses
ADD CONSTRAINT FK_Expenses_ExpenseType FOREIGN KEY (idExpenseType)
REFERENCES ExpenseType(idExpenseType);

ALTER TABLE Expenses
ADD CONSTRAINT FK_Expenses_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ExpenseType
ALTER TABLE ExpenseType
ADD CONSTRAINT FK_ExpenseType_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ExternaPayment
ALTER TABLE ExternalPayment
ADD CONSTRAINT FK_ExternalPayment_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ExternalScholarship
ALTER TABLE ExternalScholarship
ADD CONSTRAINT FK_ExternalScholarship_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ExternalScholarshipDetails
ALTER TABLE ExternalScholarshipDetails
ADD CONSTRAINT FK_ExternalScholarshipDetails_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ExtraCurricularScholarship
ALTER TABLE ExtraCurricularScholarship
ADD CONSTRAINT FK_ExtraCurricularScholarship_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Facility
ALTER TABLE Facility
ADD CONSTRAINT FK_Facility_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE Facility
ADD CONSTRAINT FK_Facility_Students FOREIGN KEY (idClub)
REFERENCES Club(idClub);

--FailyData
ALTER TABLE FamilyData
ADD CONSTRAINT FK_FamilyData_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

ALTER TABLE FamilyData
ADD CONSTRAINT FK_FamilyData_Students FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

--GraduateInformation
ALTER TABLE GraduateInformation
ADD CONSTRAINT FK_GraduateInformation_Students FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE GraduateInformation
ADD CONSTRAINT FK_GraduateInformation_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Groupp
ALTER TABLE Groupp
ADD CONSTRAINT FK_Groupp_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--InstitutionalScholarship
ALTER TABLE InstitutionalScholarship
ADD CONSTRAINT FK_InstitutionalScholarship_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--InternalScholarshipDetails
ALTER TABLE InternalScholarshipDetails
ADD CONSTRAINT FK_InternalScholarshipDetails_InstitutionalScholarship FOREIGN KEY (idInstitutionalScholarship)
REFERENCES InstitutionalScholarship(idInstitutionalScholarship);

ALTER TABLE InternalScholarshipDetails
ADD CONSTRAINT FK_InternalScholarshipDetails_Students FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

--Kardex
ALTER TABLE Kardex
ADD CONSTRAINT FK_Kardex_Class FOREIGN KEY (idClass)
REFERENCES Class(idClass);

ALTER TABLE Kardex
ADD CONSTRAINT FK_Kardex_Opportunity FOREIGN KEY (idOpportunity)
REFERENCES Opportunity(idOpportunity);

ALTER TABLE Kardex
ADD CONSTRAINT FK_Kardex_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

--LifeInsurance
ALTER TABLE LifeInsurance
ADD CONSTRAINT FK_LifeInsurance_Users FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--LoanAplication
ALTER TABLE LoanAplication
ADD CONSTRAINT FK_LoanAplication_BookCatalog FOREIGN KEY (idBookCatalog)
REFERENCES BookCatalog(idBookCatalog);

ALTER TABLE LoanAplication
ADD CONSTRAINT FK_LoanAplication_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE LoanAplication
ADD CONSTRAINT FK_LoanAplication_Authorization FOREIGN KEY (idAuthorization)
REFERENCES [Authorization_](idAuthorization);

ALTER TABLE LoanAplication
ADD CONSTRAINT FK_LoanAplication_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE LoanAplication
ADD CONSTRAINT FK_LoanAplication_ToolCatalog FOREIGN KEY (idToolCatalog)
REFERENCES ToolCatalog(idToolCatalog);

--LoanAplicationBookCatalog
ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT FK_LoanAplicationBookCatalog_LoanAplication FOREIGN KEY (idLoanAplication)
REFERENCES LoanAplication(idLoanAplication);

ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT FK_LoanAplicationBookCatalog_BookCatalog FOREIGN KEY (idBookCatalog)
REFERENCES BookCatalog(idBookCatalog);

--Material
ALTER TABLE Material
ADD CONSTRAINT FK_Material_MaterialType FOREIGN KEY (idMaterialType)
REFERENCES MaterialType(idMaterialType);

ALTER TABLE Material
ADD CONSTRAINT FK_Material_MaterialLoan FOREIGN KEY (idMaterialLoan)
REFERENCES MaterialLoan(idMaterialLoan);

--MaterialLoan
ALTER TABLE MaterialLoan
ADD CONSTRAINT FK_MaterialLoan_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE MaterialLoan
ADD CONSTRAINT FK_MaterialLoan_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

--MaterialType
ALTER TABLE MaterialType
ADD CONSTRAINT FK_MaterialType_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--Objetive
ALTER TABLE Objetive
ADD CONSTRAINT FK_Objetive_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--OfficeRequestComission
ALTER TABLE OfficeRequestcommission
ADD CONSTRAINT FK_OfficeRequestcommission_Employee FOREIGN KEY (idEmploye)
REFERENCES Employee(idEmployee);

ALTER TABLE OfficeRequestcommission
ADD CONSTRAINT FK_OfficeRequestcommission_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--OfficeRequestcommissionEmployee
ALTER TABLE OfficeRequestcommissionEmployee
ADD CONSTRAINT FK_OfficeRequestcommissionEmployee_OfficeRequestcommission FOREIGN KEY (idOfficeRequestcommission)
REFERENCES OfficeRequestcommission (idOfficeRequestcommission);

ALTER TABLE OfficeRequestcommissionEmployee
ADD CONSTRAINT FK_OfficeRequestcommissionEmployee_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee (idEmployee);

--Opportunity
ALTER TABLE Opportunity
ADD CONSTRAINT FK_Opportunity_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--Position
ALTER TABLE Position
ADD CONSTRAINT FK_Position_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

ALTER TABLE Position
ADD CONSTRAINT FK_Position_TypePosition FOREIGN KEY (idTypePosition)
REFERENCES TypePosition (idTypePosition); 

--Projects
ALTER TABLE Projects
ADD CONSTRAINT FK_Projects_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

ALTER TABLE Projects
ADD CONSTRAINT FK_Projects_Subject FOREIGN KEY (idSubject)
REFERENCES [Subject] (idSubject); 

--Proof
ALTER TABLE Proof
ADD CONSTRAINT FK_Proof_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--Purpose
ALTER TABLE Purpose
ADD CONSTRAINT FK_Purpose_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--Reticule
ALTER TABLE Reticule
ADD CONSTRAINT FK_Reticule_Course FOREIGN KEY (idCourse)
REFERENCES Course (idCourse); -- Asegúrate de que exista la tabla "Course" y el campo al que apunta esta llave foránea.

ALTER TABLE Reticule
ADD CONSTRAINT FK_Reticule_StudyPlan FOREIGN KEY (idStudyPlan)
REFERENCES StudyPlan (idStudyPlan); -- Asegúrate de que exista la tabla "StudyPlan" y el campo al que apunta esta llave foránea.

--Schedule
ALTER TABLE Schedule
ADD CONSTRAINT FK_Schedule_Class FOREIGN KEY (ClassID)
REFERENCES Class (idClass);

--Sector
ALTER TABLE Sector
ADD CONSTRAINT FK_Sector_User FOREIGN KEY (idUser)
REFERENCES [User] (idUser);

--ServicePayment
ALTER TABLE ServicePayment
ADD CONSTRAINT FK_ServicePayment_Student FOREIGN KEY (idStudent)
REFERENCES Student (idStudent);

--Shift
ALTER TABLE Shift
ADD CONSTRAINT FK_Shift_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

--Student
ALTER TABLE Student
ADD CONSTRAINT FK_Student_LifeInsurance FOREIGN KEY (idLifeInsurance)
REFERENCES LifeInsurance(idLifeInsurance);

-- StudyCertificate
ALTER TABLE StudyCertificate
ADD CONSTRAINT FK_StudyCertificate_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

-- StudyPlan
ALTER TABLE StudyPlan
ADD CONSTRAINT FK_StudyPlan_Career FOREIGN KEY (idCareer)
REFERENCES Career(idCareer);

-- [Subject]
ALTER TABLE [Subject]
ADD CONSTRAINT FK_Subject_StudyPlan FOREIGN KEY (idStudyPlan)
REFERENCES StudyPlan(idStudyPlan);

--Tasks
ALTER TABLE Tasks
ADD CONSTRAINT FK_Tasks_Subject FOREIGN KEY (idSubject)
REFERENCES Subject(idSubject);

ALTER TABLE Tasks
ADD CONSTRAINT FK_Tasks_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Teacher
ALTER TABLE Teacher
ADD CONSTRAINT FK_Tasks_Teacher FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--TeacherEvaluation
ALTER TABLE TeacherEvaluation
ADD CONSTRAINT FK_TeacherEvaluation_Teacher FOREIGN KEY (idTeacher)
REFERENCES Teacher(idTeacher);

--Territory
ALTER TABLE Territory
ADD CONSTRAINT FK_Territory_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--ToolCatalog
ALTER TABLE ToolCatalog
ADD CONSTRAINT FK_ToolCatalog_Area FOREIGN KEY (idArea)
REFERENCES Area(idArea);

--Transcript
ALTER TABLE Transcript
ADD CONSTRAINT FK_Transcript_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE Transcript
ADD CONSTRAINT FK_Transcript_Subject FOREIGN KEY (idSubject)
REFERENCES [Subject](idSubject);

--Tutor
ALTER TABLE Tutor
ADD CONSTRAINT FK_Tutor_User FOREIGN KEY (idUserCreate)
REFERENCES [User](idUser);

--Tutorial
ALTER TABLE Tutorial
ADD CONSTRAINT FK_Tutorial_Teacher FOREIGN KEY (TeacherID)
REFERENCES Teacher(idTeacher);

ALTER TABLE Tutorial
ADD CONSTRAINT FK_Tutorial_Student FOREIGN KEY (StudentID)
REFERENCES Student(idStudent);

--TypePosition
ALTER TABLE TypePosition
ADD CONSTRAINT FK_TypePosition_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--University
ALTER TABLE University
ADD CONSTRAINT FK_University_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Viatic
ALTER TABLE Viatic
ADD CONSTRAINT FK_Viatic_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

--Visit
ALTER TABLE Visit
ADD CONSTRAINT FK_Visit_Company FOREIGN KEY (idCompany)
REFERENCES Company(idCompany);

ALTER TABLE Visit
ADD CONSTRAINT FK_Visit_Zone FOREIGN KEY (idZone)
REFERENCES [Zone](idZone);

ALTER TABLE Visit
ADD CONSTRAINT FK_Visit_Employee FOREIGN KEY (idEmployee)
REFERENCES Employee(idEmployee);

ALTER TABLE Visit
ADD CONSTRAINT FK_Visit_Student FOREIGN KEY (idStudent)
REFERENCES Student(idStudent);

ALTER TABLE Visit
ADD CONSTRAINT FK_Visit_User FOREIGN KEY (idUser)
REFERENCES [User](idUser);

--Zone
ALTER TABLE [Zone]
ADD CONSTRAINT FK_Zone_Visit FOREIGN KEY (idZone)
REFERENCES [Zone](idZone);





