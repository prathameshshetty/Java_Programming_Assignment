<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/Employee?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = "";

    String empnoStr = request.getParameter("empno");
    String empname = request.getParameter("empname");
    String salaryStr = request.getParameter("basicsalary");

    int empno = 0;
    float salary = 0;

    if (empnoStr != null && !empnoStr.isEmpty()) {
        try {
            empno = Integer.parseInt(empnoStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid Employee Number format.</p>");
        }
    }

    if (salaryStr != null && !salaryStr.isEmpty()) {
        try {
            salary = Float.parseFloat(salaryStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid Salary format.</p>");
        }
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        if (empno > 0 && empname != null && !empname.trim().isEmpty() && salary > 0) {
            String updateSQL = "UPDATE Emp SET empname=?, basicsalary=? WHERE empno=?";
            PreparedStatement ps = con.prepareStatement(updateSQL);
            ps.setString(1, empname);
            ps.setFloat(2, salary);
            ps.setInt(3, empno);
            int rows = ps.executeUpdate();
            ps.close();
            if (rows > 0) {
                out.println("<p style='color:green;'>Employee record updated successfully.</p>");
            } else {
                out.println("<p style='color:red;'>No employee found with given empno.</p>");
            }
        }

        String selectSQL = "SELECT * FROM Emp ORDER BY empno";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Update Employee</title></head>
<body>
    <h2>Update Employee</h2>
    <form method="post" action="updateEmp.jsp">
        Emp No: <input type="number" name="empno" required>
        New Name: <input type="text" name="empname" required>
        New Basic Salary: <input type="text" name="basicsalary" required>
        <input type="submit" value="Update Employee">
    </form>
    <hr>
    <h3>Salary Report</h3>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr><th>Emp No</th><th>Name</th><th>Basic Salary</th></tr>
        <%
            while (rs.next()) {
                float basic = rs.getFloat("basicsalary");
                
        %>
        <tr>
            <td><%= rs.getInt("empno") %></td>
            <td><%= rs.getString("empname") %></td>
            <td><%= basic %></td>
            
        </tr>
        <%
            }
            rs.close();
            stmt.close();
            con.close();
        } catch(Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
        %>
    </table>
</body>
</html>
