<%-- 
7a. JSP file to display session greeting and test 1-minute expiry 
--%>
<%@ page session="true" %>
<%
    String name = request.getParameter("username");
    session.setAttribute("username", name);
    session.setMaxInactiveInterval(60); // 1 minute
%>
<html>
<head><title>Welcome</title></head>
<body>
    <h2>Hello <%= name %>! Welcome to JSP Session Management.</h2>
    <p>Session will expire in 1 minute.</p>
    <br><a href="checksession.jsp">Check Session Status</a>
</body>
</html>
