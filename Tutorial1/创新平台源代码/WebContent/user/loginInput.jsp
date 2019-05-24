<%@page import="com.moban.UserException"%>
<%@page import="com.moban.UserDaoImpl" %>
<%@page import="com.moban.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" type="text/javascript"> 

			window.location.href="../ccps_11_lanseshuziOA/main.jsp"; 


</script>
<%
	//接收客户端传递过来的参数
	UserDaoImpl userDao=new UserDaoImpl();
	User user=new User();
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	user=userDao.load(username);
	session.setAttribute("loginUser", user);
	if(username==null || "".equals(username.trim())){
		request.setAttribute("error", "请输入用户名");//设置error属性,属性值为“请输入用户名”
	
%>
	<jsp:forward page="11111.html"></jsp:forward>   
<%	
	}
	if(user==null||(user!=null&&!user.getPassword().contentEquals(password)))
	{
		request.setAttribute("error", "输入信息错误");
%>
	<jsp:forward page="11111.html"></jsp:forward>   
<%
	}
%>
</html>