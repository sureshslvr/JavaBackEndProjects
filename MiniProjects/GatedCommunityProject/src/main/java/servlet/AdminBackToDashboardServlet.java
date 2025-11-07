package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/AdminBackToDashboardServlet")
public class AdminBackToDashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            resp.sendRedirect("adminDashboard.jsp");
        } else {
            // Session expired — redirect to login
            resp.sendRedirect("login.jsp");
        }
    }

}
