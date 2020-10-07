package com.example.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.hello.mypac.Car;
import com.example.hello.mypac.MemberDto;

@SpringBootApplication
public class HelloApplication2 {

	public static void main(String[] args) {
		System.out.println("app이 시작됩니다.");
		ApplicationContext context =  SpringApplication.run(HelloApplication2.class, args);
		
		MemberDto dto = context.getBean(MemberDto.class);
		
		System.out.println(dto.getNum() + "|" + dto.getName()+ "|" +dto.getAddr());
	}
}
