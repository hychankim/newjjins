package com.oracle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracle.dao.ContentsDAO;
import com.oracle.dto.ContentsVO;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/main.do")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		HttpSession session = request.getSession();

		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		if(cookies != null){
			for(int i=0; i < cookies.length ; i++){
//				if(cookies[i].getName().equals("loginUser")){
					cookie = cookies[i];
					cookie.setMaxAge(0);
//					cookie = null;
					response.addCookie(cookie);
//				}
			}
		}
		
		session.removeAttribute("loginUser");
		session.invalidate();
		
		
		
		
		ContentsDAO cDao = ContentsDAO.getInstance();
		ContentsVO[] cVo = cDao.getContents(null);
		request.setAttribute("rowSize", cVo[0].getTotal_rowsize());
		request.setAttribute("cVo", cVo);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}