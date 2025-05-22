<%-- 
7b. JSP to create and show cookie info 
--%>
<%
    String name = request.getParameter("name");
    String domain = request.getParameter("domain");
    int maxAge = Integer.parseInt(request.getParameter("maxAge"));

    Cookie cookie = new Cookie(name, "SetByJSP");
    cookie.setDomain(domain);
    cookie.setMaxAge(maxAge);
    response.addCookie(cookie);
%>
<html>
<head><title>Cookie Set</title></head>
<body>
    <h3>Cookie Set Successfully!</h3>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Domain:</strong> <%= domain %></p>
    <p><strong>Max Age (sec):</strong> <%= maxAge %></p>
    <br>
    <a href="listCookies.jsp">Go to Active Cookie List</a>
</body>
</html>
