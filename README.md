# 🎓 University Management System (SQL)

This project implements a **University Management System** using **SQL** to manage students, departments, courses, faculty, staff, and payments.  
It demonstrates **relational database design**, **data integrity**, and **entity relationships**, making it ideal for academic practice and internship portfolios.

---

## 💡 Project Overview

The University Management System is designed to efficiently manage:

- Student records and enrollment  
- Departments and courses  
- Employee details, including faculty and staff  
- Student payments  

This project provides a practical example of **relational database design**, including **primary and foreign keys**, **normalized tables**, and **SQL queries** for data retrieval and reporting.

---

## 🧱 Database Schema

The system consists of the following main entities:

| Entity      | Description |
|------------|-------------|
| **DEPARTMENT** | Stores department information including name, location, and postal code. |
| **STUDENT** | Stores student details and associates them with a department. |
| **EMPLOYEE** | Stores general employee information linked to a department. |
| **FACULTY** | Specialized employees involved in research and teaching. |
| **STAFF** | Administrative or support staff. |
| **TEACHER** | Stores teacher details linked to a department. |
| **COURSE** | Contains courses offered by each department. |
| **PAYMENT** | Tracks payments made by students. |

---

## 🔗 Entity Relationships

- Each **Department** can have multiple **Students**, **Courses**, **Teachers**, and **Employees**.  
- Each **Employee** can be either **Faculty** or **Staff**.  
- Each **Student** can make multiple **Payments**.  
- Relationships are maintained using **Foreign Keys** to ensure referential integrity.

---

## 🗂️ SQL Implementation

The project includes **table creation**, **sample data insertion**, and **sample queries**.  
Tables are created using **primary keys** and **foreign keys** to establish relationships.

