<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Diet Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Diet Plans</h1>
    <p>Here are your diet plans:</p>

    <table>
        <thead>
            <tr>
                <th>Customer ID</th>
                <th>Meal Plan</th>
                <th>Calories</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="dietPlan" items="${dietPlans}">
                <tr>
                    <td>${dietPlan.customerId}</td>
                    <td>${dietPlan.mealPlan}</td>
                    <td>${dietPlan.calories}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <p><a href="/customerhome">Back to Home</a></p>
</body>
</html>
