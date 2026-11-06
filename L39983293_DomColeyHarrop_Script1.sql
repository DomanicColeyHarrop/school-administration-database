--
-- File generated with SQLiteStudio v3.4.21 on Thu Apr 2 12:55:58 2026
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Campus
CREATE TABLE Campus (
    CampusID INTEGER PRIMARY KEY,
    CampusName VARCHAR NOT NULL,
    Location VARCHAR NOT NULL
);

-- Table: Certificate
CREATE TABLE Certificate (
    CertificateID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    IssuedDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Table: Course
CREATE TABLE Course (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT NOT NULL,
    Fee DECIMAL(10, 2) NOT NULL,
    StaffID INTEGER,
    CampusID INTEGER,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID)
);

-- Table: Enrolment
CREATE TABLE Enrolment (
    EnrolmentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Table: Payment
CREATE TABLE Payment (
    PaymentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Table: Permissions
CREATE TABLE Permissions (
    PermissionID INTEGER PRIMARY KEY,
    PermissionName TEXT NOT NULL
);

-- Table: RolePermissions
CREATE TABLE RolePermissions (
    RoleID INTEGER,
    PermissionID INTEGER,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID),
    FOREIGN KEY (PermissionID) REFERENCES Permissions(PermissionID),
    PRIMARY KEY (RoleID, PermissionID)
);

-- Table: Roles
CREATE TABLE Roles (
    RoleID INTEGER PRIMARY KEY,
    RoleName TEXT NOT NULL
);

-- Table: Staff
CREATE TABLE Staff (
    StaffID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    RoleID INTEGER,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Table: Student
CREATE TABLE Student (
    StudentID INTEGER PRIMARY KEY,
    FirstName VARCHAR NOT NULL,
    LastName VARCHAR NOT NULL,
    EnrolmentDate DATE NOT NULL
);

-- Table: StudentContact
CREATE TABLE StudentContact (
    ContactID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    ContactName VARCHAR NOT NULL,
    ContactRelationship VARCHAR NOT NULL,
    PhoneNumber VARCHAR,
    Email VARCHAR,
    City VARCHAR,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

