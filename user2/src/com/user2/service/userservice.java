package com.user2.service;

import java.sql.*;
import com.user2.domain.*;
import com.user2.util.*;

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
}
