<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthTrack+ - Contact Us</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Background styling */
        body {
            background-image: url('images/pic2.png'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: white;
        }

        .gradient-overlay {
            background: rgba(0, 0, 0, 0.6); /* Dark overlay for readability */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }

        nav {
            background-color: rgba(42, 73, 78, 0.9); /* Navbar with transparency */
            padding: 15px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 2;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5em;
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

        .content {
            position: relative;
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-top: 100px; /* To prevent overlap with navbar */
            padding: 50px;
            z-index: 2;
        }

        .form-container {
            background-color: rgba(62, 103, 111, 0.9); /* Semi-transparent container */
            padding: 35px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            max-width: 450px;
            flex: 1;
        }

        .form-container input,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 1em;
        }

        .form-container input[type="submit"] {
            background-color: #c8b7a6;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .form-container input[type="submit"]:hover {
            background-color: #a69383;
        }

        .text-container {
            flex: 1;
            padding: 20px;
            margin-left: 30px; /* Space between form and text */
        }

        .text-container h1 {
            font-size: 3em;
            font-family: 'Brush Script MT', cursive;
        }

        .text-container p {
            font-size: 1.2em;
            line-height: 1.8;
        }

        .email-info {
            font-size: 1.2em;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .content {
                flex-direction: column;
                align-items: center;
            }

            .form-container {
                margin-bottom: 20px;
            }

            .text-container {
                margin-left: 0;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <div class="gradient-overlay"></div>

    <nav>
        <div class="logo">HealthTrack+</div>
        <div>
            <a href="home.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="services.jsp">Services</a>
            <a href="contactus.jsp" class="active">Contact Us</a>
        </div>
    </nav>

    <div class="content">
        <!-- Form Section -->
        <div class="form-container">
            <form action="#" method="POST">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>

                <label for="email">E-mail</label>
                <input type="email" id="email" name="email" required>

                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" required>

                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <input type="submit" value="Submit">
            </form>
        </div>

        <!-- Text Section -->
        <div class="text-container">
            <h1>Contact Us</h1>
            <p>
                We are here to assist you with any questions, feedback, or support you may need. <br>
                Fill out the form, and we’ll get back to you as soon as possible.
            </p>
            <p class="email-info">
                <strong>Email:</strong> healthtrack@gmail.com
            </p>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
