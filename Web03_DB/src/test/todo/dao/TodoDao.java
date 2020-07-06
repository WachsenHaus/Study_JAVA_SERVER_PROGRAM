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
	
	public boolean update()
	{
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		}
		catch(Exception e) {
			result = 0;
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
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
	public boolean  insert(String content) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="insert into todo "
					+ "values(memo_seq.nextval,'" + content + "',sysdate)"; 
			
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		}
		catch(Exception e) {
			result = 0;
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
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean delete(int num) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="delete from todo where num = "
					+ num; 
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		}
		catch(Exception e) {
			result = 0;
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
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}
	
	//회원목록을 리턴해주는 메소드
	public List<TodoDto> getList(){
		List<TodoDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="SELECT num,work,TO_CHAR(regdate, 'YY\"년\"MM\"월\"DD\"일\"HH24\"시\"MI\"분\"') as regdate" 
					+ " FROM todo"
					+ " ORDER BY num ASC";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto = new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setContent(rs.getString("work"));
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
