<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.klef.jsfd.sdp.model.Customer" %>

<%
Customer c = (Customer) session.getAttribute("customer");
if (c == null) {
    response.sendRedirect("login.jsp"); // Redirect if the customer is not logged in
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
    <style>
        /* Reset styles to prevent default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-image: url('/images/pic2.png'); /* Adjusted path */
            background-size: cover; /* Ensure the image covers the entire viewport */
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            height: 100vh; /* Full viewport height */
            display: flex;
            flex-direction: column;
        }

        nav {
            background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black navbar */
            overflow: hidden;
            padding: 10px 20px;
            display: flex;
            justify-content: space-around;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #575757;
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .content-box {
            background-color: rgba(0, 0, 0, 0.6); /* Slightly transparent black box */
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            width: 100%;
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-details p, .update-form input, .update-form button {
            margin: 10px 0;
        }

        .profile-details p span {
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="tel"], button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: white;
            color: black;
        }

        button {
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <nav>
        <a href="customerhome.jsp">Home</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="contactus.jsp">Contact Us</a>
        <a href="logout">Logout</a>
    </nav>

    <div class="container">
        <div class="content-box">
            <h3>Customer Profile</h3>

            <!-- Profile Details -->
            <div class="profile-details">
                <p><span>ID:</span> <%= c.getId() %></p>
                <p><span>Name:</span> <%= c.getName() %></p>
                <p><span>Gender:</span> <%= c.getGender() %></p>
                <p><span>Date of Birth:</span> <%= c.getDateOfBirth() %></p>
                <p><span>Email:</span> <%= c.getEmail() %></p>
                <p><span>Location:</span> <%= c.getLocation() %></p>
                <p><span>Contact:</span> <%= c.getContact() %></p>
            </div>

            <!-- Update Form -->
            <div class="update-form">
                <form action="updateCustomerProfile" method="POST">
                    <input type="text" name="name" value="<%= c.getName() %>" required>
                    <input type="text" name="gender" value="<%= c.getGender() %>" required>
                    <input type="date" name="dob" value="<%= c.getDateOfBirth() %>" required>
                    <input type="email" name="email" value="<%= c.getEmail() %>" required>
                    <input type="text" name="location" value="<%= c.getLocation() %>" required>
                    <input type="tel" name="contact" value="<%= c.getContact() %>" required>
                    <button type="submit">Update</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
