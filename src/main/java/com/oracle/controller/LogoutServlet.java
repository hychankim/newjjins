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

@WebServlet("/logout.do")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
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
		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("index.html");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

	}
}
