package servlet;

import dao.ComplaintDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Complaints;

import java.io.IOException;

@WebServlet("/ResidentEditComplaintServlet")
public class ResidentEditComplaintServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int complaintId = Integer.parseInt(req.getParameter("complaintId"));
        ComplaintDao complaintDao=new ComplaintDao();
        Complaints complaint = complaintDao.getComplaintByID(complaintId);
        req.setAttribute("complaint",complaint);
        req.getRequestDispatcher("ResidentEditComplaint.jsp").forward(req,resp);
    }
}
