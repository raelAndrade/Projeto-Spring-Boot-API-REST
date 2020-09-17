package br.com.alura.forum.resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldResource {
	
	@RequestMapping("/")
	public String hello() {
		return "Hello";
		
	}

}
