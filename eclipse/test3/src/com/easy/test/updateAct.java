package com.easy.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy.util.JDBCUtil;

/**
 * Servlet implementation class updateAct
 */
@WebServlet("/updateAct")
public class updateAct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String score = request.getParameter("score");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
		
		String sql = "update customerno set name = ?,score = ?,phone = ?,sex = ?  where id = ?";
		JDBCUtil.execute(sql, name , score , phone , sex , id);
		
		request.getRequestDispatcher("toUpdate.jsp").forward(request, response);
	}

}
