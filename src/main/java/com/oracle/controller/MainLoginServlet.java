package com.oracle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.dao.ContentsDAO;
import com.oracle.dto.ContentsVO;
import com.oracle.dao.MemberDAO;
import com.oracle.dto.MemberVO;

/**
 * Servlet implementation class MainLoginServlet
 */
@WebServlet("/mainlogin.do")
public class MainLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		request.setAttribute("prefSubj", mVo.getPref_subj());
		ContentsDAO cDao = ContentsDAO.getInstance();
		ContentsVO[][] pContVo = cDao.getPrefContents(mVo.getPref_subj());
		request.setAttribute("pContVo", pContVo);
		//ContentsDAO cDao = ContentsDAO.getInstance();
		//ContentsVO[] cVo = cDao.getContents(null);
		//request.setAttribute("rowSize", cVo[0].getTotal_rowsize());
		//request.setAttribute("cVo", cVo);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("main_login.jsp");
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



