package test.todo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.member.dto.MemberDto;
import test.todo.dto.TodoDto;
import test.util.DbcpBean;

public class TodoDao {

	private static TodoDao dao = null;
	private TodoDao() {}
	
	public static TodoDao getInstance() {
		if(dao == null) dao = new TodoDao();
		return dao;
	}
	
	public boolean insert(String content) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="insert into todo "
					+ "values(memo_seq.nextval,'" + content + "',sysdate)"; 
			
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto = new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setWork(rs.getString("work"));
				dto.setRegdate(rs.getString("regdate"));
			}
			result = true;
		}
		catch(Exception e) {
			result = false;
			e.printStackTrace();
		}
		finally {
			try {
				if( rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public boolean delete(int num) {
		boolean result = false;
		System.out.println(num);
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="delete from todo where num = "
					+ num; 
			pstmt = conn.prepareStatement(sql);
			if(pstmt.executeUpdate() != 0)
			{
				result = true;
			}
			System.out.println("삭제완료!");
		}
		catch(Exception e) {
			result = false;
			e.printStackTrace();
		}
		finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//회원목록을 리턴해주는 메소드
	public List<TodoDto> getList(){
		List<TodoDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="SELECT num,work,TO_CHAR(regdate, 'YY\" 년 \"MM\" 월 \"DD\" 일 \"') as regdate" 
					+ " FROM todo"
					+ " ORDER BY num ASC";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto = new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setWork(rs.getString("work"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if( rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
}
