<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .form-container {
            margin-top: 50px;
            max-width: 400px;
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .message {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="form-container">
            <!-- Display success or error message -->
            <c:if test="${!empty message}">
                <div class="alert alert-success message">${message}</div>
            </c:if>
            <c:if test="${!empty error}">
                <div class="alert alert-danger message">${error}</div>
            </c:if>

            <!-- OTP Verification Form -->
            <form action="verifyOtp" method="post">
                <div class="mb-3">
                    <label for="otp" class="form-label">Enter OTP</label>
                    <input type="text" class="form-control" id="otp" name="otp" placeholder="Enter OTP" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Verify OTP</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
