CREATE DATABASE UniversityLibrary;
USE UniversityLibrary;

-- =========================
-- TABLE: Books
-- =========================

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(60),
    Author VARCHAR(50),
    Publisher VARCHAR(50),
    Edition VARCHAR(20),
    Category VARCHAR(50),
    Quantity INT,
    Available_Quantity INT
);

-- =========================
-- TABLE: Students
-- =========================

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(30),
    Department VARCHAR(50),
    Semester INT,
    Phone VARCHAR(13),
    Email VARCHAR(100)
);

-- =========================
-- TABLE: Issue_Record
-- =========================

CREATE TABLE Issue_Record (
    Issue_ID INT PRIMARY KEY,
    Student_ID INT,
    Book_ID INT,
    Issue_Date DATE,
    Due_Date DATE,

    FOREIGN KEY (Student_ID)
    REFERENCES Students(Student_ID),

    FOREIGN KEY (Book_ID)
    REFERENCES Books(Book_ID)
);

-- =========================
-- TABLE: Return_Record
-- =========================

CREATE TABLE Return_Record (
    Return_ID INT PRIMARY KEY,
    Issue_ID INT,
    Return_Date DATE,
    Fine_Amount DECIMAL(10,2),

    FOREIGN KEY (Issue_ID)
    REFERENCES Issue_Record(Issue_ID)
);

-- =========================
-- INSERT DATA: Books
-- =========================

INSERT INTO Books VALUES
(345, 'C++ Programming', 'Bjarn Stranstroup', 'Sunshine Academy', '9th', 'Computer', 100, 23),

(455, 'Python Programming', 'Saif Rehman', 'GOAT Publishers', '12th', 'Computer', 100, 12),

(555, 'Rust Programming', 'Dr.Jan Muhammad', 'QUST Books', '5th', 'Computer', 100, 83);

-- =========================
-- INSERT DATA: Students
-- =========================

INSERT INTO Students VALUES
(23, 'Dileep Singh', 'Computer Science', 4, '0300-6543564', 'Dillu@gmail.com'),

(45, 'Saif-Ur-Rehman', 'Computer Science', 4, '0300-4564564', 'saif@gmail.com'),

(87, 'Ahsan Rehman', 'Enviromental Science', 3, '0300-7643564', 'Ahsan@gmail.com');

-- =========================
-- INSERT DATA: Issue_Record
-- =========================

INSERT INTO Issue_Record VALUES
(90, 45, 345, '2026-04-26', '2026-05-26'),

(91, 23, 555, '2026-02-05', '2026-03-05'),

(92, 87, 455, '2026-04-30', '2026-05-30');

-- =========================
-- INSERT DATA: Return_Record
-- =========================

INSERT INTO Return_Record VALUES
(80, 92, '2026-03-23', 450.00);