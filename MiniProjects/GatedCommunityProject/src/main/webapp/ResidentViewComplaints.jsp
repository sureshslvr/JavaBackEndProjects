<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pojo.Complaints" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Complaints</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #89f7fe, #66a6ff);
        min-height: 100vh;
        font-family: 'Segoe UI', sans-serif;
        padding: 2rem;
    }
    .container {
        background: #ffffff;
        border-radius: 1rem;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        max-width: 1100px;
    }
    h2 {
        text-align: center;
        margin-bottom: 2rem;
        color: #333;
        font-weight: 600;
    }
    caption {
        caption-side: top;
        font-size: 1.25rem;
        font-weight: 600;
        margin-bottom: 1rem;
        color: #333;
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
        background-color: #eaf4ff;
    }
    .btn-edit {
        background-color: #20c997;
        color: white;
        padding: 6px 12px;
        border-radius: 6px;
        text-decoration: none;
        transition: 0.3s;
    }
    .btn-edit:hover {
        background-color: #198754;
        color: #fff;
    }
    .btn-delete {
        background-color: #dc3545;
        color: white;
        padding: 6px 12px;
        border-radius: 6px;
        text-decoration: none;
        transition: 0.3s;
    }
    .btn-delete:hover {
        background-color: #bb2d3b;
        color: #fff;
    }
</style>
</head>

<body>
    <div class="container">
        <h2>📋 My Complaints</h2>

        <table class="table table-bordered table-striped">
            <caption>Here are your complaints</caption>
            <thead>
                <tr>
                    <th>Complaint ID</th>
                    <th>User ID</th>
                    <th>Category</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Update</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Complaints> list = (List<Complaints>) request.getAttribute("list");
                    if (list != null && !list.isEmpty()) {
                        for (Complaints complaint : list) {
                %>
                <tr>
                    <td><%= complaint.getCompliantId() %></td>
                    <td><%= complaint.getUserId() %></td>
                    <td><%= complaint.getCategory() %></td>
                    <td><%= complaint.getSubject() %></td>
                    <td><%= complaint.getDescription() %></td>
                    <td><%= complaint.getStatus() %></td>
                    <td>
                        <a href="ResidentEditComplaintServlet?complaintId=<%= complaint.getCompliantId() %>" class="btn-edit">Edit</a>
                    </td>
                    <td>
                        <a href="ResidentDeleteComplaintServlet?complaintId=<%= complaint.getCompliantId() %>" class="btn-delete">Cancel</a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="8" class="text-center text-muted">No complaints found.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
