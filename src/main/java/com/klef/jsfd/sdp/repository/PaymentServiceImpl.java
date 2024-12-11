package com.klef.jsfd.sdp.repository;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Override
    public boolean processPayment(String cardNumber, String expiryDate, String cvv, String amount) {
        // Simulate payment processing logic
        
        System.out.println("Processing payment...");
        System.out.println("Card Number: " + cardNumber);
        System.out.println("Expiration Date: " + expiryDate);
        System.out.println("CVV: " + cvv);
        System.out.println("Amount: " + amount);

        // Simulated validation (e.g., check card length and amount validity)
        boolean isPaymentSuccessful = true;

        // Basic card number validation (13 to 19 digits)
        if (cardNumber.length() < 13 || cardNumber.length() > 19) {
            System.out.println("Invalid card number.");
            isPaymentSuccessful = false;
        }

        // Basic amount validation (should be greater than 0)
        try {
            double paymentAmount = Double.parseDouble(amount);
            if (paymentAmount <= 0) {
                System.out.println("Invalid payment amount.");
                isPaymentSuccessful = false;
            }
        } catch (NumberFormatException e) {
            System.out.println("Invalid amount format.");
            isPaymentSuccessful = false;
        }

        // If the card number and amount are valid, simulate a successful payment
        return isPaymentSuccessful;
    }
}