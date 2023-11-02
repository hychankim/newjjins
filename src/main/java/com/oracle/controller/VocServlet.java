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
import com.oracle.dao.VocDAO;
import com.oracle.dto.VocVO;

/**
 * Servlet implementation class VocServlet
 */
@WebServlet("/voc.do")
public class VocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VocServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
		
		request.setAttribute("mVo", mVo);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("member/voc.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐을 방지
		
		String userid = request.getParameter("userid");
		String voc = request.getParameter("voc");

		VocVO vVo = new VocVO();
		vVo.setUv_usid(userid);
		vVo.setVoc(voc);
		VocDAO vDao = VocDAO.getInstance();
		vDao.insertVoc(vVo);

		RequestDispatcher dispatcher = request
				.getRequestDispatcher("member/vocRsp.jsp");
		dispatcher.forward(request, response);
	}
}
