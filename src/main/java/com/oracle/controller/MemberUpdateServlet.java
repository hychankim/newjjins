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
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐을 방지
		
		String useridfban = request.getParameter("useridfban");
		String userid = request.getParameter("userid");
		
		if(useridfban != null) {
			MemberDAO mDao = MemberDAO.getInstance();
			MemberVO mVo = mDao.getMember(useridfban);
			request.setAttribute("mVo", mVo);
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("member/memberUpdate.jsp");
			dispatcher.forward(request, response);
		}
		if(userid != null){
		String nickname = request.getParameter("nickname");
		String uid = request.getParameter("uid");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String kkid = request.getParameter("kakao_id");
		//String birth = request.getParameter("birth");
		int subs = Integer.parseInt(request.getParameter("subs"));
		int pref_subj = (request.getParameter("subj0") != null?Integer.parseInt(request.getParameter("subj0")):0) +
				(request.getParameter("subj1") != null?Integer.parseInt(request.getParameter("subj1")):0) + 
				(request.getParameter("subj2") != null?Integer.parseInt(request.getParameter("subj2")):0) + 
				(request.getParameter("subj3") != null?Integer.parseInt(request.getParameter("subj3")):0) +
				(request.getParameter("subj4") != null?Integer.parseInt(request.getParameter("subj4")):0) +
				(request.getParameter("subj5") != null?Integer.parseInt(request.getParameter("subj5")):0) +
				(request.getParameter("subj6") != null?Integer.parseInt(request.getParameter("subj6")):0) +
				(request.getParameter("subj7") != null?Integer.parseInt(request.getParameter("subj7")):0);
		int pref_press = (request.getParameter("press0") != null?Integer.parseInt(request.getParameter("press0")):0) +
				(request.getParameter("press1") != null?Integer.parseInt(request.getParameter("press1")):0) + 
				(request.getParameter("press2") != null?Integer.parseInt(request.getParameter("press2")):0) + 
				(request.getParameter("press3") != null?Integer.parseInt(request.getParameter("press3")):0) +
				(request.getParameter("press4") != null?Integer.parseInt(request.getParameter("press4")):0) +
				(request.getParameter("press5") != null?Integer.parseInt(request.getParameter("press5")):0) +
				(request.getParameter("press6") != null?Integer.parseInt(request.getParameter("press6")):0) +
				(request.getParameter("press7") != null?Integer.parseInt(request.getParameter("press7")):0); 
		//int gender = Integer.parseInt(request.getParameter("gender"));
/*		
		System.out.println(nickname);
		System.out.println(uid);
		System.out.println(pw);
		System.out.println(email);
		System.out.println(kkid);
		//System.out.println(birth);
		System.out.println(subs);
		System.out.println(pref_subj);
		System.out.println(pref_press);
		//System.out.println(gender);
*/		
		MemberVO mVo = new MemberVO();
		mVo.setNickname(nickname);
		mVo.setUserid(uid);
		mVo.setPwd(pw);
		mVo.setEmail(email);
		mVo.setSubscription(subs);
		mVo.setPref_subj(pref_subj);
		mVo.setPref_press(pref_press);
		//mVo.setBirth(birth);
		//mVo.setGender(gender);
		mVo.setKakao_id(kkid);
		
		MemberDAO mDao = MemberDAO.getInstance();    /////////////////
		mDao.updateMember(mVo);
		/*
		String url = "login.do?userid=" + mVo.getUserid();  /////////////////
		//response.sendRedirect("login.do?");
		response.sendRedirect(url); //////////////////////////
		*/

		
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", mVo);
		request.setAttribute("prefSubj", mVo.getPref_subj());
		ContentsDAO cDao = ContentsDAO.getInstance();
		ContentsVO[][] pContVo = cDao.getPrefContents(mVo.getPref_subj());
		request.setAttribute("pContVo", pContVo);
				
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("main_login.jsp");
		dispatcher.forward(request, response);
		} 
	}
}
