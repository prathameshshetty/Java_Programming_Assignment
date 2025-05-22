<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = "";

    String idStr = request.getParameter("id");
    int id = 0;
    if (idStr != null && !idStr.isEmpty()) {
        try {
            id = Integer.parseInt(idStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid ID format.</p>");
        }
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        if (id > 0) {
            String deleteSQL = "DELETE FROM coffee WHERE id=?";
            PreparedStatement ps = con.prepareStatement(deleteSQL);
            ps.setInt(1, id);
            int rows = ps.executeUpdate();
            ps.close();
            if (rows > 0) {
                out.println("<p style='color:green;'>Record deleted successfully.</p>");
            } else {
                out.println("<p style='color:red;'>No record found with given ID.</p>");
            }
        }

        String selectSQL = "SELECT * FROM coffee";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Delete Coffee</title></head>
<body>
    <h2>Delete Coffee</h2>
    <form method="post" action="deleteCoffee.jsp">
        Enter ID to Delete: <input type="number" name="id" required>
        <input type="submit" value="Delete">
    </form>
    <hr>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr><th>ID</th><th>Name</th><th>Price</th></tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("coffee_name") %></td>
            <td><%= rs.getFloat("price") %></td>
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
