package com.user2.util;

import java.sql.*;

public class sqlHelper {
	//定义变量,mysql数据库用户名root,密码：1234
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String durl = "jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT";
	private static String dname = "root";
	private static String dpass = "1234";
	
	//定义
	private static Connection conn = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//建立连接
	private static Connection getConnection(){
		try {
			conn = DriverManager.getConnection(durl, dname, dpass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	//查询
	public  ResultSet search(String sql){
		//获取连接
		conn = getConnection();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void close(ResultSet rs,PreparedStatement ps,Connection conn){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		rs = null;
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		ps = null;
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		conn = null;
	}
	public static Connection getConn() {
		return conn;
	}
	public static void setConn(Connection conn) {
		sqlHelper.conn = conn;
	}
	public static PreparedStatement getPs() {
		return ps;
	}
	public static void setPs(PreparedStatement ps) {
		sqlHelper.ps = ps;
	}
	public static ResultSet getRs() {
		return rs;
	}
	public static void setRs(ResultSet rs) {
		sqlHelper.rs = rs;
	}
	
}
