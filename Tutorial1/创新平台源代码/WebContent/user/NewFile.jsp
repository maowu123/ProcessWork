<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>基本信息填写</title>
<script type="text/javascript" src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script>
$(document).ready(function(){
    $('#test').find('input[type=checkbox]').bind('click', function(){
        $('#test').find('input[type=checkbox]').not(this).attr("checked", false);
    });
});
$(document).ready(function(){
    $('#teat').find('input[type=checkbox]').bind('click', function(){
        $('#teat').find('input[type=checkbox]').not(this).attr("checked", false);
    });
});
</script>
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
		checks[1].disabled=false;
		checks[5].disabled=false;
		checks[6].disabled=false;
	}
</script>
<script type="text/javascript">
	function addInput(){
		var fdiv=document.getElementById("addInput");
		fdiv.innerHTML+='<div style="float: float;"><input type="text" name="gongjian" value="${param.constructionUnit }"/><input type="button" onclick="del(this)" value="删除"/><div>';
	}
	
	function del(obj){
		obj.parentNode.parentNode.removeChild(obj.parentNode);
	}
</script>
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
<%User user = (User)session.getAttribute("loginUser"); %>
<form method="post" name="form" action="tianxieInput.jsp">
<table align="center" width="800">
	<tr>
		<td>平台名称</td>
		<td><%=user.getPname() %></td>
		<td></td>
		<td>平台编号</td>
		<td><%=user.getNum() %></td>
	</tr>
	<tr>
		<td>批准年月</td>
		<td><%=user.getYear() %></td>
		<td></td>
		<td>批准文号</td>
		<td><%=user.getWenhao() %></td>
	</tr>
	<tr>
		<td>技术领域</td>
		<td><%=user.getLingyu() %></td>
	</tr>
	<tr>
		<td>平台级别</td>
		<td><input type="checkbox" name="jibie" value="国家级" checked value="user.getJibie();"/>国家级
			<input type="checkbox"  name="jibie" value="省级"/>省级
		</td>
		<td></td>
		<td>所在市县区</td>
		<td>
		<select id="province" name="suozai">
		  <option>---请选择---</option>
		</select>
		<select id="city" name="suozai">
		  <option>---请选择---</option>
		</select>
		<select id="country" name="suozai">
		  <option>---请选择---</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>平台组织形态</td>
		<td id="teat"><input type="checkbox" name="zuzhi"  value="内设机构相对独立(无法人资格)"/>内设机构相对独立(无法人资格)
			<input type="checkbox" name="zuzhi" id="zuzhi" onclick="checkAll(this)" value="独立法人"/>独立法人
			<input type="checkbox" name="zuzhi" id="zuzhi" value="企业法人" disabled="disabled"/>企业法人
			<input type="checkbox" name="zuzhi" id="zuzhi" value="事业法人" disabled="disabled"/>事业法人
			<input type="checkbox" name="zuzhi" id="zuzhi" value="社团法人" disabled="disabled"/>社团法人
			<input type="checkbox" name="zuzhi"  value="多单位联合共建"/>多单位联合共建
			<input type="checkbox" name="zuzhi"  value="依托单位独自建设"/>依托单位独自建设
		</td>
	</tr>
	<tr>
		<td>京津冀共建</td>
		<td><input type="radio" name="jgongjian" value="是"/>是
		<input type="radio" name="jgongjian" value="否"/>否
		</td>
	</tr>
	<tr>
		<td>服务的主要国民经济行业</td>
		<td>
		<input type="text" name="jingji"/>
		</td>
	</tr>
	<tr>
		<td>所属的主要学科</td>
		<td>
		<input type="text" name="xueke"/>
		</td>
	</tr>
	<tr>
		<td>依托单位名称</td>
		<td><input type="text" name="ymingcheng" id="ymingcheng" onfocus="javascript:xiaochutishi1();" onblur="javascript:tishi1();"/></td>
		<td id="mm"></td>
		<td>依托单位组织机构代码(社会信用代码)</td>
		<td><input type="text" name="daima" id="daima" onfocus="javascript:xiaochutishi2();" onblur="javascript:tishi2();"/></td>
		<td id="mjh"></td>
	</tr>
	<tr>
		<td>依托单位法人代表姓名</td>
		<td><input type="text" name="yname" id="yname" onfocus="javascript:xiaochutishi3();" onblur="javascript:tishi3();"/></td>
		<td id="mj"></td>
		<td>办公电话</td>
		<td><input type="text" name="ytel" id="ytel" onfocus="javascript:xiaochutishi4();" onblur="javascript:tishi4();"/></td>
		<td id="jh"></td>
	</tr>
	<tr>
		<td>依托单位类型</td>
		<td id="test"><input type="checkbox" name="yleixing" value="企业" checked/>企业
			<input type="checkbox" name="yleixing" value="科研机构"/>科研机构
			<input type="checkbox" name="yleixing" value="高等院校"/>高等院校
			<input type="checkbox" name="yleixing" value="检测机构"/>检测机构
			<input type="checkbox" name="yleixing" value="医疗机构"/>医疗机构
			<input type="checkbox" name="yleixing" value="政府机构"/>政府机构
			<input type="checkbox" name="yleixing" value="社团组织"/>社团组织
			<input type="checkbox" name="yleixing" value="其他"/>其他
		</td>
	</tr>
	<tr>
		<td>共建单位</td>
		<td colspan="7" style="text-align: left">
				<div id="addInput" style="float: float;">
					<div style="float: float;">
					<input type="text" name="gongjian" value="${param.constructionUnit }"/>
					<input type="button" onclick="del(this)" value="删除"/>
					</div>
				</div>
					<input type="button" onclick="addInput()" value="新增一个"/>
		</td>
	</tr>
	<tr>
		<td>平台院长姓名</td>
		<td><input type="text" name="zname" id="zname" onfocus="javascript:xiaochutishi5();" onblur="javascript:tishi5();"/></td>
		<td id="a"></td>
		<td>平台院长性别</td>
		<td><input type="radio" name="zsex" value="男"/>男
		<input type="radio" name="zsex" value="女"/>女
		</td>
	</tr>
	<tr>
		<td>平台院长出生年月</td>
		<td><input type="text" name="zyear" id="zyear" onfocus="javascript:xiaochutishi6();" onblur="javascript:tishi6();"/></td>
		<td id="b"></td>
		<td>平台院长职称</td>
		<td><input type="text" name="zzhicheng" id="zzhicheng" onfocus="javascript:xiaochutishi7();" onblur="javascript:tishi7();"/></td>
		<td id="c"></td>
	</tr>
	<tr>
		<td>平台院长所学专业</td>
		<td><input type="text" name="zzhuanye" id="zzhuanye" onfocus="javascript:xiaochutishi8();" onblur="javascript:tishi8();"/></td>
		<td id="d"></td>
		<td>平台院长学历</td>
		<td><input type="text" name="zxueli" id="zxueli" onfocus="javascript:xiaochutishi9();" onblur="javascript:tishi9();"/></td>
		<td id="e"></td>
	</tr>
	<tr>
		<td>平台院长学位</td>
		<td><input type="text" name="zxuewei" id="zxuewei" onfocus="javascript:xiaochutishi10();" onblur="javascript:tishi10();"/></td>
		<td id="f"></td>
		<td>平台院长办公电话</td>
		<td><input type="text" name="zphone" id="zphone" onfocus="javascript:xiaochutishi11();" onblur="javascript:tishi11();"/></td>
		<td id="g"></td>
	</tr>
	<tr>
		<td>平台院长手机</td>
		<td><input type="text" name="ztel" id="ztel" onfocus="javascript:xiaochutishi12();" onblur="javascript:tishi12();"/></td>
		<td id="h"></td>
		<td>平台院长E-mail</td>
		<td><input type="text" name="zemail" id="zemail" onfocus="javascript:xiaochutishi13();" onblur="javascript:tishi13();"/></td>
		<td id="i"></td>
	</tr>
	<tr>
		<td>平台网站名称</td>
		<td><input type="text" name="wname" id="wname" onfocus="javascript:xiaochutishi14();" onblur="javascript:tishi14();"/></td>
		<td id="j"></td>
		<td>网址</td>
		<td><input type="text" name="wangzhi" id="wangzhi" onfocus="javascript:xiaochutishi15();" onblur="javascript:tishi15();"/></td>
		<td id="k"></td>
	</tr>
	<tr>
		<td>平台通讯地址</td>
		<td><input type="text" name="tdizhi" id="tdizhi" onfocus="javascript:xiaochutishi16();" onblur="javascript:tishi16();"/></td>
		<td id="l"></td>
		<td>邮编</td>
		<td><input type="text" name="youbian" id="youbian" onfocus="javascript:xiaochutishi17();" onblur="javascript:tishi17();"/></td>
		<td id="m"></td>
	</tr>
	<tr>
		<td colspan="6" align="center"><button type="submit" style="width:60px;height:35px;" value="提交" >提交</button>
		<button type="submit" style="width:60px;height:35px;" onclick="this.form.action='updateInput.jsp'" >保存</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>