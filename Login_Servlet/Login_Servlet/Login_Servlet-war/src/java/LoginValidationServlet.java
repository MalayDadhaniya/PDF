import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginValidationServlet")
public class LoginValidationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String inputUsername = request.getParameter("unm");
        String inputPassword = request.getParameter("pwd");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection con;
        Statement st;
        ResultSet rs;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            st = con.createStatement();

            String query = "SELECT * FROM users WHERE uname = '" + inputUsername + "' AND password = '" + inputPassword + "'";
            rs = st.executeQuery(query);

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("unm", inputUsername);
                response.sendRedirect("welcome.jsp");
            } else {
                out.println("INVALID USER !<br>");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } 
    }
}
