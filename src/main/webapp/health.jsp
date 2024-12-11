<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Health Information</title> 
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('images/pic2.png'); /* Replace with your image file path */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Center Container */
        .container {
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Headings */
        h2 {
            text-align: center;
            color: #1abc9c; /* Green accent */
            margin-bottom: 20px;
        }

        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 1.1em;
            font-weight: bold;
        }

        input, select, button {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        input:focus, select:focus {
            border-color: #1abc9c; /* Green highlight */
            box-shadow: 0 0 5px rgba(26, 188, 156, 0.5);
        }

        button {
            background-color: #1abc9c;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #16a085; /* Darker green on hover */
        }

        /* Button Container */
        .submit-button {
            display: flex;
            justify-content: center;
        }

        /* Error Message Styling */
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

    </style>
</head>
<body>
    <!-- Main Form Container -->
    <div class="container">
        <h2>Enter Your Health Information</h2>
        <form action="/health/addOrUpdate" method="post">
            <div class="form-group">
                <label for="height">Height (cm):</label>
                <input type="number" step="0.01" id="height" name="height" placeholder="Enter your height in cm" required>
            </div>

            <div class="form-group">
                <label for="weight">Weight (kg):</label>
                <input type="number" step="0.01" id="weight" name="weight" placeholder="Enter your weight in kg" required>
            </div>

            <div class="form-group">
                <label for="goal">Goal:</label>
                <select id="goal" name="goal">
                    <option value="gain">Gain</option>
                    <option value="lose">Lose</option>
                    <option value="maintain">Maintain</option>
                </select>
            </div>

            <div class="form-group">
                <label for="customerId">Customer ID:</label>
                <input type="number" id="customerId" name="customerId" placeholder="Enter your Customer ID" required>
            </div>

            <div class="submit-button">
                <button type="submit">Submit</button>
            </div>
        </form>

        <!-- BMI Calculation Section -->
        <h2>Your BMI</h2>
        <c:if test="${bmi != null}">
            <p>Your BMI is: <c:out value="${bmi}" /></p>
        </c:if>
        <c:if test="${bmi == 'No health information available!'}">
            <p style="color: red;">No health information available. Please update your health data.</p>
        </c:if>
        <form action="/health/bmi/${customer.id}" method="get">
            <div class="submit-button">
                <button type="submit">Calculate BMI</button>
            </div>
        </form>
    </div>
</body>
</html>
