<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.klef.jsfd.sdp.model.Admin" %>

<%
Admin admin = (Admin) session.getAttribute("admin");
if (admin == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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

        /* Dashboard content */
        .dashboard-options {
            text-align: center;
            margin-top: 50px;
            font-size: 1.2em;
            background-color: rgba(0, 0, 0, 0.7); /* Dark background to ensure text visibility */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 700px;
            margin: auto;
        }

        /* Ensure the heading is visible */
        .dashboard-options h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: white; /* White color for visibility */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Add a subtle shadow for better contrast */
        }

        .dashboard-options ul {
            list-style-type: none;
            padding: 0;
        }

        .dashboard-options ul li {
            margin: 20px 0;
        }

        .dashboard-options a {
            color: white;
            background-color: rgba(42, 73, 78, 0.8);
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            display: inline-block;
        }

        .dashboard-options a:hover {
            background-color: rgba(42, 73, 78, 1);
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav>
        <div class="logo">HealthTrack+</div>
        <div>
            <a href="adminhome.jsp">Home</a>
            <a href="login.jsp">Logout</a>
        </div>
    </nav>

    <!-- Admin Dashboard Options -->
    <div class="dashboard-options">
        <h2>Admin Dashboard</h2>
        <ul>
            <li><a href="adddietplan.jsp">• Manage Nutritional Data</a></li>
            <li><a href="updateDietaryRecommendations.jsp">• Update Dietary Recommendations</a></li>
            <li><a href="admintrackheallth.jsp">• Track User Health</a></li>
            <li><a href="viewallcustomers.jsp">• View All Customers</a></li>
        </ul>
    </div>

</body>
</html>
