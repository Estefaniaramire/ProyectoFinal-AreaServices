CREATE TABLE area (
    idArea SERIAL PRIMARY KEY,
    nameArea varchar(255),
    number int,
    descriptionArea varchar(255),
    idAreaType int NOT NULL,
    idBuilding int NOT NULL,
    status boolean DEFAULT true,
    idUserCreate int,
    creationDate date,
    idUserModify int,
    modifiedDate date
);
ALTER TABLE Area
ADD CONSTRAINT Fk_AreaAreaType
FOREIGN KEY (idAreaType) 
REFERENCES AreaType(idAreaType);

ALTER TABLE Area
ADD CONSTRAINT Fk_AreaBuilding
FOREIGN KEY (idBuilding) 
REFERENCES Building(idBuilding);

ALTER TABLE Area
ADD CONSTRAINT Fk_AreaUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE Area
ADD CONSTRAINT Fk_AreaUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE AreaAplication
(
idAreaAplication SERIAL PRIMARY KEY,
dateArea date,
descriptionAreaAplication varchar(255),
idArea int not null, 
idEmployee int not null, 
idClass int not null,
idAuthorization int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
)


ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationArea
FOREIGN KEY (idArea) REFERENCES Area(idArea);

ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationEmployee
FOREIGN KEY (idEmployee)  REFERENCES Employee(idEmployee);

ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationClass
FOREIGN KEY (idClass) 
REFERENCES Class(idClass);

ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationAuthorization
FOREIGN KEY (idAuthorization) 
REFERENCES Authorization_(idAuthorization);

ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE AreaAplication
ADD CONSTRAINT Fk_AreaAplicationUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE Authorization_
(
idAuthorization Serial PRIMARY KEY,
authorizationDate date,
descriptionAuthorization  varchar(255),
idEmployee int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE Authorization_
ADD CONSTRAINT Fk_Authorization_Employee
FOREIGN KEY (idEmployee) 
REFERENCES Employee(idEmployee);

ALTER TABLE Authorization_
ADD CONSTRAINT Fk_Authorization_UserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE Authorization_
ADD CONSTRAINT Fk_Authorization_UserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE area_type (
    idAreaType SERIAL PRIMARY KEY,
    nameArea varchar(255),
    descriptionAreaType varchar(255),
    status boolean DEFAULT true,
    idUserCreate int,
    creationDate date,
    idUserModify int,
    modifiedDate date
);

ALTER TABLE area_type
ADD CONSTRAINT FK_AreaTypeUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE area_type
ADD CONSTRAINT FK_AreaTypeUserModify
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);

CREATE TABLE Building 
(
idBuilding Serial PRIMARY KEY, 
number int,
descriptionBuilding varchar(255),
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);
ALTER TABLE Building
ADD CONSTRAINT "FK_AreaTypeUserCreate" 
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserCreate);

ALTER TABLE Building
ADD CONSTRAINT "FK_AreaTypeUserModify" 
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);

CREATE TABLE BookCatalog 
(
idBookCatalog Serial PRIMARY KEY,
bookTitle varchar(50), 
authorName varchar(50), 
publisher varchar(50),
inStock int not null,
idArea int not null,
idCourse int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalogArea 
FOREIGN KEY (idArea) 
REFERENCES Area (idArea);

ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalogCourse 
FOREIGN KEY (idCourse) 
REFERENCES course (idCourse);

ALTER TABLE BookCatalogUserCreate
ADD CONSTRAINT FK_BookCatalogUserCreate 
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE BookCatalog
ADD CONSTRAINT FK_BookCatalogUserModify 
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);

CREATE TABLE Career 
(
idCareer Serial PRIMARY KEY, 
careerName varchar(50) ,
descriptionCareer varchar(255), 
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE Career
ADD CONSTRAINT FK_CareerUserCreate 
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE Career
ADD CONSTRAINT FK_CareerUserModify
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);
CREATE TABLE Class
(
idClass Serial PRIMARY KEY,
nameClass varchar(50), 
descriptionClass varchar(255),
idCourse int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
)
ALTER TABLE Class
ADD CONSTRAINT Fk_ClassUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE Class
ADD CONSTRAINT Fk_ClassUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

