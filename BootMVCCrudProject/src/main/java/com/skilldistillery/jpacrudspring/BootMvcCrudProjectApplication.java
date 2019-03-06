package com.skilldistillery.jpacrudspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpacrudproject")
public class BootMvcCrudProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMvcCrudProjectApplication.class, args);
	}

}
