<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome Page</title>
</head>
<body>
    <% 
        String unm = (String) session.getAttribute("unm");
        if (unm == null) {
            response.sendRedirect("index.html");
        }
    %>
    <h1>Welcome <%= unm %></h1>
</body>
</html>
