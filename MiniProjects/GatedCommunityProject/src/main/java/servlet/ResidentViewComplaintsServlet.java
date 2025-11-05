package servlet;

import dao.ComplaintDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Complaints;

import java.io.IOException;
import java.util.List;

@WebServlet("/ResidentViewComplaintsServlet")
public class ResidentViewComplaintsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer residentId = (Integer) req.getSession(true).getAttribute("residentId");
        ComplaintDao complaintDao=new ComplaintDao();
        List<Complaints> list = complaintDao.getResidentComplaints(residentId);
        req.setAttribute("list",list);
        req.getRequestDispatcher("ResidentViewComplaints.jsp").forward(req, resp);

    }
}
