package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class SearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=(String)request.getSession().getAttribute("id");
		
		
		MemberService service = MemberService.getInstance();
		MemberVO member = service.memberSearch(id);
		
		request.setAttribute("member", member);
		HttpUtil.forward(request, response, "/update.jsp");
		
	}

}
