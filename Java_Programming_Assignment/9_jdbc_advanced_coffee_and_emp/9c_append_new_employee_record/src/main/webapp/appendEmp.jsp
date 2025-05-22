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
            String insertSQL = "INSERT INTO Emp (empno, empname, basicsalary) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(insertSQL);
            ps.setInt(1, empno);
            ps.setString(2, empname);
            ps.setFloat(3, salary);
            ps.executeUpdate();
            ps.close();
            out.println("<p style='color:green;'>Employee added successfully.</p>");
        }

        String selectSQL = "SELECT * FROM Emp ORDER BY empno";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Employee Report</title></head>
<body>
    <h2>Insert Employee</h2>
    <form method="post" action="appendEmp.jsp">
        Emp No: <input type="number" name="empno" required>
        Name: <input type="text" name="empname" required>
        Basic Salary: <input type="text" name="basicsalary" required>
        <input type="submit" value="Add Employee">
    </form>
    <hr>
    <h3>Employee Details</h3>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr><th>Emp No</th><th>Name</th><th>Basic Salary</th></tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("empno") %></td>
            <td><%= rs.getString("empname") %></td>
            <td><%= rs.getFloat("basicsalary") %></td>
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
