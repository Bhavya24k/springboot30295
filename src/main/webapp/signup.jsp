<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthTrack+ - Sign Up</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: rgb(6, 6, 6);
            background-image: url('images/pic2.png'); /* Path to your fruits image */
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
        }

        nav a {
            color: rgb(3, 3, 3);
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
            height: calc(100vh - 60px); /* Full height minus the height of the navigation bar */
        }

        .signup-box {
            background-color: rgba(62, 103, 111, 0.9); /* Slightly transparent box */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 100%;
            max-width: 350px;
        }

        .signup-box h2 {
            font-size: 2em;
            margin-bottom: 20px;
        }

        .signup-box input[type="text"],
        .signup-box input[type="email"],
        .signup-box input[type="date"],
        .signup-box input[type="password"],
        .signup-box input[type="tel"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 30px;
            background-color: white;
            font-size: 1em;
        }

        .signup-box input[type="submit"] {
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

        .signup-box input[type="submit"]:hover {
            background-color: #0a1016;
        }

        .login-link {
            margin-top: 15px;
            font-size: 0.9em;
        }

        .login-link a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
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
        <div class="signup-box">
            <h2>Sign Up</h2>
            <!-- Sign Up Form -->
            <form action="${pageContext.request.contextPath}/insertcustomer" method="POST">
                <input type="text" name="cname" placeholder="Full Name" required pattern="[A-Za-z\s]+" >

                <input type="text" name="cgender" placeholder="Gender" required>
                <input type="date" name="cdob" placeholder="Date of Birth" required>
             <input type="email" name="cemail" placeholder="Email" required 
    pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(com|org|net|edu|gov|co|info)$" 
    title="Please enter a valid email address with a domain (e.g., example@example.com)">


                <input type="text" name="clocation" placeholder="Location" required>
                
                <!-- Phone Number with validation -->
                <input type="tel" name="ccontact" placeholder="Contact Number" 
                    required 
                    pattern="^[0-9]{10}$" 
                    title="Please enter a valid 10-digit phone number (e.g. 1234567890)">
                
                <input type="password" name="cpwd" placeholder="Password" required 
    pattern="^(?=.*[A-Z])(?=.*\W).{6,}$" 
    title="Password must be at least 6 characters long, contain at least one uppercase letter, and one special character (e.g., !, @, #, etc.)">

                <input type="submit" value="Register">
            </form>
            <div class="login-link">
                Already have an Account? <a href="login.jsp">Login</a>
            </div>
        </div>
    </div>

</body>
</html>
