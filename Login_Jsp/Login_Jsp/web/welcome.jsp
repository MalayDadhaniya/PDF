<%-- 
    Document   : welcome
    Created on : Oct 10, 2024, 10:49:24 PM
    Author     : ASUS
--%>

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
        %>
        <h1>Welcome <%= unm %></h1>
    </body>
</html>
