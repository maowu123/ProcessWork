<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.User" %>
<%@page import="com.moban.DaoFactory"%>
<%@page import="com.moban.ITDao"%>
<%@page import="com.moban.ValidateUtil"%>
<%@page import="com.moban.T"%>
<%-- <%@include file="daohang.html" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>基本信息填写</title>
<script type="text/javascript" src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/xueke.js"></script>
<script type="text/javascript" src="../js/jingji.js"></script>
<script type="text/javascript">
	function checkAll(allC){
		//获取所有的选择框
		var checks = document.getElementsByName("zuzhi");
		if(allC.checked == true){
			for(var i= 0;i<checks.length;i++){
				checks[i].disabled=false;
			}	
		}
		else {
			for(var i= 0;i<checks.length;i++){
				checks[i].disabled=true;
			}
		}
		checks[0].disabled=false;
		checks[2].disabled=false;
		checks[5].disabled=false;
		checks[6].disabled=false;
	}
</script>
<script type="text/javascript">
	function addInput(){
		var fdiv=document.getElementById("addInput");
		fdiv.innerHTML+='<div style="float: float;"><input type="text" name="constructionUnit" value="${param.constructionUnit }"/><input type="button" onclick="del(this)" value="删除"/><div>';
	}
	
	function del(obj){
		obj.parentNode.parentNode.removeChild(obj.parentNode);
	}
</script>
<style type="text/css">
body,td,th {
	font-size: 19px;
}
body {
	/* background-image: url(../image/loginbg.jpg); */
	background-color: #D3D3D3;
}
</style>
<script language="javascript">
function xiaochutishi1()
{
	document.getElementById("mm").innerHTML="";   //用户名消除
}
function xiaochutishi2()
{
	document.getElementById("mjh").innerHTML="";  //密码消除
}
function xiaochutishi3()
{
	document.getElementById("mj").innerHTML="";   //确认密码消除
}
function xiaochutishi4()//消除提示的函数
{
	document.getElementById("jh").innerHTML="";   //平台名称消除 
}
function xiaochutishi5()//消除提示的函数
{
	document.getElementById("a").innerHTML="";  //平台编号消除
}
function xiaochutishi6()//消除提示的函数
{
	document.getElementById("b").innerHTML="";	  //平台组织形态
}
function xiaochutishi7()//消除提示的函数
{
	document.getElementById("c").innerHTML="";
}
function xiaochutishi8()//消除提示的函数
{
	document.getElementById("d").innerHTML="";
}
function xiaochutishi9()//消除提示的函数
{
	document.getElementById("e").innerHTML="";
}
function xiaochutishi10()//消除提示的函数
{
	document.getElementById("f").innerHTML="";
}
function xiaochutishi11()//消除提示的函数
{
	document.getElementById("g").innerHTML="";
}
function xiaochutishi12()//消除提示的函数
{
	document.getElementById("h").innerHTML="";
}
function xiaochutishi13()//消除提示的函数
{
	document.getElementById("i").innerHTML="";
}
function xiaochutishi14()//消除提示的函数
{
	document.getElementById("j").innerHTML="";
}
function xiaochutishi15()//消除提示的函数
{
	document.getElementById("k").innerHTML="";
}
function xiaochutishi16()//消除提示的函数
{
	document.getElementById("l").innerHTML="";
}
function xiaochutishi17()//消除提示的函数
{
	document.getElementById("m").innerHTML="";
}

