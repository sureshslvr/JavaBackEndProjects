package servlet;

import dao.ComplaintDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojo.Complaints;

import java.io.IOException;

@WebServlet("/RaiseComplaintServlet")
public class RaiseComplaintServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category=req.getParameter("category");
        String subject = req.getParameter("subject");
        String description = req.getParameter("description");
        HttpSession session = req.getSession(true);

        Complaints complaint = new Complaints();
        complaint.setUserId((Integer) session.getAttribute("residentId"));
        complaint.setCategory(category);
        complaint.setSubject(subject);
        complaint.setDescription(description);
        complaint.setStatus("pending");

        ComplaintDao complaintDao=new ComplaintDao();
        complaintDao.saveComplaint(complaint);

        req.getRequestDispatcher("ResidentViewComplaintsServlet").forward(req,resp);

        req.getRequestDispatcher("ResidentViewComplaintsServlet").forward(req,resp);

    }
}
