package test.myapp;

import java.util.Scanner;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class MainClass01 {
	public static void main(String[] args) {
		String pwd = "acorn1234";
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String result = encoder.encode(pwd);
		
		System.out.println("비밀번호 입력 : ");
		String inputString = new Scanner(System.in).nextLine();
		Boolean isMatch = BCrypt.checkpw(inputString, result);
	
		System.out.println(isMatch);
	}
}