function tishi1()
{
	var s=document.getElementById("ymingcheng").value;
	if(s.length==0)
	{
		document.getElementById("mm").innerHTML="请输入内容";
	}
}
function tishi2()
{
	var s=document.getElementById("daima").value;
	if(s.length==0)
	{
		document.getElementById("mjh").innerHTML="请输入内容";
	}
}
function tishi3()
{
	var s=document.getElementById("yname").value;
	if(s.length==0)
	{
		document.getElementById("mj").innerHTML="请输入内容";
	
	}
}
function tishi4()
{
	var s=document.getElementById("ytel").value;
	if(s.length==0)
	{
		document.getElementById("jh").innerHTML="请输入内容";
	}
}
function tishi5()
{
	var s=document.getElementById("zname").value;
	if(s.length==0)
	{
		document.getElementById("a").innerHTML="请输入内容";
	}
}
function tishi6()
{
	var s=document.getElementById("zyear").value;
	if(s.length==0)
	{
		document.getElementById("b").innerHTML="请输入内容";
	}
}function tishi7()
{
	var s=document.getElementById("zzhicheng").value;
	if(s.length==0)
	{
		document.getElementById("c").innerHTML="请输入内容";
	}
}
function tishi8()
{
	var s=document.getElementById("zzhuanye").value;
	if(s.length==0)
	{
		document.getElementById("d").innerHTML="请输入内容";
	}
}
function tishi9()
{
	var s=document.getElementById("zxueli").value;
	if(s.length==0)
	{
		document.getElementById("e").innerHTML="请输入内容";
	}
}
function tishi10()
{
	var s=document.getElementById("zxuewei").value;
	if(s.length==0)
	{
		document.getElementById("f").innerHTML="请输入内容";
	}
}
function tishi11()
{
	var s=document.getElementById("zphone").value;
	if(s.length==0)
	{
		document.getElementById("g").innerHTML="请输入内容";
	}
	for(i=0;i<s.length;i++)
	{
		if(s.charAt(i)<'0'||s.charAt(i)>'9')
		{
			document.getElementById("g").innerHTML="格式错误";
		}
	}
}
function tishi12()
{
	var s=document.getElementById("ztel").value;
	for(i=0;i<s.length;i++)
	{
		if(s.charAt(i)<'0'||s.charAt(i)>'9')
		{
			document.getElementById("h").innerHTML="电话号码错误";
		}
	}
	if(s.length==0||s.length!=11)
	{
		document.getElementById("h").innerHTML="请重新输入正确内容";
	}
}
function tishi13()
{
	var s=document.getElementById("wemail").value;
	if(s.length==0)
	{
		document.getElementById("i").innerHTML="请输入内容";
	}
}
function tishi14()
{
	var s=document.getElementById("wname").value;
	if(s.length==0)
	{
		document.getElementById("j").innerHTML="请输入内容";
	}
}
function tishi15()
{
	var s=document.getElementById("wangzhi").value;
	if(s.length==0)
	{
		document.getElementById("k").innerHTML="请输入内容";
	}
}
function tishi16()
{
	var s=document.getElementById("tdizhi").value;
	if(s.length==0)
	{
		document.getElementById("l").innerHTML="请输入内容";
	}
}
function tishi17()
{
	var s=document.getElementById("youbian").value;
	if(s.length==0)
	{
		document.getElementById("m").innerHTML="请输入内容";
	}
}

</script>
</head>

