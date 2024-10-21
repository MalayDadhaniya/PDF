<%-- 
    Document   : submit
    Created on : 21 Oct, 2024, 11:14:37 PM
    Author     : Dellb
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Page</title>
    </head>
    <body>
        <% 
            Connection con;
            PreparedStatement pst;
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
               
            String unm = request.getParameter("username");
            String pwd = request.getParameter("password");
            String cpwd = request.getParameter("confirmPassword");
            
            if(pwd.equals(cpwd)){
                pst = con.prepareStatement("INSERT INTO users (uname, password) VALUES (?, ?)");
                pst.setString(1, unm);
                pst.setString(2, pwd);
                pst.execute();
                out.println("Done! User is Register ....");
            }else{
                out.println("INVALID PASSWORD .... ");
            }
        %>
    </body>
</html>
