# ☕ 9_JDBC_Advanced_Coffee_and_Emp

This module showcases **advanced JDBC operations using JSP** with conditional logic and dynamic queries on MySQL tables. It focuses on deletion and selection based on specific conditions for both `Coffee` and `Employee` entities.

Each task includes JSP files, database setup scripts, and output screenshots.

---

## 🗑️ 9a. Delete Coffee Record by ID

This part demonstrates:
- Deleting a coffee record using its unique `id`

### 📄 JSP Files:
- [`index.jsp`](./9a_delete_coffee_record_by_id/src/main/webapp/index.jsp)
- [`deleteCoffee.jsp`](./9a_delete_coffee_record_by_id/src/main/webapp/deleteCoffee.jsp)

### 📂 SQL Setup:
- [`database_setup.sql`](./9a_delete_coffee_record_by_id/database/database_setup.sql)

### 🔗 Output Screens:
- [9a.png](./9a_delete_coffee_record_by_id/9a.png)
- [9a0.png](./9a_delete_coffee_record_by_id/9a0.png)

---

## 🔍 9b. Show Coffee Records with Names Starting with 'D'

This part demonstrates:
- Fetching and displaying coffee records whose names start with the letter **'D'**

### 📄 JSP Files:
- [`index.jsp`](./9b_show_coffee_records_with_names_starting_with_'D'/src/main/webapp/index.jsp)
- [`queryCoffeeStartD.jsp`](./9b_show_coffee_records_with_names_starting_with_'D'/src/main/webapp/queryCoffeeStartD.jsp)

### 📂 SQL Setup:
- [`database_setup.sql`](./9b_show_coffee_records_with_names_starting_with_'D'/database/database_setup.sql)

### 🔗 Output Screens:
- [9b.png](./9b_show_coffee_records_with_names_starting_with_'D'/9b.png)

---

## ➕ 9c. Append New Employee Record

This part demonstrates:
- Inserting a new employee record via JSP form into the `Emp` table

### 📄 JSP Files:
- [`index.jsp`](./9c_append_new_employee_record/src/main/webapp/index.jsp)
- [`appendEmp.jsp`](./9c_append_new_employee_record/src/main/webapp/appendEmp.jsp)

### 📂 SQL Setup:
- [`database_setup.sql`](./9c_append_new_employee_record/database/database_setup.sql)

### 🔗 Output Screens:
- [9c.png](./9c_append_new_employee_record/9c.png)
- [9c0.png](./9c_append_new_employee_record/9c0.png)

---

## ✂️ 9d. Delete Employees Whose Names Start with 'S'

This part demonstrates:
- Deleting all employee records from the `Emp` table where names begin with **'S'**

### 📄 JSP Files:
- [`index.jsp`](./9d_delete_employees_whose_names_start_with_'S'/src/main/webapp/index.jsp)
- [`deleteEmpNameStartS.jsp`](./9d_delete_employees_whose_names_start_with_'S'/src/main/webapp/deleteEmpNameStartS.jsp)

### 📂 SQL Setup:
- [`database_setup.sql`](./9d_delete_employees_whose_names_start_with_'S'/database/database_setup.sql)

### 🔗 Output Screens:
- [9d.png](./9d_delete_employees_whose_names_start_with_'S'/9d.png)
- [9d0.png](./9d_delete_employees_whose_names_start_with_'S'/9d0.png)