<body>
<%User user = (User)session.getAttribute("loginUser");
int id = 37;
//int id=user.getId();
ITDao tDao = DaoFactory.getDaoImpl();
T t = tDao.load(id);
String[] arry = t.getSuozai().split(",");
String[] arry1=t.getJingji().split(",");
String[] arry2=t.getXueke().split(",");
%>
<form method="post" name="form" action="upadte.jsp">
<table border="1" align="center">
  <tr >
    <td width="141" valign="center" ><p align="center" >平台名称 </p></td>
    <td width="381" valign="center" colspan="12" ><p align="center" ><%=user.getPname() %></p></td>
    <td width="128" valign="center" colspan="6" ><p align="center" >平台编号 </p></td>
    <td width="127" valign="center" colspan="4" ><p align="center" ><%=user.getNum() %></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >批准年月 </p></td>
    <td width="223" valign="center" colspan="5" ><p align="center" ><%=user.getYear() %></p></td>
    <td width="114" valign="center" colspan="6" ><p align="center" >批准文号 </p></td>
    <td width="300" valign="center" colspan="11" ><p align="center" ><%=user.getWenhao() %></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >技术领域 </p></td>
    <td width="638" valign="center" colspan="22" ><p align="center" ><%=user.getLingyu() %></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >平台级别 </p></td>
    <td width="291" valign="center" colspan="8" >
    <p >
    <input type="checkbox" name="jibie" value="国家级" checked/>国家级
	<input type="checkbox"  name="jibie" value="省级"/>省级 
	</p>
	</td>
    <td width="157" valign="center" colspan="7" ><p align="center" >所在市县（区） </p></td>
    <td width="188" valign="center" colspan="7" >
    <p align="center" >
    <select id="province" name="suozai">
		  <option><%=arry[0] %></option>
	</select>
	<select id="city" name="suozai">
		  <option><%=arry[1] %></option>
	</select>
	<select id="country" name="suozai">
		  <option><%=arry[2] %></option>
	</select>
    </p>
    </td>
  </tr>
   <tr >
    <td width="141" valign="center" rowspan="2" ><p align="center" >平台组织形态 </p></td>
    <%
        if("内设机构相对独立(无法人资格)".equals(t.getZuzhi())){            
  	 %>
    <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)" checked="checked"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
        }else if("独立法人".equals(t.getZuzhi())){                                   
   	 %>
   	 <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人" checked="checked"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
    	}else if("企业法人".equals(t.getZuzhi())){ 
    %>
    <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled" checked="checked"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
    	}else if("事业法人".equals(t.getZuzhi())){ 
    %>
    <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled" checked="checked"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
    	}else if("社团法人".equals(t.getZuzhi())){ 
    %>
    <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled" checked="checked"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
    	}else if("多单位联合共建".equals(t.getZuzhi())){ 
    %>
     <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建" checked="checked"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设 </p></td>
     <%
    	}else if("依托单位独自建设".equals(t.getZuzhi())){ 
    %>
    <td width="132" valign="center" colspan="3" rowspan="2" ><p ><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)<br />
    </p></td>
    <td width="191" valign="center" colspan="7" rowspan="2" ><p ><input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人 <br />
    <input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人  <input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人<br />
      <input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人 </p></td>
    <td width="314" valign="center" colspan="12" ><p ><input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建   <br />
     <input type="checkbox" name="zuzhi"  value="依托单位独自建设" checked="checked"/>依托单位独自建设 </p></td>
     <%
    	}
    %>
  </tr>
  <tr>
    <td width="196" valign="center" colspan="9" ><p align="center" >京津冀共建 </p></td>
    <td width="117" valign="center" colspan="3" ><p align="center" >
    <%
        if("是".equals(t.getZsex())){            
  	 %>
    <input type="radio" name="jgongjian" value="是" checked="checked"/>是
	<input type="radio" name="jgongjian" value="否"/>否 </p>
	<%
        }else{                                   
   	 %>
   	 <input type="radio"  name="jgongjian" value="是" />是
    	<input type="radio"  name="jgongjian" value="否" checked="checked" />否
   	 <%
    	}
    %>
	</td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >服务的主要 <br />
      国民经济行业 </p></td>
    <td width="638" valign="center" colspan="22" >
    <p >
     <select id="syiji" name="jingji">
		  <option><%=arry1[0] %></option>
	</select>
	<select id="serji" name="jingji">
		  <option><%=arry1[1] %></option>
	</select>
	<select id="ssanji" name="jingji">
		  <option><%=arry1[2] %></option>
	</select>
	</p>
	</td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >所属的主要学科 </p></td>
    <td width="638" valign="center" colspan="22" >
    <p >
     <select id="yiji" name="xueke">
		  <option><%=arry2[0] %></option>
	</select>
	<select id="erji" name="xueke">
		  <option><%=arry2[1] %></option>
	</select>
	<select id="sanji" name="xueke">
		  <option><%=arry2[2] %></option>
	</select>
	</p>
	</td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >依托单位名称 </p></td>
    <td width="283" valign="center" colspan="7" ><p align="center" ><input type="text" name="ymingcheng" id="ymingcheng" onfocus="javascript:xiaochutishi1();" onblur="javascript:tishi1();" value="<%=t.getYmingcheng() %>"/></p></td>
    <td width="192" valign="center" colspan="9" ><p align="center" >依托单位组织机构代码 <br />
      (社会信用代码) </p></td>
    <td width="162" valign="center" colspan="6" ><p align="center" ><input type="text" name="daima" id="daima" onfocus="javascript:xiaochutishi2();" onblur="javascript:tishi2();" value="<%=t.getDaima() %>"/></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >依托单位法人代表姓名 </p></td>
    <td width="283" valign="center" colspan="7" ><p align="center" ><input type="text" name="yname" id="yname" onfocus="javascript:xiaochutishi3();" onblur="javascript:tishi3();" value="<%=t.getYname() %>"/></p></td>
    <td width="192" valign="center" colspan="9" ><p align="center" >办公电话 </p></td>
    <td width="162" valign="center" colspan="6" ><p align="center" ><input type="text" name="ytel" id="ytel" onfocus="javascript:xiaochutishi4();" onblur="javascript:tishi4();" value="<%=t.getYtel() %>"/></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >依托单位类型 </p></td>
    <td width="638" valign="center" colspan="22" id="test">
     <%
        if("企业".equals(t.getYleixing())){           
  		  %>
    <p ><input type="checkbox" name="yleixing" value="企业" checked="checked"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
        }else if("科研机构".equals(t.getYleixing())){                              
   	 %>
   		  <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构" checked="checked"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("高等院校".equals(t.getYleixing())){     
    %>
    <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校" checked="checked"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("检测机构".equals(t.getYleixing())){     
    %>
    <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构" checked="checked"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("医疗机构".equals(t.getYleixing())){     
    %>
    <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构" checked="checked"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("政府机构".equals(t.getYleixing())){     
    %>
     <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构" checked="checked"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("社团组织".equals(t.getYleixing())){     
    %>
    <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织" checked="checked"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
	</p>
	<%
    	}else if("其他".equals(t.getYleixing())){     
    %>
    <p ><input type="checkbox" name="yleixing" value="企业"/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他" checked="checked"/>其他
	</p>
	<%
    	}  
    %>
	</td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >共建单位 </p></td>
    <td width="638" valign="center" colspan="22" ><div id="addInput" style="float: float;">
		<div style="float: float;">
		<input type="text" name="gongjian" value="${param.constructionUnit }"/>
		<input type="button" onclick="del(this)" value="删除"/>
		</div>
		</div>
		<input type="button" onclick="addInput()" value="新增一个"/>
	</td>
  </tr>
  <tr >
    <td width="141" valign="center" rowspan="3" ><p align="center" >平台主任(院长) </p></td>
    <td width="64" valign="center" ><p align="center" >姓名 </p></td>
    <td width="113" valign="center" colspan="3" ><p align="center" ><input type="text" name="zname" id="zname" onfocus="javascript:xiaochutishi5();" onblur="javascript:tishi5();" value="<%=t.getZname() %>"/></p></td>
    <td width="61" valign="center" colspan="2" ><p align="center" >性别 </p></td>
    <td width="79" valign="center" colspan="3" ><p align="center" >
     <%
        if("男".equals(t.getZsex())){            //若是男生，则选中男生按钮
  	%>
  		  <input type="radio" name="zsex" value="男" checked="checked"/>男
    <br />
		<input type="radio" name="zsex" value="女"/>女</p></td>
	<%
        }else{                                    //否则，显示选中女生按钮
   	%>
   	 <input type="radio" name="zsex" value="男"/>男
    <br />
		<input type="radio" name="zsex" value="女" checked="checked"/>女</p></td>
	<%
    	}
    	%>
    <td width="79" valign="center" colspan="4" ><p align="center" >出生 <br />
      年月 </p></td>
    <td width="94" valign="center" colspan="4" ><p align="center" ><input type="text" name="zyear" id="zyear" onfocus="javascript:xiaochutishi6();" onblur="javascript:tishi6();" value="<%=t.getZyear() %>"/></p></td>
    <td width="65" valign="center" colspan="4" ><p align="center" >职称 </p></td>
    <td width="79" valign="center" ><p align="center" ><input type="text" name="zzhicheng" id="zzhicheng" onfocus="javascript:xiaochutishi7();" onblur="javascript:tishi7();" value="<%=t.getZzhicheng() %>"/></p></td>
  </tr>
  <tr >
    <td width="88" valign="center" colspan="2" ><p align="center" >所学专业 </p></td>
    <td width="145" valign="center" colspan="4" ><p align="center" ><input type="text" name="zzhuanye" id="zzhuanye" onfocus="javascript:xiaochutishi8();" onblur="javascript:tishi8();" value="<%=t.getZzhuanye() %>"/></p></td>
    <td width="88" valign="center" colspan="3" ><p align="center" >学历 </p></td>
    <td width="130" valign="center" colspan="6" ><p align="center" ><input type="text" name="zxueli" id="zxueli" onfocus="javascript:xiaochutishi9();" onblur="javascript:tishi9();" value="<%=t.getZxueli() %>"/></p></td>
    <td width="88" valign="center" colspan="5" ><p align="center" >学位 </p></td>
    <td width="106" valign="center" colspan="2" ><p align="center" ><input type="text" name="zxuewei" id="zxuewei" onfocus="javascript:xiaochutishi10();" onblur="javascript:tishi10();" value="<%=t.getZxuewei() %>"/></p></td>
  </tr>
  <tr >
    <td width="88" valign="center" colspan="2" ><p align="center" >办公电话 </p></td>
    <td width="145" valign="center" colspan="4" ><p align="center" ><input type="text" name="zphone" id="zphone" onfocus="javascript:xiaochutishi11();" onblur="javascript:tishi11();" value="<%=t.getZphone() %>"/></p></td>
    <td width="88" valign="center" colspan="3" ><p align="center" >手机 </p></td>
    <td width="130" valign="center" colspan="6" ><p align="center" ><input type="text" name="ztel" id="ztel" onfocus="javascript:xiaochutishi12();" onblur="javascript:tishi12();" value="<%=t.getZtel() %>"/></p></td>
    <td width="88" valign="center" colspan="5" ><p align="center" >E-mail </p></td>
    <td width="106" valign="center" colspan="2" ><p align="center" ><input type="text" name="zemail" id="zemail" onfocus="javascript:xiaochutishi13();" onblur="javascript:tishi13();" value="<%=t.getZemail() %>"/></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >平台网站名称 </p></td>
    <td width="239" valign="center" colspan="6" ><p align="center" ><input type="text" name="wname" id="wname" onfocus="javascript:xiaochutishi14();" onblur="javascript:tishi14();" value="<%=t.getWname() %>"/></p></td>
    <td width="79" valign="center" colspan="3" ><p align="center" >网址 </p></td>
    <td width="319" valign="center" colspan="13" ><p align="center" ><input type="text" name="wangzhi" id="wangzhi" onfocus="javascript:xiaochutishi15();" onblur="javascript:tishi15();"  value="<%=t.getWangzhi() %>"/></p></td>
  </tr>
  <tr >
    <td width="141" valign="center" ><p align="center" >平台通讯地址 </p></td>
    <td width="337" valign="center" colspan="11" ><p align="center" ><input type="text" name="tdizhi" id="tdizhi" onfocus="javascript:xiaochutishi16();" onblur="javascript:tishi16();" value="<%=t.getTdizhi() %>"/></p></td>
    <td width="101" valign="center" colspan="3" ><p align="center" >邮编 </p></td>
    <td width="199" valign="center" colspan="8" ><p align="center" > <input type="text" name="youbian" id="youbian" onfocus="javascript:xiaochutishi17();" onblur="javascript:tishi17();" value="<%=t.getYoubian() %>"/></p></td>
  </tr>
  <tr>
		<td colspan="25" align="center"><button type="submit" style="width:60px;height:35px;" value="提交" >提交</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>