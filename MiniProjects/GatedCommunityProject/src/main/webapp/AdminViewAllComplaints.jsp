<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Complaints" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - View All Complaints</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #f8ffae, #43c6ac);
        min-height: 100vh;
        font-family: 'Segoe UI', sans-serif;
        padding: 2rem;
    }
    .container {
        background: #ffffff;
        border-radius: 1rem;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        max-width: 1000px;
    }
    h2 {
        text-align: center;
        margin-bottom: 2rem;
        color: #333;
        font-weight: 600;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th {
        background-color: #007bff;
        color: white;
        text-align: center;
        padding: 10px;
    }
    td {
        text-align: center;
        padding: 10px;
        vertical-align: middle;
    }
    tr:nth-child(even) {
        background-color: #f8f9fa;
    }
    tr:hover {
        background-color: #eef8ff;
    }
    .btn-edit {
        background-color: #28a745;
        color: white;
        padding: 5px 12px;
        border-radius: 5px;
        text-decoration: none;
        transition: 0.3s;
    }
    .btn-edit:hover {
        background-color: #218838;
        color: #fff;
    }
    caption {
        caption-side: top;
        font-size: 1.25rem;
        font-weight: 600;
        margin-bottom: 1rem;
        color: #333;
    }
</style>
</head>

<body>
    <div class="container">
        <h2>🗂️ All Complaints</h2>
        <table class="table table-bordered table-striped">
            <caption>List of all registered complaints</caption>
            <thead>
                <tr>
                    <th>Complaint ID</th>
                    <th>User ID</th>
                    <th>Category</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Update Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Complaints> allComplaints = (List<Complaints>) request.getAttribute("allComplaints");
                    if (allComplaints != null && !allComplaints.isEmpty()) {
                        for (Complaints complaint : allComplaints) {
                %>
                <tr>
                    <td><%= complaint.getCompliantId() %></td>
                    <td><%= complaint.getUserId() %></td>
                    <td><%= complaint.getCategory() %></td>
                    <td><%= complaint.getSubject() %></td>
                    <td><%= complaint.getDescription() %></td>
                    <td><%= complaint.getStatus() %></td>
                    <td>
                        <a href="AdminUpdateComplaintStatusServlet?complaintId=<%=complaint.getCompliantId() %>" class="btn-edit">Edit Status</a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="7" class="text-center text-muted">No complaints found.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
