<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = "";

    String idStr = request.getParameter("id");
    String newName = request.getParameter("coffee_name");
    String newPriceStr = request.getParameter("price");

    int id = 0;
    float price = 0;

    if (idStr != null && !idStr.isEmpty()) {
        try {
            id = Integer.parseInt(idStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid ID format.</p>");
        }
    }

    if (newPriceStr != null && !newPriceStr.isEmpty()) {
        try {
            price = Float.parseFloat(newPriceStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid price format.</p>");
        }
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        if (id > 0 && newName != null && !newName.trim().isEmpty() && price > 0) {
            String updateSQL = "UPDATE coffee SET coffee_name=?, price=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(updateSQL);
            ps.setString(1, newName);
            ps.setFloat(2, price);
            ps.setInt(3, id);
            int rows = ps.executeUpdate();
            ps.close();
            if (rows > 0) {
                out.println("<p style='color:green;'>Record updated successfully.</p>");
            } else {
                out.println("<p style='color:red;'>No record found with given ID.</p>");
            }
        }

        // Display all coffee records
        String selectSQL = "SELECT * FROM coffee";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Update Coffee</title></head>
<body>
    <h2>Update Coffee</h2>
    <form method="post" action="updateCoffee.jsp">
        ID: <input type="number" name="id" required>
        New Coffee Name: <input type="text" name="coffee_name" required>
        New Price: <input type="text" name="price" required>
        <input type="submit" value="Update">
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
