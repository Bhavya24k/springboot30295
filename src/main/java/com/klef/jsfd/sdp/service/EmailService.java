package com.klef.jsfd.sdp.service;

import org.springframework.stereotype.Service;

@Service
public interface EmailService {
    boolean sendOtpEmail(String toEmail, int otp);
}
