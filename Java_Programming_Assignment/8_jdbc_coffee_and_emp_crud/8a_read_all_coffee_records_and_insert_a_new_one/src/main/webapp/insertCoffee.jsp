<%@ page import="java.sql.*" %>
<%
    // Database connection info
    String jdbcURL = "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPassword = ""; // Set if you have a password

    String coffeeName = request.getParameter("coffee_name");
    String priceStr = request.getParameter("price");
    float price = 0;

    if (priceStr != null && !priceStr.isEmpty()) {
        try {
            price = Float.parseFloat(priceStr);
        } catch(NumberFormatException e) {
            out.println("<p style='color:red;'>Invalid price format.</p>");
        }
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        // Insert coffee if form submitted
        if (coffeeName != null && !coffeeName.trim().isEmpty() && price > 0) {
            String insertSQL = "INSERT INTO coffee (coffee_name, price) VALUES (?, ?)";
            PreparedStatement psInsert = con.prepareStatement(insertSQL);
            psInsert.setString(1, coffeeName);
            psInsert.setFloat(2, price);
            psInsert.executeUpdate();
            psInsert.close();
            out.println("<p style='color:green;'>Coffee added successfully.</p>");
        }

        // Select all coffees to display
        String selectSQL = "SELECT * FROM coffee";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(selectSQL);
%>
<html>
<head><title>Coffee Products</title></head>
<body>
    <h2>Coffee Products</h2>

    <form method="post" action="insertCoffee.jsp">
        Coffee Name: <input type="text" name="coffee_name" required>
        Price: <input type="text" name="price" required>
        <input type="submit" value="Add Coffee">
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
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
        %>
    </table>
</body>
</html>
