package com.user2.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.user2.service.*;
import com.user2.domain.*;

/**
 * Servlet implementation class logincl
 */
@WebServlet("/logincl")
public class logincl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincl() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户名和密码
		String uname="";
		String upass="";
		uname=request.getParameter("uname").trim();
		upass=request.getParameter("upass").trim();
		Users user = new Users();
		user.setName(uname);
		user.setPassword(upass);
		if(uname=="" || uname.length()==0){
			request.setAttribute("unamemsg", "用户名不能为空！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(upass=="" || upass.length()==0){
			request.setAttribute("upassmsg", "密码不能为空！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			userservice us = new userservice();
			if(us.checkuser(user)){
				request.getRequestDispatcher("userlist.jsp").forward(request, response);
			}else{
				request.setAttribute("checkmsg", "用户名或者密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
