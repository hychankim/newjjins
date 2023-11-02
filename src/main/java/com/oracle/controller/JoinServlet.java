package com.oracle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracle.dao.MemberDAO;
import com.oracle.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String nickname = request.getParameter("nickname");
		String uid = request.getParameter("uid");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String kkid = request.getParameter("kakao_id");
		String birth = request.getParameter("birth");
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
		int gender = Integer.parseInt(request.getParameter("gender"));
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAA" + pref_subj);
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAA2222" + pref_subj);
		System.out.println(nickname);
		System.out.println(uid);
		System.out.println(pw);
		System.out.println(email);
		System.out.println(kkid);
		System.out.println(birth);
		System.out.println(subs);
		System.out.println(pref_subj);
		System.out.println(pref_press);
		System.out.println(gender);
		
		MemberVO mVo = new MemberVO();
		mVo.setNickname(nickname);
		mVo.setUserid(uid);
		mVo.setPwd(pw);
		mVo.setEmail(email);
		mVo.setSubscription(subs);
		mVo.setPref_subj(pref_subj);
		mVo.setPref_press(pref_press);
		mVo.setBirth(birth);
		mVo.setGender(gender);
		mVo.setKakao_id(kkid);

		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		HttpSession session = request.getSession();
		if (result == 1) {
			session.setAttribute("userid", mVo.getUserid());
			request.setAttribute("message", "회원 가입에 성공했습니다.");
		} else {
			request.setAttribute("message", "회원 가입에 실패했습니다.");
		}
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}
}
