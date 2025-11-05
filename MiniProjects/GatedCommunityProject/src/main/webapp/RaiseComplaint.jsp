<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Raise Complaint</title>

<!-- ✅ Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #f6d365, #fda085);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }
    .complaint-card {
        background: #fff;
        padding: 2.5rem;
        border-radius: 1.2rem;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        width: 400px;
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.6rem;
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
    <div class="complaint-card">
        <h1>📝 Raise a Complaint</h1>

        <form action="RaiseComplaintServlet" method="post">
            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <input type="text" class="form-control" name="category" id="category" placeholder="Enter complaint category" required>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Subject</label>
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Enter complaint subject" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" name="description" id="description" rows="3" placeholder="Describe your complaint" required></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
