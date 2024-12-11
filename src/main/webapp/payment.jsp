<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-container {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 30px;
            width: 100%;
            max-width: 400px;
        }

        .form-container label {
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
            display: block;
        }

        .form-container input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .form-container button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .terms {
            text-align: center;
            font-size: 12px;
            color: #888;
            margin-top: 10px;
        }

        .terms a {
            color: #4CAF50;
            text-decoration: none;
        }

        .terms a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

    </style>
</head>
<body>

    <div class="form-container">
        <h1>Payment Information</h1>

        <!-- Form to collect payment details -->
        <form action="/processPayment" method="post">
            <div>
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required>
            </div>

            <div>
                <label for="expiryDate">Expiration Date (MM/YY):</label>
                <input type="text" id="expiryDate" name="expiryDate" required>
            </div>

            <div>
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required>
            </div>

            <div>
                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" required>
            </div>

            <button type="submit">Submit Payment</button>

            <div class="terms">
                <p>By clicking submit, you agree to our <a href="#">Terms and Conditions</a>.</p>
            </div>
        </form>
    </div>

</body>
</html>
