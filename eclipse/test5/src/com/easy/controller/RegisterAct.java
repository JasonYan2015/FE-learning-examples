package com.easy.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.easy.util.JDBCUtil;


@WebServlet("/RegisterAct")
public class RegisterAct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterAct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String sex = request.getParameter("sex");
		String pv = request.getParameter("pv");
		
		String sql = "insert into users values(? , ? , ? , ?)";
		JDBCUtil.execute(sql, id ,pw ,sex ,pv);
		
		request.getRequestDispatcher("toRegister.jsp").forward(request, response);
	}

}
