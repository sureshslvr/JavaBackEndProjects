<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #89f7fe, #66a6ff);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }
    .login-card {
        background: #ffffff;
        padding: 2.5rem;
        border-radius: 1.2rem;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        width: 350px;
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 1.5rem;
        font-weight: 600;
    }
    label {
        float: left;
        font-weight: 500;
        margin-top: 10px;
    }
    .form-control {
        border-radius: 10px;
    }
    .btn {
        width: 100%;
        border-radius: 25px;
        margin-top: 1.2rem;
    }
    .error-msg {
        color: red;
        font-size: 0.95rem;
        margin-bottom: 1rem;
    }
</style>
</head>

<body>
    <div class="login-card">
        <h2>🔐 Login</h2>

        <% if (request.getAttribute("error") != null) { %>
            <div class="error-msg"><%= request.getAttribute("error") %></div>
        <% } %>

        <form action="login" method="post">
            <div class="mb-3">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="btn btn-primary">Login</button>
        </form>

        <p class="mt-3 mb-0">Don’t have an account? <a href="signup.jsp" class="text-decoration-none">Sign up</a></p>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
