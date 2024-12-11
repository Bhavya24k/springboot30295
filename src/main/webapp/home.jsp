<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthTrack+</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* General Styles */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
        }

        /* Background Image */
        .bg-image {
            background-image: url('images/pic2.png'); /* Replace with your background image file */
            background-size: cover;
            background-position: center;
            height: 100%;
            width: 100%;
            position: relative;
        }

        /* Navbar Styles */
        .navbar {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black */
            position: absolute;
            width: 100%;
        }
        .navbar a {
            color: #fff !important;
            font-size: 18px;
        }
        .navbar a:hover {
            color: #00ace6 !important; /* Light blue hover effect */
        }

        /* Content Container */
        .content {
            position: absolute;
            left: 15%; /* Adjust this to move horizontally */
            top: 30%; /* Adjust this to move vertically */
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 5px; /* Spacing between blocks */
        }

        /* Boxes Styling */
        /* Boxes Styling (Proverb Squares) */
.square {
    background-color: #94b3a0; /* Light green */
    width: 250px; /* Increased size */
    height: 250px; /* Increased size */
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 10px;
    color: white;
    font-size: 24px; /* Larger font */
    font-weight: bold; /* Bolder font */
    text-align: center;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
    position: relative;
    padding: 15px; /* Padding to keep text neat */
    border: 4px solid #ffffff; /* White border around each proverb box */
}

.square p {
    line-height: 1.3;
}


        /* Logo Styling (Square with border) */
.logo-square {
    background-color: #ffffff; /* White background for contrast */
    border: 4px solid #94b3a0; /* Square border with matching color */
    width: 250px; /* Same size as the proverb squares */
    height: 250px; /* Same height and width */
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 10px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
    position: absolute;
    left: 153%; /* Push the logo to the right of the first square */
    top: 100%; /* Adjusted to move the logo slightly lower */
    transform: translate(-50%, -50%);
    overflow: hidden; /* Ensures no overflow of image */
}

.logo-square img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* Ensures the image covers the square without gaps */
}

    </style>
</head>
<body>
    <!-- Background Image -->
    <div class="bg-image">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">HealthTrack+</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutus.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contactus.jsp">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Content -->
        <div class="content">
            <!-- First Proverb -->
            <div class="square">
                <p>TRACK YOUR<br>HEALTH</p>
                <!-- Logo Positioned to the Side -->
                <div class="logo-square">
                    <img src="images/logo.png" alt="HealthTrack+ Logo"> <!-- Replace with your logo -->
                </div>
            </div>

            <!-- Second Proverb -->
            <div class="square">
                <p>TRANSFORM YOUR<br>LIFE</p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
