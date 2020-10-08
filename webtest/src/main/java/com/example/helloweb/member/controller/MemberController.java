package com.example.helloweb.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.helloweb.member.dao.MemberDao;
import com.example.helloweb.member.dto.MemberDto;

@Controller
public class MemberController {

	@Autowired
	private MemberDao dao;
	
	//리퀘스트 매핑과 동일하다.
	@GetMapping("/member/list")
	public ModelAndView list(ModelAndView mView) {
		
		//회원 목록을 얻어와서
		List<MemberDto> list = dao.getList();
		
		//ModelAndView 객체에 담고
		mView.addObject("list",list);
		//view page의 정보도 담고
		mView.setViewName("member/list");
		//modelandview 개체를 리턴해준다.
		return mView;
	}
}
