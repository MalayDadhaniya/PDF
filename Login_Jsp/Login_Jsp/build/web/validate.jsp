<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Validation</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            
            String inputUsername = request.getParameter("unm");
            String inputPassword = request.getParameter("pwd");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");

                st = con.createStatement();
                
                String query = "SELECT * FROM users WHERE uname = '" + inputUsername + "' AND password = '" + inputPassword + "'";
                rs = st.executeQuery(query);
                
                if(rs.next()) { 
                    session.setAttribute("unm", inputUsername);
                    response.sendRedirect("welcome.jsp");
                }
                else {
                    out.println("INVALID USER !<br>");
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            } finally {
                rs.close();
                st.close(); 
                con.close();
            }
        %>
    </body>
</html>
