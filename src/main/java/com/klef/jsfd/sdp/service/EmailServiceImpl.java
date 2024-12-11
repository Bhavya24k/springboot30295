package com.klef.jsfd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService{
	@Autowired
    private JavaMailSender mailSender;

    @Override
    public boolean sendOtpEmail(String toEmail, int otp) {
        try {
            // Create the email content
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(toEmail);
            message.setSubject("Your OTP for Payment Verification");
            message.setText("Dear Customer,\n\nYour One-Time Password (OTP) for payment verification is: " + otp +
                    "\n\nPlease use this OTP to complete your payment process. It is valid for the next 5 minutes.\n\nThank you!");

            // Send the email
            mailSender.send(message);
            return true; // Indicate success
        } catch (Exception e) {
            e.printStackTrace(); // Log the error for debugging
            return false; // Indicate failure
        }
    }
    
}

