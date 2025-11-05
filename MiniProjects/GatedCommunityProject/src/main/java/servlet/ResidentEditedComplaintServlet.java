package servlet;

import dao.ComplaintDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Complaints;

import java.io.IOException;

@WebServlet("/ResidentEditedComplaintServlet")
public class ResidentEditedComplaintServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int complaintId = Integer.parseInt(req.getParameter("complaintId"));
        String category = req.getParameter("category");
        String subject = req.getParameter("subject");
        String description = req.getParameter("description");
        ComplaintDao dao=new ComplaintDao();
        Complaints complaint = dao.getComplaintByID(complaintId);
        complaint.setCategory(category);
        complaint.setSubject(subject);
        complaint.setDescription(description);
        dao.updateComplaint(complaint);
        resp.sendRedirect("ResidentViewComplaintsServlet");
    }
}
