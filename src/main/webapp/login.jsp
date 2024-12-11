<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthTrack+ - Login</title>
    <style>
        
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: rgb(6, 6, 6);
            background-image: url('images/pic2.png'); 
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
            background-attachment: fixed;
            display: flex;
            flex-direction: column;
        }

        nav {
            background-color: rgba(42, 73, 78, 0.9);
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav .logo {
            font-size: 1.8em;
            font-weight: bold;
            color: white;
        }

        nav a {
            color: rgb(255, 255, 255);
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 60px); 
        }

        .login-box {
            background-color: rgba(62, 103, 111, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 100%;
            max-width: 350px;
        }

        .login-box h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: white;
        }

        .login-box input[type="text"], .login-box input[type="password"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 30px;
            background-color: white;
            font-size: 1em;
        }

        .login-box input[type="submit"] {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 30px;
            background-color: #121a22; /* Button background color */
            color: white;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
        }

        .login-box input[type="submit"]:hover {
            background-color: #0a1016;
        }

        .signup {
            margin-top: 15px;
            font-size: 0.9em;
        }

        .signup a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .signup a:hover {
            text-decoration: underline;
        }

        .user-type-selection {
            margin-top: 15px;
            color: white;
        }

        .user-type-selection input[type="radio"] {
            margin-right: 10px;
        }

    </style>
</head>
<body>

    <nav>
        <div class="logo">HealthTrack+</div>
        <div>
            <a href="home.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="services.jsp">Services</a>
            <a href="contactus.jsp">Contact Us</a>
        </div>
    </nav>

    <div class="container">
        <div class="login-box">
            <h2>LOGIN</h2>
            <!-- Login Form -->
            <form id="loginForm" method="POST">

                <!-- Admin Login: username is required -->
                <input type="text" name="username" id="username" placeholder="Username" style="display:none" required>
                
                <!-- Customer Login: email is required -->
                <input type="text" name="email" id="email" placeholder="Email" style="display:none" required>
                
                <input type="password" name="password" placeholder="Password" required>

                <div class="user-type-selection">
                    <input type="radio" name="userType" value="admin" id="admin" required> Admin
                    <input type="radio" name="userType" value="customer" id="customer" required> Customer
                </div>

                <input type="submit" value="Login">
            </form>

            <div class="signup" id="signupLink" style="display:none;">
                Don't have an Account? <a href="signup.jsp">Sign Up</a>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Set event listeners for radio button change
            document.getElementById('admin').addEventListener('change', function() {
                toggleInputFields('admin');
                setFormAction('/checkadminlogin');
                document.getElementById('signupLink').style.display = 'none'; // Hide signup link for Admin
            });

            document.getElementById('customer').addEventListener('change', function() {
                toggleInputFields('customer');
                setFormAction('/checkcustomerlogin');
                document.getElementById('signupLink').style.display = 'block'; // Show signup link for Customer
            });

            // Initial check to show the correct input field based on the selected radio button
            if (document.getElementById('admin').checked) {
                toggleInputFields('admin');
                setFormAction('/checkadminlogin');
                document.getElementById('signupLink').style.display = 'none'; // Hide signup link for Admin
            } else if (document.getElementById('customer').checked) {
                toggleInputFields('customer');
                setFormAction('/checkcustomerlogin');
                document.getElementById('signupLink').style.display = 'block'; // Show signup link for Customer
            }

            // Toggle visibility based on user type selection
            function toggleInputFields(userType) {
                if (userType === 'admin') {
                    document.getElementById('username').style.display = 'block';
                    document.getElementById('email').style.display = 'none';
                    document.getElementById('username').required = true;  // Set to required for admin
                    document.getElementById('email').required = false;   // Remove required for customer
                } else if (userType === 'customer') {
                    document.getElementById('username').style.display = 'none';
                    document.getElementById('email').style.display = 'block';
                    document.getElementById('username').required = false; // Remove required for admin
                    document.getElementById('email').required = true;    // Set to required for customer
                }
            }

            // Dynamically set the form action
            function setFormAction(url) {
                document.getElementById('loginForm').action = url;
            }
        });
    </script>

</body>
</html>
