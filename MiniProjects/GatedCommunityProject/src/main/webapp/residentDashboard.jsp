<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resident Dashboard</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
        min-height: 100vh;
        font-family: 'Segoe UI', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .dashboard-container {
        background: #ffffff;
        border-radius: 1.2rem;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        text-align: center;
        padding: 2.5rem;
        width: 420px;
    }
    h2 {
        color: #333;
        margin-bottom: 2rem;
        font-weight: 600;
    }
    ul {
        list-style: none;
        padding: 0;
    }
    ul li {
        margin: 1rem 0;
    }
    a {
        text-decoration: none;
        display: inline-block;
        width: 240px;
        padding: 10px 0;
        border-radius: 25px;
        color: #fff;
        font-weight: 500;
        transition: 0.3s ease;
    }
    a[href*="RaiseComplaint.jsp"] {
        background-color: #0d6efd; /* Blue */
    }
    a[href*="ResidentViewComplaintsServlet"] {
        background-color: #20c997; /* Teal */
    }
    a[href*="ComplaintHistoryServlet"] {
        background-color: #6f42c1; /* Purple */
    }
    a[href*="login.jsp"] {
        background-color: #dc3545; /* Red */
    }
    a:hover {
        opacity: 0.85;
        transform: scale(1.03);
    }
</style>
</head>

<body>
    <div class="dashboard-container">
        <h2>👋 Hello <%= session.getAttribute("residentName") %><br>Welcome to Resident Dashboard</h2>

        <ul>
            <li><a href="RaiseComplaint.jsp">Raise Complaint</a></li>
            <li><a href="ResidentViewComplaintsServlet">View My Complaints</a></li>
            <li><a href="ComplaintHistoryServlet">Complaint History</a></li>
            <li><a href="login.jsp">Logout</a></li>
        </ul>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
