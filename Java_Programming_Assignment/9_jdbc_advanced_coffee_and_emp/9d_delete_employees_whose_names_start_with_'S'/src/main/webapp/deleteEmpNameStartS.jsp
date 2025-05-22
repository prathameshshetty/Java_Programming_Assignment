<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/Employee?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = "";

    // Optional: Accept prefix via form (default S)
    String prefix = request.getParameter("prefix");
    if (prefix == null || prefix.isEmpty()) {
        prefix = "S";
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        String deleteSQL = "DELETE FROM Emp WHERE empname LIKE ?";
        PreparedStatement ps = con.prepareStatement(deleteSQL);
        ps.setString(1, prefix + "%");
        int deletedRows = ps.executeUpdate();
        ps.close();

        out.println("<p style='color:green;'>" + deletedRows + " employees with names starting with '" + prefix + "' deleted.</p>");

        String selectSQL = "SELECT * FROM Emp ORDER BY empno";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Delete Employees Starting with 'S'</title></head>
<body>
    <h2>Delete Employees Starting with 'S'</h2>
    <form method="post" action="deleteEmpNameStartS.jsp">
        Name Prefix: <input type="text" name="prefix" value="<%= prefix %>" maxlength="1" required>
        <input type="submit" value="Delete Employees">
    </form>
    <hr>
    <h3>Updated Salary Report</h3>
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
