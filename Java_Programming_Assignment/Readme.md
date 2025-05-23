# Java Programming Assignment – Prathamesh Shetty (4AL22CS106)

This repository includes a well-structured collection of Java programs focusing on data structures, string manipulation, GUI development using Swing, as well as web technologies like Servlets, JSP, and JDBC.

## 📁 Project Directory Structure

- [1_ArrayList_and_LinkedList](./1_arrayList_and_linkedList)
- [2_String_Handling_and_Performance](./2_string_handling_and_performance)
- [3_String_Operations_and_Exercises](./3_String_Operations_and_Exercises)
- [4_Swing_Basics_and_Buttons](./4_swing_basics_and_buttons)
- [5_JList_and_TabbedPane](./5_jList_and_tabbedPane)
- [6_Servlet_Basics](./6_servlet_basics)
- [7_JSP_Session_and_Cookie_Management](./7_jsp_session_and_cookie_management)
- [8_JDBC_Coffee_and_Emp_CRUD](./8_jdbc_coffee_and_emp_crud)
- [9_JDBC_Advanced_Coffee_and_Emp](./9_jdbc_advanced_coffee_and_emp)

---

## 🛠️ Instructions for Running JDBC Programs

To execute the JDBC-related projects located in `8_jdbc_coffee_and_emp_crud` and `9_jdbc_advanced_coffee_and_emp`, please follow the steps below:

### 1. Install XAMPP
Download and install XAMPP from: https://www.apachefriends.org/index.html

### 2. Launch Apache and MySQL
Use the XAMPP Control Panel to start the following services:
- **Apache**
- **MySQL**

### 3. Database Setup
1. Open your browser and go to [phpMyAdmin](http://localhost/phpmyadmin).
2. Click on the **Import** tab.
3. Select the `database.sql` file from the project directory.
4. Click **Go** to upload and initialize the tables (e.g., `coffee`, `Emp`, etc.)

### 4. Install Apache Tomcat
Get Apache Tomcat from: https://tomcat.apache.org/

- Set up Tomcat as the servlet/JSP server.
- Either copy your project files to the `webapps` directory or integrate Tomcat with your IDE (e.g., Eclipse) for deployment.

### 5. Add JDBC Driver to Your Java Project
- Download the MySQL JDBC driver from: [MySQL Connector](https://dev.mysql.com/downloads/connector/j/)
- Add the JAR file to your project's classpath (In Eclipse: Right-click project → Build Path → Add External JARs).

### 6. Verify and Update Database Connection String
Check your database connection code in files like `Connection.java` or `DBConnect.jsp`:
```java
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_db_name", "root", "");
