package com.user2.service;

import java.sql.*;
import java.util.ArrayList;

import com.user2.domain.*;
import com.user2.util.*;
import com.user2.domain.*;

public class userservice {
	public boolean checkuser(Users user){
		boolean istrue=false;
		String uname = user.getName();
		String upass = user.getPassword();
		String sql = "select * from users where name='"+uname+"' and password='"+upass+"'";
		sqlHelper sqlhelper = new sqlHelper();
		ResultSet rs = sqlhelper.search(sql);
		if(rs!=null){
			try {
				if(rs.next()){
					istrue=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				sqlhelper.close(rs, sqlHelper.getPs(), sqlHelper.getConn());
			}
		}
		return istrue;
	}
	public ArrayList<Users> userlist(String uname){
		
		sqlHelper sqlhelper = new sqlHelper();
		ArrayList<Users> a=new ArrayList<Users>();
		String sql="";
		if(uname==""){
			sql="select * from users";
		}
		else{
			sql="select * from users where name='%"+uname+"%'";
		}
		ResultSet rs = sqlhelper.search(sql);
		if(rs!=null){
			try {
				while(rs.next()){
					Users user=new Users();
					user.setId(rs.getString(1));
					user.setName(rs.getString(2));
					user.setPassword(rs.getString(3));
					user.setCreatetime(rs.getString(4));
					user.setCreateuser(rs.getString(5));
					user.setModifytime(rs.getString(6));
					user.setModifyuser(rs.getString(7));
					a.add(user);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				sqlhelper.close(rs, sqlHelper.getPs(), sqlHelper.getConn());
			}
		}
		return a;
	}
}
