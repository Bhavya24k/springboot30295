package com.klef.jsfd.sdp.repository;

import org.springframework.stereotype.Service;

@Service
public interface PaymentService {
	 boolean processPayment(String cardNumber, String expiryDate, String cvv, String amount);

}
