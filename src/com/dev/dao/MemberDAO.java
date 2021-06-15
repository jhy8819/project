package com.dev.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dev.vo.MemberVO;

public class MemberDAO {
	
	private String url; 
	private String user; 
	private String pwd;


	public MemberDAO()
	{
		this.url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC"; 
		this.user = "root";
		this.pwd = "kdw810118";
	}
	
	private static MemberDAO dao = new MemberDAO();
	
	public static MemberDAO getInstance() {
		// TODO Auto-generated method stub
		return dao;
	}
	
	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,pwd);
			
		} catch (Exception e) {
			System.out.print("MDAO:connenct" + e);
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				System.out.print("Pstmt close error" + e);
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				System.out.print("Conn close error" +e);
			}
		}
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) 
	{
		if(rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				System.out.print("rs close error" + e);
			}
		}
		close(conn, pstmt);
	}

	public void memberJoin(MemberVO member) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			pstmt.executeUpdate();					
		} catch (Exception e) {
			System.out.println("error :" +e);
		} finally {
			close(conn,pstmt);
		}
	}

	public boolean login(String id, String passwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try 
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where id = ? and passwd = ?;");
			pstmt.setString(1,id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
			else
				result = false;
		} catch (Exception e) {
			System.out.print("login eror" + e);
		}
		finally
		{
			close(conn,pstmt,rs);
		}
		return result;
	}
	
	
	public MemberVO memberSearch(String id) {
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MemberVO member = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				member = new MemberVO();
				member.setId(rs.getString(1));
				member.setPasswd(rs.getString(2));
				member.setName(rs.getString(3));
				member.setMail(rs.getString(4));
			}
		} catch (Exception e) {
			System.out.print("MSearch error" +e);
		} finally
		{
			close(conn,pstmt,rs);
		}
		return member;
	}
		
	public void memberUpdate(MemberVO member) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update member set passwd=?,name=?,mail=? where id=?");
			pstmt.setString(1, member.getPasswd());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getMail());
			pstmt.setString(4, member.getId());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("error:" + e);
		} finally {
			close(conn,pstmt);
		}
	}
}

	


	
	
	


