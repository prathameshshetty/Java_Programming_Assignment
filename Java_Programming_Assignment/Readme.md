#  Java Programming Assignment– Prathamesh Shetty 4AL22CS106

This repository contains organized Java programs for data structures, string handling, GUI (Swing), servlets, JSP, and JDBC-based projects.

## 📁 Folder Structure

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

## 🛠️ JDBC Program Execution Instructions

To run the JDBC programs in folders `8_jdbc_coffee_and_emp_crud` and `9_jdbc_advanced_coffee_and_emp`, follow the steps below:

### 1. Install XAMPP
Download and install XAMPP from: https://www.apachefriends.org/index.html

### 2. Start Apache and MySQL
Open the XAMPP Control Panel and start:
- **Apache**
- **MySQL**

### 3. Setup the Database
1. Open [phpMyAdmin](http://localhost/phpmyadmin) in your browser.
2. Click on "Import".
3. Choose the `database.sql` file provided in the folder.
4. Click **Go** to create the necessary tables (`coffee`, `Emp`, etc.)

### 4. Install Apache Tomcat Server
Download and install Apache Tomcat from: https://tomcat.apache.org/

- Configure Tomcat as your servlet/JSP container.
- Set up your project to deploy JSP and Servlet files to Tomcat’s `webapps` directory or configure your IDE (e.g., Eclipse) with Tomcat server runtime.

### 5. Configure JDBC in Your Java Project
- Download the **MySQL Connector/J**: [MySQL Connector](https://dev.mysql.com/downloads/connector/j/)
- Add the JAR to your project’s classpath (in Eclipse: Right-click project → Build Path → Add External JARs).

### 6. Update DB Connection URL if needed
Check the `Connection.java` or `DBConnect.jsp` file and ensure the connection string matches your setup:
```java
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_db_name", "root", "");
```
Replace `your_db_name` with the database name imported from `database.sql`.

**Username:** `root` (default in XAMPP)  
**Password:** leave blank unless you set one in MySQL.


