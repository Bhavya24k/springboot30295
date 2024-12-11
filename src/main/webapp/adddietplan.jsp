<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - Add Diet Plan</title>
    <style>
        /* Basic Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('images/pic2.png'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #1abc9c;
        }
        label {
            font-weight: bold;
        }
        input, select, textarea, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }
        button {
            background-color: #1abc9c;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #16a085;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Diet Plan</h2>
        <form action="/addDietPlan" method="post">
            <label for="customerId">Customer ID:</label>
            <input type="number" id="customerId" name="customerId" required>

            <label for="mealPlan">Meal Plan:</label>
            <textarea id="mealPlan" name="mealPlan" rows="4" placeholder="Enter meal plan details" required></textarea>

            <label for="calories">Calories:</label>
            <input type="number" id="calories" name="calories" placeholder="Total calories for the day" required>

            <button type="submit">Save Diet Plan</button>
        </form>
    </div>
</body>
</html>
