package com.example.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.hello.mypac.Car;

@SpringBootApplication
public class HelloApplication {

	public static void main(String[] args) {
		System.out.println("app이 시작됩니다.");
		ApplicationContext context =  SpringApplication.run(HelloApplication.class, args);
		Car car1 = context.getBean(Car.class);
		Car car2 = (Car)context.getBean("myCar");
		car1.drive();
		car2.drive();
		//참조값 비교
		System.out.println("car1 == car2 : " + (car1==car2));
		//참조값이 트루이다. 참조값은 왜 동일한가?????싱글톤이다.
		
	}

}
