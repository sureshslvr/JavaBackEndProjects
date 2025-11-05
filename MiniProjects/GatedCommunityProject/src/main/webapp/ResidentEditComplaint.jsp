<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="pojo.Complaints" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Edit Complaint</title>

    <!-- ✅ Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #cfd9df, #e2ebf0);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }

        .edit-card {
            background: #fff;
            padding: 2.5rem;
            border-radius: 1.2rem;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            width: 420px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 1.8rem;
            font-weight: 600;
        }

        label {
            font-weight: 500;
            margin-top: 10px;
        }

        .form-control {
            border-radius: 10px;
        }

        .btn {
            width: 100%;
            border-radius: 25px;
            margin-top: 1.5rem;
        }
    </style>
</head>

<body>
    <%
        Complaints complaint = (Complaints) request.getAttribute("complaint");
    %>

    <div class="edit-card">
        <h2>✏️ Edit Complaint</h2>

        <form action="ResidentEditedComplaintServlet" method="post">
            <input type="hidden" name="complaintId" id="complaintId" value="<%= complaint.getCompliantId() %>">

            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <input type="text" class="form-control" name="category" id="category"
                    value="<%= complaint.getCategory() %>" required>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Subject</label>
                <input type="text" class="form-control" name="subject" id="subject"
                    value="<%= complaint.getSubject() %>" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" name="description" id="description" rows="3"
                    required><%= complaint.getDescription() %></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
