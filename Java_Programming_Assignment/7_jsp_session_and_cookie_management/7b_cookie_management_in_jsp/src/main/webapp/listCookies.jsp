<%-- 
7b. JSP to list all active cookies 
--%>
<html>
<head><title>Active Cookies</title></head>
<body>
    <h2>Active Cookies:</h2>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
    %>
                <p><strong>Name:</strong> <%= c.getName() %>, <strong>Value:</strong> <%= c.getValue() %></p>
    <%
            }
        } else {
    %>
            <p>No cookies found.</p>
    <%
        }
    %>
</body>
</html>
