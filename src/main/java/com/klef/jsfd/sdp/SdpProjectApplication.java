package com.klef.jsfd.sdp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.klef.jsfd.sdp")
public class SdpProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SdpProjectApplication.class, args);
		System.out.println("Spring Boot Project Running Successfully ....");
	}

}