ALTER TABLE Class
ADD CONSTRAINT Fk_ClassCourse
FOREIGN KEY (idCourse) 
REFERENCES Course(idCourse);

CREATE TABLE Course
(
idClass Serial PRIMARY KEY,
nameClass varchar(50), 
descriptionClass varchar(255),
idCourse int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);
ALTER TABLE Course
ADD CONSTRAINT FK_CourseUserCreate 
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE Course
ADD CONSTRAINT FK_CourseUserModify
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);

ALTER TABLE Course
ADD CONSTRAINT FK_CourseUserModify
FOREIGN KEY (idcareer) 
REFERENCES career (idcareer);

CREATE TABLE ClassDetail 
(
idClassDetail  Serial PRIMARY KEY,
startTime Time , 
endTime Time, 
dateClassDetail date, 
quantityStudent int,
idClass int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE ClassDetail
ADD CONSTRAINT Fk_ClassDetailClass
FOREIGN KEY (idClass) 
REFERENCES Class(idClass);

ALTER TABLE ClassDetail
ADD CONSTRAINT Fk_ClassDetailUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE ClassDetail
ADD CONSTRAINT Fk_ClassDetailUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE Employee
( 
idEmployee  INT PRIMARY KEY,
nameEmployee varchar(50),
lastNameEmployee varchar(50),
salary decimal,
nss int,
zipCode int,
rfc varchar(13),
numberPhone varchar(13),
email varchar(50),
addressEmployee varchar(255),
idEmployeeType int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE Employee
ADD CONSTRAINT Fk_EmployeeType
FOREIGN KEY (idEmployeeType) 
REFERENCES EmployeeType(idEmployeeType);

ALTER TABLE Employee
ADD CONSTRAINT Fk_EmployeeUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE Employee
ADD CONSTRAINT Fk_EmployeeUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE EmployeeType 
(
idEmployeeType Serial PRIMARY KEY,
nameEmployeeType varchar(50),
baseSalary decimal,
hoursEmployeeType time,
status boolean default True,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);
ALTER TABLE Employeetype
ADD CONSTRAINT FK_EmployeeTypeUserCreate 
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE Employeetype
ADD CONSTRAINT FK_EmployeeTypeUserModify 
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);
CREATE TABLE Student
(
idStudent  Serial PRIMARY KEY,
nameStudent varchar(50),
lastNameStudent varchar(50),
registrationNumber int,
rfc varchar(13),
curp varchar(18),
nss int,
addressStudent varchar(255),
email varchar(50), 
numberPhone varchar(13),
idStudyPlan int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);
ALTER TABLE Student
ADD CONSTRAINT Fk_StudenStudyPlan
FOREIGN KEY (idStudyPlan) 
REFERENCES StudyPlan(idStudyPlan);

ALTER TABLE Student
ADD CONSTRAINT Fk_StudentUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE Student
ADD CONSTRAINT Fk_StudentUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE StudyPlan
(
idStudyPlan INT PRIMARY KEY,
nameStudyPlan varchar(50),
code int,
duration time,
credits int,
idcareer int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
)
ALTER TABLE StudyPlan
ADD CONSTRAINT FK_StudyPlanUserCreate 
FOREIGN KEY (idUserCreate) 
REFERENCES users (idUserCreate);

ALTER TABLE StudyPlan
ADD CONSTRAINT FK_StudyPlanUserModify 
FOREIGN KEY (idUserModify) 
REFERENCES users (idUserModify);

ALTER TABLE StudyPlan
ADD CONSTRAINT FK_StudyPlanCareer
FOREIGN KEY (idCareer) 
REFERENCES career (idcareer);

CREATE TABLE ToolCatalog
(
idToolCatalog Serial PRIMARY KEY,
nameToolCatalog varchar(50), 
brand varchar(50),
model varchar(50),
quantityExistence int,
descriptionToolCatalog varchar(50), 
idArea int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE ToolCatalog
ADD CONSTRAINT Fk_Area
FOREIGN KEY (idArea) 
REFERENCES Area(idArea);

ALTER TABLE ToolCatalog
ADD CONSTRAINT Fk_ToolCatalogUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE ToolCatalog
ADD CONSTRAINT Fk_ToolCatalogUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE Users
(
    idUser Serial PRIMARY KEY,
    userName varchar(50) unique NOT NULL,
    name varchar(50) NOT NULL,
    password varchar(10) NOT NULL,
    email varchar(100) NOT NULL,
    status boolean default true NOT NULL,
    idUserCreate int,
    creationDate date,
    idUserModify int,
    modifiedDate date
)
ALTER TABLE Users
ADD CONSTRAINT FK_UserUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users (idUser);

ALTER TABLE Users
ADD CONSTRAINT FK_UserUserModified 
FOREIGN KEY (idUserModify) 
REFERENCES Users (idUser)

CREATE TABLE LoanAplication
(
idLoanAplication  Serial PRIMARY KEY,
numberLoan int ,
descriptionLoanAplication varchar(50),
deliveryDate date,
departureDate date,
quantity int ,
idBookCatalog int,
idStudent int not null,
idAuthorization int not null,
idEmployee int not null,
idToolCatalog int,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationArea
FOREIGN KEY (idBookCatalog) 
REFERENCES BookCatalog(idBookCatalog);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationStudent
FOREIGN KEY (idStudent) 
REFERENCES Student(idStudent);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationAuthorization
FOREIGN KEY (idAuthorization) 
REFERENCES Authorization_(idAuthorization);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationEmployee
FOREIGN KEY (idEmployee) 
REFERENCES Employee(idEmployee);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_ToolCatalog
FOREIGN KEY (idToolCatalog) 
REFERENCES ToolCatalog(idToolCatalog);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE LoanAplication
ADD CONSTRAINT Fk_LoanAplicationUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);

CREATE TABLE LoanAplicationBookCatalog 
(
idLoanAplicationBookCatalog Serial PRIMARY KEY, 
idLoanAplication  int not null,  
idBookCatalog  int not null, 
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);
ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT Fk_LoanAplication
FOREIGN KEY (idLoanAplication)
REFERENCES LoanAplication(idLoanAplication);

ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT Fk_BookCatalog
FOREIGN KEY (idBookCatalog) 
REFERENCES BookCatalog(idBookCatalog);

ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT Fk_LoanAplicationBookCatalogUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES Users(idUserCreate);

ALTER TABLE LoanAplicationBookCatalog
ADD CONSTRAINT Fk_LoanAplicationBookCatalogUserModify
FOREIGN KEY (idUserModify) 
REFERENCES Users(idUserModify);


CREATE TABLE LoanAplicationToolCatalog 
(
idLoanAplicationToolCatalog Serial PRIMARY KEY,
idLoanAplication int not null, 
idToolCatalog int not null,
status boolean default true,
idUserCreate int,
creationDate date,
idUserModify int,
modifiedDate date
);

ALTER TABLE LoanAplicationToolCatalog
ADD CONSTRAINT Fk_LoanAplication
FOREIGN KEY (idLoanAplication) 
REFERENCES LoanAplication(idLoanAplication);

ALTER TABLE LoanAplicationToolCatalog
ADD CONSTRAINT Fk_ToolCatalog
FOREIGN KEY (idToolCatalog) 
REFERENCES ToolCatalog(idToolCatalog);

ALTER TABLE LoanAplicationToolCatalog
ADD CONSTRAINT Fk_LoanAplicationToolCatalogUserCreate
FOREIGN KEY (idUserCreate) 
REFERENCES [User](idUserCreate);

ALTER TABLE LoanAplicationToolCatalog
ADD CONSTRAINT Fk_LoanAplicationToolCatalogUserModify
FOREIGN KEY (idUserModify) 
REFERENCES [User](idUserModify);

