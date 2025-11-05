<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #d4fc79, #96e6a1);
        min-height: 100vh;
        font-family: 'Segoe UI', sans-serif;
    }
    .dashboard-container {
        max-width: 600px;
        margin: 5rem auto;
        background: #ffffff;
        padding: 2.5rem;
        border-radius: 1.2rem;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 2rem;
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
        width: 220px;
        padding: 10px 0;
        border-radius: 25px;
        color: #fff;
        font-weight: 500;
        transition: 0.3s ease;
    }
    a[href*="AdminViewAllComplaintsServlet"] {
        background-color: #007bff;
    }
    a[href*="login.jsp"] {
        background-color: #dc3545;
    }
    a:hover {
        opacity: 0.85;
        transform: scale(1.03);
    }
</style>
</head>

<body>
    <div class="dashboard-container">
        <h2>👋 Hello <%= session.getAttribute("residentName") %>,<br> Welcome to Admin Dashboard</h2>

        <ul>
            <li><a href="AdminViewAllComplaintsServlet">View All Complaints</a></li>
            <li><a href="login.jsp">Logout</a></li>
        </ul>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
