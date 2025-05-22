<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        String querySQL = "SELECT * FROM coffee WHERE coffee_name LIKE 'D%'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(querySQL);
%>
<html>
<head><title>Coffee Starting with 'D'</title></head>
<body>
    <h2>Coffee Names Starting with 'D'</h2>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr><th>ID</th><th>Name</th><th>Price</th></tr>
        <%
            boolean found = false;
            while (rs.next()) {
                found = true;
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("coffee_name") %></td>
            <td><%= rs.getFloat("price") %></td>
        </tr>
        <%
            }
            if (!found) {
        %>
        <tr><td colspan="3">No records found.</td></tr>
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
