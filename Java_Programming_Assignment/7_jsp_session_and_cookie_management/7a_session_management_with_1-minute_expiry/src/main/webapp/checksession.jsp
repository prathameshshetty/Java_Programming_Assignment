<%-- 
7a. JSP to check if session has expired 
--%>
<%@ page session="true" %>
<%
    String name = (String) session.getAttribute("username");
%>
<html>
<head><title>Session Status</title></head>
<body>
<%
    if (name == null) {
%>
        <h3>Session has expired!</h3>
<%
    } else {
%>
        <h3>Session is still active. Hello <%= name %>!</h3>
<%
    }
%>
</body>
</html>
