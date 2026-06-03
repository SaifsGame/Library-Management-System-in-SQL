# Library Management System 📚

A comprehensive, relational database designed to digitalize and streamline daily university library operations. This project replaces manual record-keeping with a structured database, focusing heavily on data integrity, minimized redundancy, and secure role-based access.

## 🚀 Key Features
* **Role-Based Security (Views):** Custom SQL views that restrict data exposure based on the user. Students only see available books, while Librarians and Administrators have secure access to transaction histories and financial records.
* **Real-Time Inventory Tracking:** Automated tracking of total versus available book quantities.
* **Transaction Management:** Relational tables connecting students to their issued books, complete with due dates and fine calculations.
* **Multi-Platform Deployment:** Designed and executed primarily in **Microsoft SQL Server**, with fully structured exports provided for **MySQL** and **MS Access**.

## 🛠️ Tech Stack
* **Core Engine:** Microsoft SQL Server (SSMS)
* **Secondary Deployments:** MySQL, MS Access
* **Language:** T-SQL / Standard SQL
* **Design:** Entity-Relationship Diagrams (ERD), 3NF Normalization

## 📂 Repository Contents
* `University_Library.sql`: Primary SQL Server dump (Schema + Sample Data + User Views).
* `MySQL_Library_Dump.sql`: Self-contained MySQL export script.
* `LibrarySystem.accdb`: Offline Microsoft Access database file.
* `Documentation/`: Contains the complete project initiation report, EERD, and physical implementation details.

## 💡 How to Run (SQL Server)
1. Open Microsoft SQL Server Management Studio (SSMS).
2. Open the `University_Library.sql` script.
3. Click **Execute** to automatically build the `UniversityLibrary` database, generate the tables, insert the sample data, and configure the user views.

---
*Developed by Saif-Ur-Rehman | Computer Science, Quaid-e-Azam University*
