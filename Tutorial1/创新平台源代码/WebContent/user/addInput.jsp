<%@page import="com.moban.ValidateUtil"%>
<%@page import="com.moban.UserException"%>
<%@page import="com.moban.UserDaoImpl"%>
<%@page import="com.moban.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	//接收客户端传递过来的参数
	String sleixing=null;
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String qpassword = request.getParameter("qpassword");
	String pname = request.getParameter("pname");
	String num = request.getParameter("num");
	String[] leixing = request.getParameterValues("leixing");   
    if(leixing.length>0)   
        {   
            for(int i=0;i<leixing.length;i++)   
            {     
                sleixing=sleixing+leixing+",";     
            }   
            sleixing=sleixing.substring(0,sleixing.length()-1);//去掉SID中的最后一个逗号     
        }   
	String year = request.getParameter("year");
	String wenhao = request.getParameter("wenhao");
	String lingyu = request.getParameter("lingyu");
	String yituo = request.getParameter("yituo");
	String guanli = request.getParameter("guanli");
	String tname = request.getParameter("tname");
	String bumen = request.getParameter("bumen");
	String tel = request.getParameter("tel");
	String phone = request.getParameter("phone");
	String dizhi = request.getParameter("dizhi");
	String time = request.getParameter("time");
	boolean validate = ValidateUtil.validateNull(request, new String[]{"username","password","qpassword","pname","leixing","year",
			"wenhao","lingyu","yituo","guanli","tname","bumen","tel","phone","dizhi","time"});
	if(!validate){
%>
	<jsp:forward page="info_change.html"></jsp:forward>
<%
	}
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	user.setQpassword(qpassword);
	user.setPname(pname);
	user.setNum(num);
	user.setLeixing(sleixing);
	user.setYear(year);
	user.setWenhao(wenhao);
	user.setLingyu(lingyu);
	user.setYituo(yituo);
	user.setGuanli(guanli);
	user.setTname(tname);
	user.setBumen(bumen);
	user.setTel(tel);
	user.setPhone(phone);
	user.setDizhi(dizhi);
	user.setTime(time);
	UserDaoImpl userDao = new UserDaoImpl();
	try{
		
	userDao.add(user);
	//重定向
	 response.sendRedirect("11111.html");
%>

	
	
<%
	}catch(UserException e){
%>
	<h2 style="color:red ; font-size:50px">发生错误 : <%=e.getMessage() %></h2>
	<%
	}
	%>
</html>