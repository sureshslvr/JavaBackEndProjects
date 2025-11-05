<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>

    <!-- ✅ Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #a8edea, #fed6e3);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }
        .card {
            border: none;
            border-radius: 1.5rem;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            padding: 2rem;
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 1.5rem;
        }
        .btn {
            width: 120px;
            margin: 0.5rem;
            border-radius: 25px;
        }
    </style>
</head>

<body>
    <div class="card bg-light">
        <h2>🏡 Welcome to the Gated Community</h2>
        <p class="text-muted mb-4">Please choose an option below to continue.</p>
        <div>
            <a href="signup.jsp" class="btn btn-primary">Sign Up</a>
            <a href="login.jsp" class="btn btn-success">Login</a>
        </div>
    </div>

    <!-- ✅ Bootstrap JS (optional, for interactions) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
