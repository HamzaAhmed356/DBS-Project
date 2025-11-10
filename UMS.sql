-- =====================
-- University Management 
-- =====================

-- Use a database (create if needed)
-- CREATE DATABASE UniversityDB;
-- USE UniversityDB;

-- =========================
-- Table Creation
-- =========================

-- Department Table
CREATE TABLE DEPARTMENT(
    DEPT_ID INT PRIMARY KEY,
    NAME VARCHAR2(15),
    LOCATION VARCHAR2(20),
    POSTALCODE NUMBER(5)
);

-- Student Table
CREATE TABLE STUDENT(
    ST_ID INT PRIMARY KEY,
    NAME VARCHAR2(15),
    EMAIL VARCHAR2(20),
    PHONENO VARCHAR2(11),
    DEP_ID INT,
    FOREIGN KEY (DEP_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

-- Employee Table
CREATE TABLE EMPLOYEE(
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR2(15),
    EMAIL VARCHAR2(20),
    PHONENO NUMBER(11),
    DEP_ID INT,
    FOREIGN KEY (DEP_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

-- Faculty Table
CREATE TABLE FACULTY(
    FACULTY_ID INT PRIMARY KEY,
    RESEARCH_INTEREST VARCHAR2(20),
    OFFICE_LOCATION VARCHAR2(20),
    FOREIGN KEY (FACULTY_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)
);

-- Staff Table
CREATE TABLE STAFF(
    STAFF_ID INT PRIMARY KEY,
    OFFICE_LOCATION VARCHAR2(20),
    FOREIGN KEY (STAFF_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)
);

-- Teacher Table
CREATE TABLE TEACHER(
    T_ID INT PRIMARY KEY,
    NAME VARCHAR2(15),
    EMAIL VARCHAR2(20),
    PHONENO NUMBER(11),
    DEP_ID INT,
    FOREIGN KEY (DEP_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

-- Course Table
CREATE TABLE COURSE(
    COURSE_ID INT PRIMARY KEY,
    TITLE VARCHAR2(15),
    COURSE_DESCRIPTION VARCHAR2(30),
    DEP_ID INT,
    FOREIGN KEY (DEP_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

-- Payment Table
CREATE TABLE PAYMENT(
    PAY_ID INT PRIMARY KEY,
    AMOUNT NUMBER(6),
    ST_ID INT,
    FOREIGN KEY (ST_ID) REFERENCES STUDENT(ST_ID)
);

-- =========================
-- Dummy Data Insertion
-- =========================

-- Departments
INSERT INTO DEPARTMENT VALUES (1, 'Computer Science', 'Building A', 75500);
INSERT INTO DEPARTMENT VALUES (2, 'Business', 'Building B', 75510);

-- Students
INSERT INTO STUDENT VALUES (101, 'Ali Ahmed', 'ali@example.com', '03001234567', 1);
INSERT INTO STUDENT VALUES (102, 'Sara Khan', 'sara@example.com', '03121234567', 2);

-- Employees
INSERT INTO EMPLOYEE VALUES (201, 'Dr. Bilal', 'bilal@uni.com', 03331234567, 1);
INSERT INTO EMPLOYEE VALUES (202, 'Mr. Kamal', 'kamal@uni.com', 03111234567, 2);

-- Faculty
INSERT INTO FACULTY VALUES (201, 'AI Research', 'Room 101');
INSERT INTO FACULTY VALUES (202, 'Finance Research', 'Room 201');

-- Staff
INSERT INTO STAFF VALUES (202, 'Admin Office');

-- Teachers
INSERT INTO TEACHER VALUES (301, 'Ms. Fatima', 'fatima@uni.com', 03221234567, 1);
INSERT INTO TEACHER VALUES (302, 'Mr. Ahmed', 'ahmed@uni.com', 03331234568, 2);

-- Courses
INSERT INTO COURSE VALUES (401, 'Database Systems', 'Introduction to DB', 1);
INSERT INTO COURSE VALUES (402, 'Accounting 101', 'Basics of Accounting', 2);

-- Payments
INSERT INTO PAYMENT VALUES (501, 5000, 101);
INSERT INTO PAYMENT VALUES (502, 4500, 102);

-- =========================
--  Retrieving Data
-- =========================

-- 1. Showing all students with their department names
SELECT s.NAME AS StudentName, d.NAME AS Department
FROM STUDENT s
JOIN DEPARTMENT d ON s.DEP_ID = d.DEPT_ID;

-- 2. Showing all payments made by students
SELECT p.PAY_ID, s.NAME AS StudentName, p.AMOUNT
FROM PAYMENT p
JOIN STUDENT s ON p.ST_ID = s.ST_ID;

-- 3. Showing all courses in a department
SELECT c.TITLE, d.NAME AS Department
FROM COURSE c
JOIN DEPARTMENT d ON c.DEP_ID = d.DEPT_ID;

-- 4. Showing all faculty with research interests
SELECT e.NAME AS FacultyName, f.RESEARCH_INTEREST
FROM FACULTY f
JOIN EMPLOYEE e ON f.FACULTY_ID = e.EMPLOYEE_ID;
