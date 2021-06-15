package com.dev.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	String charset = null;
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
		list = new HashMap<String, Controller>();
		list.put("/join.do", new JoinController());
		list.put("/login.do", new LoginController());
		list.put("/update.do", new UpdateController());
		list.put("/search.do", new SearchController());
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String url = req.getRequestURI();
		String contextPath = req.getContextPath();
		String path = url.substring(contextPath.length());
		
		Controller cont = list.get(path);
		cont.execute(req, resp);
		
	}
}
