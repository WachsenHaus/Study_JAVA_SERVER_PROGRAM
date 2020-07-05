package test.food.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.food.dto.FoodDto;
import test.users.dto.UsersDto;
import test.util.DbcpBean;

public class FoodDao {

	private static FoodDao dao = null;
	private FoodDao() {}
	
	private String id = "";
	private String tableName;
	private String seqName;
	
	public boolean delete(int num)
	{
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "delete from " + tableName
					+ " where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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
	
	
	public boolean update(FoodDto dto) {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			String sql="update " + tableName
					+ " set name=?, addr=?, menu=?, price=?, grade=?, content=? "
					+ " where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setString(3, dto.getMenu());
			pstmt.setDouble(4, dto.getPrice());
			pstmt.setDouble(5, dto.getGrade());
			pstmt.setString(6, dto.getContent());
			pstmt.setInt(7, dto.getNum());
			flag = pstmt.executeUpdate();
		}
		catch(Exception e) {
			flag = 0;
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
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
	
	public static FoodDao getInstance() {
		if(dao == null) dao = new FoodDao();
		return dao;
	}
	
	public void setId(String id) {
		System.out.println("아이디셋팅 : " + id);
		this.id = id;
		tableName = id + "_food";
		seqName = tableName + "_seq";
	}
	public String getId() {
		return this.id;
	}
	public FoodDto select(int mid) {
		FoodDto dto = null;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			System.out.println("select의 아이디는 : " + mid);
			//실행할 sql 문 준비하기
			String sql = "select num,name,addr,menu,price,grade,content"
					+ " from " + tableName
					+ " where num = ? ";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setInt(1, mid);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			if (rs.next()) {
				dto = new FoodDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setMenu(rs.getString("menu"));
				dto.setPrice(rs.getDouble("price"));
				dto.setGrade(rs.getDouble("grade"));
				dto.setContent(rs.getString("content"));
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
	public List<FoodDto> getList(){
		List<FoodDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn=new DbcpBean().getConn();
			String sql="SELECT num,name,addr,menu,price,grade,content"
					+ " FROM "+ tableName;
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				FoodDto dto=new FoodDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setMenu(rs.getString("menu"));
				dto.setPrice(rs.getDouble("price"));
				dto.setGrade(rs.getDouble("grade"));
				dto.setContent(rs.getString("content"));
				list.add(dto);
			}
		}catch(Exception e) {
			System.out.println("으음?");
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		return list;
	}
	
	
	public boolean insert(FoodDto dto) {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			System.out.println("테이블이름" +tableName);
			System.out.println("시퀀스이름" +seqName);
			String sql = "insert into " + tableName
					+ " (num, name,addr,menu,price,grade,content) "
					+ " values(" + seqName + ".nextval ,? ,? ,? ,? ,? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setString(3, dto.getMenu());
			pstmt.setDouble(4, dto.getPrice());
			pstmt.setDouble(5, dto.getGrade());
			pstmt.setString(6, dto.getContent());
			flag = pstmt.executeUpdate();
			
		} catch (Exception e) {
			flag = 0;
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
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	public boolean commit() {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new DbcpBean().getConn();
			System.out.println("커밋");
			String sql = "commit";
			pstmt = conn.prepareStatement(sql);
			flag = pstmt.executeUpdate();
			System.out.println("커밋플래그" + flag);
		} catch (Exception e) {
			flag = 0;
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
		if (flag >= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean deleteSeq() {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new DbcpBean().getConn();
			System.out.println("시퀀스삭제" + seqName);
			String sql = "drop sequence " + seqName;
			pstmt = conn.prepareStatement(sql);
			flag = pstmt.executeUpdate();
			System.out.println("시퀀스플래그" + flag);
		} catch (Exception e) {
			flag = 0;
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
		if (flag >= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean createSeq()
	{
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new DbcpBean().getConn();
			System.out.println("시퀀스생성" + seqName);
			String sql = "create sequence " + seqName
					+ " increment by 1 ";
			pstmt = conn.prepareStatement(sql);
			flag = pstmt.executeUpdate();
			System.out.println("시퀀스플래그" + flag);
		} catch (Exception e) {
			flag = 0;
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
		if (flag >= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean deleteTable() {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = new DbcpBean().getConn();
			System.out.println("테이블삭제" + tableName);
			String sql = "drop table " + tableName;
			pstmt = conn.prepareStatement(sql);
			flag = pstmt.executeUpdate();
			System.out.println("테이블플래그" + flag);
		} catch (Exception e) {
			flag = 0;
			System.out.println("테이블삭제 오류");
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
		if (flag >= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean createTable() {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			System.out.println("테이블생성" + flag);
			String sql = "create table " + tableName
					+ " (num number primary key not null, name varchar2(30), addr varchar2(50), "
					+ " menu varchar2(50), price number, grade number, content varchar2(500))";
			pstmt = conn.prepareStatement(sql);
			flag = pstmt.executeUpdate();
			System.out.println("테이블플래그" + flag);
		} catch (Exception e) {
			System.out.println("테이블삭제 오류");
			flag = 0;
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
		if (flag >= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	
}
