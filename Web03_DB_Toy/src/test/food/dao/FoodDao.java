package test.food.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import test.food.dto.FoodDto;
import test.util.DbcpBean;

public class FoodDao {

	private static FoodDao dao = null;
	private FoodDao() {}
	
	private String id = "";
	private String tableName;
	private String seqName;
	
	
	public static FoodDao getInstance() {
		if(dao == null) dao = new FoodDao();
		return dao;
	}
	
	public void setId(String id) {
		this.id = id;
		tableName = id + "_food";
		seqName = tableName + "_seq";
	}
	public String getId() {
		return this.id;
	}
	
	
	public boolean insert(FoodDto dto) {
		int flag = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new DbcpBean().getConn();
			System.out.println(seqName);
			String sql = "insert int " + tableName
					+ " (num, name,addr,menu,price,grade,content) "
					+ " values(" + seqName + ".nextval ,? ,? ,? ,? ,? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setString(3, dto.getMenu());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setInt(5, dto.getGrade());
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
