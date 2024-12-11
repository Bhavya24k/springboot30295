<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.klef.jsfd.sdp.model.Customer" %>

<%
    Customer c = (Customer) session.getAttribute("customer");
    if (c == null) {
        response.sendRedirect("login.jsp"); // Redirect if the customer is not logged in
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: rgb(6, 6, 6);
            background-image: url('images/pic2.png'); /* Your background image */
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

        .welcome-message {
            text-align: center;
            font-size: 2.5em;
            color: rgba(42, 73, 78, 20); /* Matching the navbar color */
            margin-top: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Adding a shadow for better visibility */
        }

        .options-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
            gap: 30px;
        }

        .option-card {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            width: 250px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .option-card h3 {
            margin-bottom: 20px;
        }

        .option-card a {
            padding: 10px 20px;
            background-color: #1abc9c;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }

        .option-card a:hover {
            background-color: #16a085;
        }

        .logout-btn {
            padding: 15px 30px;
            border: none;
            background-color: #121a22;
            color: white;
            font-size: 1em;
            font-weight: bold;
            border-radius: 30px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }

        .logout-btn:hover {
            background-color: #0a1016;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav>
        <div class="logo">HealthTrack+</div>
        <div>
            <a href="customerhome.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="customerprofile.jsp">Profile</a>
            <a href="payment.jsp">Payment</a>
            <a href="login.jsp">Logout</a>
        </div>
    </nav>

    <!-- Welcome Message -->
    <div class="welcome-message">
        <h1>Welcome, <%= c.getName() %>!</h1> <!-- Displaying Customer's Name -->
        <p>We are glad to have you back on HealthTrack+.</p>
    </div>

    <!-- Options Section -->
    <div class="options-container">
        <!-- Input Dietary Habits -->
        <div class="option-card">
            <h3>Input Dietary Habits</h3>
            <p>Track your daily food intake for better recommendations.</p>
            <a href="health.jsp">Enter Dietary Habits</a>
        </div>

        <!-- Personalized Diet Plan -->
        <div class="option-card">
            <h3>View Personalized Diet Plan</h3>
            <p>Get a customized diet plan based on your health goals.</p>
            <a href="viewdietplan.jsp">View Diet Plan</a>
        </div>

        <!-- Health Monitoring -->
        <div class="option-card">
            <h3>Track Health</h3>
            <p>Monitor your BMI, weight, and other health metrics.</p>
            <a href="health-monitoring.jsp">Track Health</a>
        </div>
    </div>

    <!-- Logout Button -->
    <div style="text-align: center; margin-top: 30px;">
        <a href="logout.jsp" class="logout-btn">Logout</a>
    </div>

</body>
</html>
