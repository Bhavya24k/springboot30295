<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthTrack+ - About Us</title>
    <style>
        body {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            background-image: url('<%=request.getContextPath()%>/images/pic2.png'); /* Path to your fruits image */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
            background-attachment: fixed;
            background-color: #1fcaa2; /* Match background gradient or solid color */
            color: rgb(11, 11, 11); /* Darker text color */
            margin: 0;
            padding: 0;
            position: relative;
        }

        nav {
            background-color: #2a494e; /* Adjust this to match your image */
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed; /* Fixed position to stay at the top */
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .logo {
            font-size: 2em; /* Increase the size of HealthTrack+ */
            font-weight: bold;
            color: white;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

      h1 {
    text-align: center;
    margin-top: 100px; /* To provide space for the fixed navbar */
    font-size: 3em;
    font-family: 'Brush Script MT', cursive; /* Script font for "ABOUT US" */
    color: #2a494e; /* Text color matching the navbar */
}



        .content {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: justify;
            line-height: 1.6;
            color: #121a22; /* Darker color for text */
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background for contrast */
            border-radius: 10px; /* Optional: to add rounded corners */
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

    <h1>ABOUT US</h1>

    <div class="content">
        <p> At HealthTrack+, our mission is to empower parents, guardians, and healthcare professionals to monitor and improve the dietary habits of children and adolescents. We strive to help young people grow up healthy by providing precise dietary recommendations and interventions based on nutrient analysis.</p>

        <p>HealthTrack+ began as a project inspired by the growing concern about nutrient deficiencies among children. Our founders, a group of passionate technologists and nutrition enthusiasts, realized the importance of merging technology with health to help parents track and understand their children’s dietary needs effectively.</p>

        <p>Our vision is a world where every child has access to balanced nutrition and personalized dietary support, leading to a healthier future for upcoming generations.</p>
    </div>

</body>
</html>
