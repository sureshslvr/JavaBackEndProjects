<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>

    <!-- ✅ Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }
        .signup-card {
            background: #ffffff;
            padding: 2.5rem;
            border-radius: 1.2rem;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 1.5rem;
            font-weight: 600;
        }
        label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 10px;
        }
        .btn {
            width: 100%;
            border-radius: 25px;
            margin-top: 1.2rem;
        }
        .form-check-label {
            margin-right: 15px;
        }
        .text-center a {
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="signup-card">
        <h2>📝 Sign Up</h2>

        <form action="signup" method="post">

            <div class="mb-3">
                <label for="residentName" class="form-label">Name</label>
                <input type="text" class="form-control" name="residentName" id="residentName" placeholder="Enter your name" required>
            </div>

            <div class="mb-3">
                <label for="residentEmail" class="form-label">Email</label>
                <input type="email" class="form-control" name="residentEmail" id="residentEmail" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label for="residentPassword" class="form-label">Password</label>
                <input type="password" class="form-control" name="residentPassword" id="residentPassword" placeholder="Enter your password" required>
            </div>

            <div class="mb-3">
                <label for="residentAddress" class="form-label">Address</label>
                <input type="text" class="form-control" name="residentAddress" id="residentAddress" placeholder="Enter your address" required>
            </div>

            <div class="mb-3">
                <label for="phoneNumber" class="form-label">Phone Number</label>
                <input type="number" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter your number" required>
            </div>

            <div class="mb-3">
                <label class="form-label d-block">Role</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="role" id="radioAdmin" value="admin">
                    <label class="form-check-label" for="radioAdmin">Admin</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="role" id="radioResident" value="resident" checked>
                    <label class="form-check-label" for="radioResident">Resident</label>
                </div>
            </div>

            <button type="submit" class="btn btn-success">Create Account</button>

        </form>

        <p class="text-center mt-3 mb-0">
            Already have an account? <a href="login.jsp" class="text-primary">Login here</a>
        </p>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
