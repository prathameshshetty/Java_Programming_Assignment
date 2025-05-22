<%-- 
7b. Construct a Cookie Management program using JSP to get Name, Domain and Max Expiry Age (sec) 
and display the set cookie info. Link to view active cookie list.
--%>

<html>
<head><title>Add Cookie</title></head>
<body>
    <form action="showCookie.jsp" method="post">
        Name: <input type="text" name="name" required><br>
        Domain: <input type="text" name="domain" required><br>
        Max Age (in sec): <input type="number" name="maxAge" required><br><br>
        <input type="submit" value="Add Cookie">
    </form>
</body>
</html>
