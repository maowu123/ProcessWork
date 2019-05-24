<%@page import="com.moban.ValidateUtil"%>
<%@page import="com.moban.TException"%>
<%@page import="com.moban.TDaoImpl"%>
<%@page import="com.moban.T"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	//接收客户端传递过来的参数
	request.setCharacterEncoding("UTF-8");
	String sjibie="";
	String szuzhi="";
	String syleixing="";
	String ssuozai="";
	String sgongjian="";
	String sjingji="";
	String sxueke="";
	String yname = request.getParameter("yname");
	String daima = request.getParameter("daima");
	String ymingcheng = request.getParameter("ymingcheng");
	String ytel = request.getParameter("ytel");
	String[] yleixing = request.getParameterValues("yleixing");  
	String zname = request.getParameter("zname");
	String zsex = request.getParameter("zsex");
	String zyear = request.getParameter("zyear");
	String zzhicheng = request.getParameter("zzhicheng");
	String zzhuanye = request.getParameter("zzhuanye");
	String zxuewei = request.getParameter("zxuewei");
	String zxueli = request.getParameter("zxueli");
	String zphone = request.getParameter("zphone");
	String ztel = request.getParameter("ztel");
	String zemail=request.getParameter("zemail");
	String wname = request.getParameter("wname");
	String wangzhi = request.getParameter("wangzhi");
	String tdizhi = request.getParameter("tdizhi");
	String youbian = request.getParameter("youbian");
	String[] jibie = (String[])request.getParameterValues("jibie");  
	//String gongjian=request.getParameter("gongjian");
	String[] gongjian = (String[])request.getParameterValues("gongjian");
	String[] zuzhi = (String[]) request.getParameterValues("zuzhi");  
	String jgongjian=request.getParameter("jgongjian");
	String[] suozai = (String[]) request.getParameterValues("suozai"); 
	String[] jingji = (String[]) request.getParameterValues("jingji"); 
	String[] xueke = (String[]) request.getParameterValues("xueke"); 
	if(gongjian.length>0)   
    {   
        for(int i=0;i<gongjian.length;i++)   
        {     
            sgongjian=sgongjian+gongjian[i]+",";     
        }   
        sgongjian=sgongjian.substring(0,sgongjian.length()-1);//去掉SID中的最后一个逗号     
    }  
	if(jibie.length>0)   
    {   
        for(int i=0;i<jibie.length;i++)   
        {     
            sjibie=sjibie+jibie[i]+",";     
        }   
        sjibie=sjibie.substring(0,sjibie.length()-1);//去掉SID中的最后一个逗号     
    }  
	if(zuzhi.length>0)   
    {   
        for(int i=0;i<zuzhi.length;i++)   
        {     
            szuzhi=szuzhi+zuzhi[i]+",";     
        }   
        szuzhi=szuzhi.substring(0,szuzhi.length()-1);//去掉SID中的最后一个逗号     
    }   
	if(yleixing.length>0)   
    {   
        for(int i=0;i<yleixing.length;i++)   
        {     
            syleixing=syleixing+yleixing[i]+",";     
        }   
        syleixing=syleixing.substring(0,syleixing.length()-1);//去掉SID中的最后一个逗号     
    }  
	if(suozai.length>0)   
    {   
        for(int i=0;i<suozai.length;i++)   
        {     
            ssuozai=ssuozai+suozai[i]+",";     
        }   
        ssuozai=ssuozai.substring(0,ssuozai.length()-1);//去掉SID中的最后一个逗号     
    } 
	if(jingji.length>0)   
    {   
        for(int i=0;i<jingji.length;i++)   
        {     
            sjingji=sjingji+jingji[i]+",";     
        }   
        sjingji=sjingji.substring(0,sjingji.length()-1);//去掉SID中的最后一个逗号     
    } 
	if(xueke.length>0)   
    {   
        for(int i=0;i<xueke.length;i++)   
        {     
            sxueke=sxueke+xueke[i]+",";     
        }   
        sxueke=sxueke.substring(0,sxueke.length()-1);//去掉SID中的最后一个逗号     
    }
	boolean validate = ValidateUtil.validateNull(request, new String[]{"jibie","suozai","zuzhi","jgongjian","jingji","xueke","ymingcheng","daima","yname",
			"ytel","yleixing","gongjian","zname","zsex","zyear","zzhicheng","zzhuanye","zxueli","zxuewei","zphone","ztel","zemail","wname","wangzhi","tdizhi","youbian"});
	if(!validate){
%>
	<jsp:forward page="../ccps_11_lanseshuziOA/form.jsp"></jsp:forward>
<%
	}
	System.out.println("平台级别"+sjibie);
	System.out.println("所在市县区"+ssuozai);
	System.out.println("平台组织形态"+szuzhi);
	System.out.println("京津冀共建"+jgongjian);
	System.out.println("经济"+sjingji);
	System.out.println("学科"+sxueke);
	System.out.println("依托单位名称"+ymingcheng);
	System.out.println("依托单位组织机构代码"+daima);
	System.out.println("依托单位电话"+yname);
	System.out.println("依托单位电话"+ytel);
	System.out.println("依托单位类型"+syleixing);
	System.out.println("共建单位"+sgongjian);
	System.out.println("主任姓名"+zname);
	System.out.println("主任性别"+zsex);
	System.out.println("主任出生年月"+zyear);
	System.out.println("主任职称"+zzhicheng);
	System.out.println("主任专业"+zzhuanye);
	System.out.println("主任学历"+zxueli);
	System.out.println("主任学位"+zxuewei);
	System.out.println("主任电话"+zphone);
	System.out.println("主任手机"+ztel);
	System.out.println("E-mail"+zemail);
	System.out.println("网站名称"+wname);
	System.out.println("网址"+wangzhi);
	System.out.println("通讯地址"+tdizhi);
	System.out.println("邮编"+youbian);
	
	T t = new T();
	t.setJibie(sjibie);
	t.setSuozai(ssuozai);
	t.setZuzhi(szuzhi);
	t.setJgongjian(jgongjian);
	t.setJingji(sjingji);
	t.setXueke(sxueke);
	t.setYmingcheng(ymingcheng);
	t.setDaima(daima);
	t.setYname(yname);
	t.setYtel(ytel);
	t.setYleixing(syleixing);
	t.setGongjian(sgongjian);
	t.setZname(zname);
	t.setZsex(zsex);
	t.setZyear(zyear);
	t.setZzhicheng(zzhicheng);
	t.setZzhuanye(zzhuanye);
	t.setZxueli(zxueli);
	t.setZxuewei(zxuewei);
	t.setZphone(zphone);
	t.setZtel(ztel);
	t.setZemail(zemail);
	t.setWname(wname);
	t.setWangzhi(wangzhi);
	t.setTdizhi(tdizhi);
	t.setYoubian(youbian);
	session.setAttribute("loginT", t);
	TDaoImpl tDao = new TDaoImpl();
	try{
		
	tDao.add(t);
	//重定向
	/* response.sendRedirect("list.jsp"); */
%>

	
	
<%
	}catch(TException e){
%>
	<h2 style="color:red ; font-size:50px">发生错误 : <%=e.getMessage() %></h2>
	<%
	}
	%>
</html>