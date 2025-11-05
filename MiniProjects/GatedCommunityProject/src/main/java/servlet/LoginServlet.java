package servlet;

import dao.ResidentDao;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojo.Residents;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, jakarta.servlet.ServletException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        //String role=req.getParameter("role");

        ResidentDao dao =new ResidentDao();
        Residents resident = dao.getResident(email, password);
        if(resident!=null){
            HttpSession session = req.getSession();
            session.setAttribute("residentId",resident.getResidentId());
            session.setAttribute("residentName",resident.getResidentName());
            if (resident.getRole().equals("admin")){
                resp.sendRedirect("adminDashboard.jsp");
            }else if(resident.getRole().equals("resident")) {
                resp.sendRedirect("residentDashboard.jsp");
            }
        }else {
            req.setAttribute("error", "Invalid credentials");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

    }
}
