package servlet;

import dao.ComplaintDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Complaints;

import java.io.IOException;

@WebServlet("/ResidentDeleteComplaintServlet")
public class ResidentDeleteComplaintServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int complaintId = Integer.parseInt(req.getParameter("complaintId"));
        ComplaintDao dao=new ComplaintDao();
        Complaints complaint = dao.getComplaintByID(complaintId);
        dao.deleteComplaint(complaint);
        resp.sendRedirect("ResidentViewComplaintsServlet");
    }
}
