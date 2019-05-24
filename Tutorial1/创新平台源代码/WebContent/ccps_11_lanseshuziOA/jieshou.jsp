<%@page import="com.moban.User"%>
<%@page import="com.moban.IUserDao"%>
<%@page import="com.moban.ValidateUtil"%>
<%@page import="com.moban.UserDaoImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//获取客户端传递过来的参数
	User user = (User)session.getAttribute("loginUser"); 
	int id = user.getId();
	String password = request.getParameter("password");
	String username = request.getParameter("username");
	
	boolean validate = ValidateUtil.validateNull(request, new String[]{"username","password"});
	if(!validate){
%>	
	<jsp:forward page="xianshi.jsp"></jsp:forward>	
<%
	}
	IUserDao userDao = new UserDaoImpl();
	User user1 = userDao.load(id);
	user1.setUsername(username);
	user1.setPassword(password);
	
	userDao.update(user1);
	
%>