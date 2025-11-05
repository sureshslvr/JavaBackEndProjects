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

@WebServlet("/AdminViewAllComplaintsServlet")
public class AdminViewAllComplaintsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ComplaintDao dao= new ComplaintDao();
        List<Complaints> allComplaints = dao.getAllComplaints();
        req.setAttribute("allComplaints",allComplaints);
        req.getRequestDispatcher("AdminViewAllComplaints.jsp").forward(req, resp);
    }
}
