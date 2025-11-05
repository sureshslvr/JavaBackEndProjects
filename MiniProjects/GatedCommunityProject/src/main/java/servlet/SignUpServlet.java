package servlet;

import dao.ResidentDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Residents;

import java.io.IOException;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Residents resident =new Residents();
        resident.setResidentName(req.getParameter("residentName"));
        resident.setResidentEmail(req.getParameter("residentEmail"));
        resident.setResidentAddress(req.getParameter("residentAddress"));
        resident.setResidentPassword(req.getParameter("residentPassword"));
        resident.setPhoneNumber(req.getParameter("phoneNumber"));
        resident.setRole(req.getParameter("role"));

        ResidentDao residentDao=new ResidentDao();
        residentDao.saveResident(resident);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
