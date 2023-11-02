package com.oracle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracle.dao.ContentsDAO;
import com.oracle.dao.MemberDAO;
import com.oracle.dto.ContentsVO;
import com.oracle.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		HttpSession session = request.getSession();

		if (session.getAttribute("loginUser") != null) {// 이미 로그인 된 사용자이면
			//Object obj = session.getAttribute("loginUser");  /////
			//MemberVO mVo = (MemberVO)obj;  ///////
			//session.setAttribute("mVo",  mVo); //////
			String userid = request.getParameter("userid");
			MemberDAO mDao = MemberDAO.getInstance();
			
			MemberVO mVo = (MemberVO)session.getAttribute("loginUser");
			//MemberVO mVo = mDao.getMember(userid);

			request.setAttribute("prefSubj", mVo.getPref_subj());
			ContentsDAO cDao = ContentsDAO.getInstance();
			ContentsVO[][] pContVo = cDao.getPrefContents(mVo.getPref_subj());
			request.setAttribute("pContVo", pContVo);
			url = "main_login.jsp"; // 메인 페이지로 이동한다.
			//url = "mainlogin.do"; //////
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		String userid = request.getParameter("uid");
		String pwd = request.getParameter("pw");
		MemberDAO mDao = MemberDAO.getInstance();;
		int result = mDao.userCheck(userid, pwd);
		if (result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			request.setAttribute("prefSubj", mVo.getPref_subj());
			request.setAttribute("message", "로그인에 성공했습니다.");
			ContentsDAO cDao = ContentsDAO.getInstance();
			ContentsVO[][] pContVo = cDao.getPrefContents(mVo.getPref_subj());
			request.setAttribute("pContVo", pContVo);
			url = "main_login.jsp";
			//url = "mainlogin.do"; //////
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if (result == -1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
