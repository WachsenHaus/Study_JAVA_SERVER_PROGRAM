package com.example.helloweb;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
	
	//request mapping(value="/",method="requestMethod.get)
	//@PostMapping
	@GetMapping("/")
	public String home(HttpServletRequest request)
	{
		List<String> notice = new ArrayList<>();
		notice.add("가을 입니다.");
		notice.add("감기조심하세요.");
		notice.add("어쩌구....");
		request.setAttribute("notice", notice);
		return "home";
	}
}
