package com.example.helloweb.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.helloweb.member.dto.MemberDto;


//빈이 되려면 레파지토리를 넣어줘야한다.
@Repository
public class MemberDao {

	
	@Autowired
	private SqlSession session;
	
	//회원 목록을 리턴해주는 메소드
	public List<MemberDto> getList(){
		return session.selectList("member.getList");
	}
	
}
