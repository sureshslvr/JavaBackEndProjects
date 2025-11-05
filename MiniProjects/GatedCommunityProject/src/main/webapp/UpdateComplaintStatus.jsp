<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="pojo.Complaints" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Update Complaint Status</title>

    <!-- ✅ Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #84fab0, #8fd3f4);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }

        .status-card {
            background: #fff;
            padding: 2.5rem;
            border-radius: 1.2rem;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            width: 420px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 2rem;
            font-weight: 600;
        }

        .form-check-label {
            font-weight: 500;
            font-size: 1.1rem;
        }

        .form-check-input {
            transform: scale(1.2);
            margin-right: 10px;
        }

        .btn {
            width: 100%;
            border-radius: 25px;
            margin-top: 1.5rem;
        }

        .status-group {
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
            margin-bottom: 1rem;
        }
    </style>
</head>

<body>
    <%
        Complaints complaint = (Complaints) request.getAttribute("complaint");
        String currentStatus = complaint.getStatus();
    %>

    <div class="status-card">
        <h2>⚙️ Update Complaint Status</h2>

        <form action="AdminUpdatedComplaintStatusServlet" method="post">
            <input type="hidden" name="complaintId" id="complaintId" value="<%= complaint.getCompliantId() %>">

            <div class="status-group">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="status" id="pending" value="pending"
                        <%= "pending".equals(currentStatus) ? "checked" : "" %>>
                    <label class="form-check-label" for="pending">Pending</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="status" id="In_Progress" value="In_Progress"
                        <%= "In_Progress".equals(currentStatus) ? "checked" : "" %>>
                    <label class="form-check-label" for="In_Progress">In Progress</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="status" id="resolved" value="resolved"
                        <%= "resolved".equals(currentStatus) ? "checked" : "" %>>
                    <label class="form-check-label" for="resolved">Resolved</label>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
