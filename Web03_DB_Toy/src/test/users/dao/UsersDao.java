package test.users.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.users.dto.UsersDto;
import test.util.DbcpBean;

public class UsersDao {
	private String TableName = "guide_users";
	
	private String SQL_DELETE = "";
	private String SQL_UPDATE = "";

	private static UsersDao dao = null;
	
	private UsersDao() {}
	
	public static UsersDao getInstance() { 
		if(dao == null) dao = new UsersDao();
		return dao;
	}
	
	public UsersDto select(String id)
	{
		UsersDto dto = null;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "select id,pwd "
					+ " from " + TableName
					+ " where id = ? ";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, id);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			if (rs.next()) {
				dto = new UsersDto();
				dto.setId(rs.getString("id"));
				System.out.println("아이디");
				System.out.println(dto.getId());
				dto.setPwd(rs.getString("pwd"));
				System.out.println("비밀번호");
				System.out.println(dto.getPwd());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}
	
	public boolean insert(UsersDto dto) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "insert into " + TableName
					+ " (id,pwd) "
					+ " VALUES(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			result = 0;
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (result > 0) {
			return true;
		} else {
			return false;
		}
	}
	
}
