<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Health Metrics</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
        }
        canvas {
            margin-top: 20px;
            max-width: 100%;
        }
    </style>
</head>
<body>
    <h1>Health Metrics for Customer ID: ${customerId}</h1>

    <canvas id="weightChart"></canvas>
    <canvas id="bmiChart"></canvas>

    <script>
        // Parse health metrics from the model
        const healthMetrics = ${healthMetrics};

        // Extract data for charts
        const dates = healthMetrics.map(metric => metric.date);
        const weights = healthMetrics.map(metric => metric.weight);
        const bmis = healthMetrics.map(metric => metric.bmi);

        // Weight Chart
        const weightChartCtx = document.getElementById('weightChart').getContext('2d');
        new Chart(weightChartCtx, {
            type: 'line',
            data: {
                labels: dates,
                datasets: [{
                    label: 'Weight (kg)',
                    data: weights,
                    borderColor: '#007bff',
                    borderWidth: 2,
                    fill: false,
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: { title: { display: true, text: 'Date' } },
                    y: { title: { display: true, text: 'Weight (kg)' } },
                }
            }
        });

        // BMI Chart
        const bmiChartCtx = document.getElementById('bmiChart').getContext('2d');
        new Chart(bmiChartCtx, {
            type: 'line',
            data: {
                labels: dates,
                datasets: [{
                    label: 'BMI',
                    data: bmis,
                    borderColor: '#28a745',
                    borderWidth: 2,
                    fill: false,
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: { title: { display: true, text: 'Date' } },
                    y: { title: { display: true, text: 'BMI' } },
                }
            }
        });
    </script>

    <p><a href="/adminhome">Back to Admin Home</a></p>
</body>
</html>
