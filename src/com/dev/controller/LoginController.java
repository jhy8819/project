package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.service.MemberService;



public class LoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		MemberService service = MemberService.getInstance();
		boolean result = service.login(id,passwd);
		String path = null;
		if(result)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path="/index.jsp";
		}
		else
		{
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호를 확인하세요.');location.href='login.jsp';</script>");
			out.flush();
			path="/login.jsp";
		}
		HttpUtil.forward(request, response, path);
		
		

	}

}
