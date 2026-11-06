-- Begin the transaction to insert data
BEGIN TRANSACTION;

-- Insert roles into the Roles table
INSERT INTO Roles (RoleID, RoleName) 
VALUES (1, 'Teacher'), 
       (2, 'Support'), 
       (3, 'Management'), 
       (4, 'Admin'), 
       (5, 'Coordinator'), 
       (6, 'Assistant'), 
       (7, 'Trainer'), 
       (8, 'Registrar'), 
       (9, 'IT Support'), 
       (10, 'HR');

-- Insert permissions into the Permissions table
INSERT INTO Permissions (PermissionID, PermissionName) 
VALUES (1, 'View Students'), 
       (2, 'Modify Payments'), 
       (3, 'View Reports'), 
       (4, 'Delete Students'), 
       (5, 'Add Courses'), 
       (6, 'Modify Courses'), 
       (7, 'Manage Payments'), 
       (8, 'View Financials'), 
       (9, 'Generate Certificates'), 
       (10, 'View Campus Information');

-- Assign permissions to roles (for simplicity, I have assigned all permissions to all roles)
INSERT INTO RolePermissions (RoleID, PermissionID) 
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
       (2, 1), (2, 3), (2, 5), (2, 7), (2, 9),
       (3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
       (4, 6), (4, 8), (4, 10),
       (5, 3),
       (6, 1), (6, 3), (6, 8), (6, 10),
       (7, 1), (7, 3),
       (8, 2), (8, 7),
       (10, 1), (10, 3), (10, 10);

-- Insert campuses into the Campus table
INSERT INTO Campus (CampusID, CampusName, Location) 
VALUES (1, 'Main Campus', 'Manchester Central'), 
       (2, 'West Campus', 'Trafford Park'),
       (3, 'East Campus', 'Business School, Old Trafford'),
       (4, 'North Campus', 'Salford'),
       (5, 'South Campus', 'Stretford');

-- Insert staff into the Staff table (10 staff members)
INSERT INTO Staff (StaffID, FirstName, LastName, RoleID) 
VALUES (1, 'John', 'Doe', 1),
       (2, 'Jane', 'Smith', 2),
       (3, 'Alice', 'Johnson', 3),
       (4, 'Tom', 'Williams', 4),
       (5, 'Emily', 'Davis', 5),
       (6, 'Michael', 'Brown', 6),
       (7, 'Sarah', 'Miller', 7),
       (8, 'David', 'Martinez', 8),
       (9, 'Olivia', 'Garcia', 9),
       (10, 'Daniel', 'Rodriguez', 10);

-- Insert courses into the Course table (10 courses, associated with staff and campuses)
INSERT INTO Course (CourseID, CourseName, Fee, StaffID, CampusID) 
VALUES (1, 'Art Fundamentals', 1000.00, 1, 1), 
       (2, 'Creative Writing', 800.00, 2, 1),
       (3, 'Culinary Arts', 1200.00, 3, 2),
       (4, 'Literary Arts', 1500.00, 4, 3),
       (5, 'Performing Arts', 1600.00, 5, 4),
       (6, 'Digital Arts', 1800.00, 6, 4),
       (7, 'Ceramics and Textiles', 1400.00, 7, 2),
       (8, 'Musical Studies', 900.00, 8, 3),
       (9, 'Photography', 1100.00, 9, 5),
       (10, 'Film Studies', 1300.00, 10, 5);

-- Insert students into the Student table (10 students)
INSERT INTO Student (StudentID, FirstName, LastName, EnrolmentDate) 
VALUES (1, 'Mark', 'Taylor', '2026-02-01'),
       (2, 'Emily', 'Clark', '2026-02-15'),
       (3, 'Oliver', 'Davis', '2026-03-01'),
       (4, 'Sophia', 'Anderson', '2026-03-10'),
       (5, 'James', 'Thomas', '2026-03-20'),
       (6, 'Isabella', 'Jackson', '2026-04-01'),
       (7, 'Mason', 'White', '2026-04-05'),
       (8, 'Charlotte', 'Lewis', '2026-04-10'),
       (9, 'Ethan', 'Walker', '2026-04-15'),
       (10, 'Amelia', 'Young', '2026-04-20');

-- Insert student contacts into the StudentContact table (10 contacts, corresponding to students)
INSERT INTO StudentContact (ContactID, StudentID, ContactName, ContactRelationship, PhoneNumber, Email, City)
VALUES (1, 1, 'Michael Taylor', 'Father', '0161-9956952', 'michael.taylor@gmail.com', 'Manchester'),
       (2, 2, 'Sarah Clark', 'Mother', '0161-0818517', 'sarah.clark@gmail.com', 'Trafford'),
       (3, 3, 'David Davis', 'Father', '0161-3603650', 'david.davis@gmail.com', 'Manchester'),
       (4, 4, 'John Anderson', 'Father', '0161-6426235', 'john.anderson@gmail.com', 'Altrincham'),
       (5, 5, 'Lily Thomas', 'Mother', '0161-2286989', 'lily.thomas@outlook.com', 'Stretford'),
       (6, 6, 'Olivia Jackson', 'Mother', '0161-2868385', 'olivia.jackson@outlook.com', 'Bury'),
       (7, 7, 'George White', 'Father', '0161-3865051', 'george.white@outlook.com', 'Rochdale'),
       (8, 8, 'Rachel Lewis', 'Mother', '0161-0350164', 'rachel.lewis@outlook.com', 'Bolton'),
       (9, 9, 'Henry Walker', 'Father', '0161-6126577', 'henry.walker@outlook.com', 'Stockport'),
       (10, 10, 'Nora Young', 'Mother', '0161-5213749', 'nora.young@outlook.com', 'Salford');

-- Insert enrollments into the Enrolment table (10 enrollments)
INSERT INTO Enrolment (EnrolmentID, StudentID, CourseID, StartDate, EndDate)
VALUES (1, 1, 1, '2026-02-01', '2026-06-01'),
       (2, 2, 2, '2026-02-15', '2026-07-01'),
       (3, 3, 3, '2026-03-01', '2026-08-01'),
       (4, 4, 4, '2026-03-10', '2026-07-15'),
       (5, 5, 5, '2026-03-20', '2026-08-10'),
       (6, 6, 6, '2026-04-01', '2026-07-30'),
       (7, 7, 7, '2026-04-05', '2026-08-01'),
       (8, 8, 8, '2026-04-10', '2026-09-01'),
       (9, 9, 9, '2026-04-15', '2026-09-10'),
       (10, 10, 10, '2026-04-20', '2026-09-15');

-- Insert payments into the Payment table (10 payments)
INSERT INTO Payment (PaymentID, StudentID, Amount, PaymentDate)
VALUES (1, 1, 500.00, '2026-02-01'),
       (2, 2, 400.00, '2026-02-20'),
       (3, 3, 600.00, '2026-03-05'),
       (4, 4, 800.00, '2026-03-15'),
       (5, 5, 1200.00, '2026-03-25'),
       (6, 6, 1500.00, '2026-04-05'),
       (7, 7, 1000.00, '2026-04-10'),
       (8, 8, 1300.00, '2026-04-15'),
       (9, 9, 1400.00, '2026-04-20'),
       (10, 10, 1100.00, '2026-04-25');

-- Insert certificates into the Certificate table (10 certificates)
INSERT INTO Certificate (CertificateID, StudentID, CourseID, IssuedDate)
VALUES (1, 1, 1, '2026-06-01'),
       (2, 2, 2, '2026-07-01'),
       (3, 3, 3, '2026-08-01'),
       (4, 4, 4, '2026-07-15'),
       (5, 5, 5, '2026-08-10'),
       (6, 6, 6, '2026-07-30'),
       (7, 7, 7, '2026-08-01'),
       (8, 8, 8, '2026-09-01'),
       (9, 9, 9, '2026-09-10'),
       (10, 10, 10, '2026-09-15');

-- End the transaction
COMMIT TRANSACTION;