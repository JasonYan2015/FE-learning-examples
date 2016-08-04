package com.easy.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy.util.JDBCUtil;


@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doPost");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String sex = request.getParameter("sex");
		String pv = request.getParameter("province");
		//�Ƚϡ�������syso
		
		
		//���ӡ����������ݿ�	
		String sql = "insert into users(id , pw , sex , pv_id) values(? , ?)";
		JDBCUtil.execute(sql , id , pw , sex , pv);
		
		
		
		//��תҳ�浽test_get1.jsp
		//����ת��
		request.getRequestDispatcher("test_get1.jsp").forward(request, response);
		
	}

}