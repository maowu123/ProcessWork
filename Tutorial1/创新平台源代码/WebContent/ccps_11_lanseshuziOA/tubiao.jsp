<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.T"%>
<%@page import="com.moban.ITDao"%>
<%@page import="com.moban.TDaoImpl"%>
<%@page import="com.moban.User"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图标界面</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/echarts.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = "../js/jquery-3.3.1.js"></script>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
  <script src="../layui/layui.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/form.css" />
<link href="umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/xueke.js"></script>
<script type="text/javascript" src="../js/jingji.js"></script>
<script type="text/javascript">
window.UMEDITOR_HOME_URL = 'umeditor/';  // 请换成绝对路径
</script>
<script type="text/javascript" src="js/umeditor.config.js"></script>
<script type="text/javascript" src="js/editor_api.js"></script>
<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	function addInput(){
		var fdiv=document.getElementById("addInput");
		fdiv.innerHTML+='<div style="float: float;"><input type="text" name="constructionUnit"/><input type="button" onclick="del(this)" value="删除"/><div>';
	}
	
	function del(obj){
		obj.parentNode.parentNode.removeChild(obj.parentNode);
	}
</script>
<style type="text/css">
*{
			margin: 0;
			padding: 0;
		}
		.wrapper{
			position: relative;
			width: 100%;
			background-color: #ccc;
		}
		.wrapper .head{
			position: absolute;
			width: 100%;
			background-color: #ccc;
		}
		.wrapper .head img{
			width: 100%;
		}
		.wrapper .bottom{
			position: absolute;
			margin-top: 0%;
			width: 100%;
			height: 800px;
			background-color: white;
		}
		.wrapper .bottom .right{
			position: absolute;
			left: 0%;
			width: 100%;
			height: 100%;
			background-color: white;
		}
		.wrapper .bottom .right form{
			margin-top:20px;
		}
		.wrapper .bottom .right ul{
			list-style:none;
			position:absolute;
			top:60px;
		}
		.wrapper .bottom .right ul li{
			margin:auto;
		}
		.wrapper .bottom .right ul li span{
			display:inline-block;
			width:300px;    /* 改条宽度 */
			text-align:center;
		}
</style>
<style>
#echartsJs{
	left:5%;
	width:40%;
	height:400px;
}
#echartsJs1{
	height:400px;
	left:5%;
	width:40%;
}
#echartsJs2{
	left:5%;
	width:40%;
	height:400px;
}
#echartsJs3{
	left:5%;
	width:40%;
	height:400px;
}
#echartsJs4{
	left:5%;
	width:40%;
	height:400px;
}
#echartsJs5{
	left:5%;
	width:40%;
	height:400px;
}
</style>
</head>
<body>
<form method="post" name="form">
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
		<div class="kv-item ue-clear">
		<label></label><label></label><label></label><label></label>
		<label>查询</label>
             <div class="kv-item-content">
                  <select name="xuanze">
                       <option>平台级别</option>                           
                       <option>所在市县区</option>
                       <option>服务的主要国民经济行业</option>
                  </select>
              </div>
              <label>查询方式</label>
              <div class="kv-item-content">
                  <select name="leixing">
                       <option>饼状图</option>                           
                       <option>柱状图</option>
                  </select>
              </div>
              <label></label><label></label><label></label><label></label><label></label><label></label><label></label><label></label><label></label>
              <div class="buttons">
 				 <input class="button" type="submit" value="提交" />
			  </div>  
        </div>
        </div>
    </div>
</div>
<!-- <div class="buttons">
  <input class="button" type="submit" value="提交" />
</div> -->
</form>
<br><br><br>
<!-- <div id="echartsJs"></div>                         图表  -->
<%
	int i=0,j=0,sum=0,k=0,l=0,m=0;
	request.setCharacterEncoding("UTF-8");
	String xuanze = request.getParameter("xuanze");
	String leixing = request.getParameter("leixing");
	if("平台级别".equals(xuanze)&&"饼状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
		if("国家级".equals(t.getJibie()))
		{
			i++;
		}
		else
		{
			j++;
		}
		
		} 
		sum=i+j;
		System.out.println(sum);
		double a,b;
		a=(double)i/sum;
		b=(double)j/sum;
	System.out.println("成功111");
%>
<!-- <input type="hidden" /> -->
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs1">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:50%;width:60%;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
	List<T> ts1 = tDao1.load2(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>

				<!-- <div id="echartsJs4"></div> -->
<%
	}else if("平台级别".equals(xuanze)&&"柱状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
			if("国家级".equals(t.getJibie()))
			{
				i++;
			}
			else
			{
				j++;
			}
					
		} 
		sum=i+j;
		System.out.println(sum);
		double a,b;
		a=(double)i/sum;
		b=(double)j/sum;
		System.out.println("成功222");
%>
<!-- <input type="hidden" /> -->
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
				<!-- <div id="echartsJs1"></div> --> 
				<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs4">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:40%;width:60%;font-size:18px;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
	List<T> ts1 = tDao1.load2(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>
<%
	}
	else if("所在市县区".equals(xuanze)&&"饼状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
		if("河北省,石家庄,市辖区".equals(t.getSuozai()))
		{
			i++;
		}
		else if("天津省,天津市,红桥区".equals(t.getSuozai()))
		{
			j++;
		}
		else
		{
			k++;
		}
		} 
		System.out.println("i的值为："+i);
		System.out.println(j);
		System.out.println(k);
		sum=i+j+k;
		System.out.println(sum);
		double a,b,c;
		a=(double)i/sum;
		System.out.println(a);
		b=(double)j/sum;
		c=(double)k/sum;
	System.out.println("成功333");
%>
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
				<input type="hidden" value="<%=c%>" id="id3"/>
				<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:40%;width:60%;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
	List<T> ts1 = tDao1.load(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>
<% 
}
	else if("所在市县区".equals(xuanze)&&"柱状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
		if("河北省,石家庄,市辖区".equals(t.getSuozai()))
		{
			i++;
		}
		else if("天津省,天津市,红桥区".equals(t.getSuozai()))
		{
			j++;
		}
		else
		{
			k++;
		}
		} 
		System.out.println("i的值为："+i);
		System.out.println(j);
		System.out.println(k);
		sum=i+j+k;
		System.out.println(sum);
		double a,b,c;
		a=(double)i/sum;
		System.out.println(a);
		b=(double)j/sum;
		c=(double)k/sum;
	System.out.println("成功444");
%>
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
				<input type="hidden" value="<%=c%>" id="id3"/>
				<!-- <div id="echartsJs"></div>  -->
			<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs3">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:40%;width:60%;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
    List<T> ts1 = tDao1.load(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>
<%
	}
	else if("服务的主要国民经济行业".equals(xuanze)&&"饼状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
		if("制造业,农副食品加工业,谷物磨制".equals(t.getJingji()))
		{
			i++;
		}
		else if("金融业,货币金融服务,中央银行服务".equals(t.getJingji()))
		{
			j++;
		}
		else if("畜牧业,家禽饲养,鸭的饲养".equals(t.getJingji()))
		{
			k++;
		}
		else if("农、林、牧、渔服务业,植物油加工,食用植物油加工".equals(t.getJingji()))
		{
			l++;
		}
		else
		{
			m++;
		}
		} 
		sum=i+j+k+m+l;
		System.out.println(sum);
		double a,b,c,d,e;
		a=(double)i/sum;
		System.out.println(a);
		b=(double)j/sum;
		c=(double)k/sum;
		d=(double)l/sum;
		e=(double)m/sum;
	System.out.println("成功555");
%>
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
				<input type="hidden" value="<%=c%>" id="id3"/>
				<input type="hidden" value="<%=a%>" id="id4"/>
				<input type="hidden" value="<%=b%>" id="id5"/>
				<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs2">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:40%;width:60%;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
    List<T> ts1 = tDao1.load3(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>
				<%
	}
	else if("服务的主要国民经济行业".equals(xuanze)&&"柱状图".equals(leixing))
	{
		TDaoImpl tDao = new TDaoImpl();
		List<T> ts= tDao.load();
		for(T t:ts){
		if("制造业,农副食品加工业,谷物磨制".equals(t.getJingji()))
		{
			i++;
		}
		else if("金融业,货币金融服务,中央银行服务".equals(t.getJingji()))
		{
			j++;
		}
		else if("畜牧业,家禽饲养,鸭的饲养".equals(t.getJingji()))
		{
			k++;
		}
		else if("农、林、牧、渔服务业,植物油加工,食用植物油加工".equals(t.getJingji()))
		{
			l++;
		}
		else
		{
			m++;
		}
		} 
		sum=i+j+k+m+l;
		System.out.println(sum);
		double a,b,c,d,e;
		a=(double)i/sum;
		System.out.println(a);
		b=(double)j/sum;
		c=(double)k/sum;
		d=(double)l/sum;
		e=(double)m/sum;
	System.out.println("成功666");
%>
				<input type="hidden" value="<%=a%>" id="id1"/>
				<input type="hidden" value="<%=b%>" id="id2"/>
				<input type="hidden" value="<%=c%>" id="id3"/>
				<input type="hidden" value="<%=a%>" id="id4"/>
				<input type="hidden" value="<%=b%>" id="id5"/>
				<div class = "wrapper">
<div class = "bottom">
	<div class="right">
	<div id="echartsJs5">
	</div>
	</div>
	</div>
	</div>
		<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:40%;width:60%;" >
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>平台级别</th>
      	<th>所在市县区</th>
      	<th>服务的主要国民经济行业</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    TDaoImpl tDao1 = new TDaoImpl();
    List<T> ts1 = tDao1.load3(xuanze);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getJibie() %></td>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getJingji() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div>
<%
	}
%>
<%-- <div class="layui-form">
  <table class="layui-table" style="position: absolute;left:50%;width:60%;">
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
      	<th>所在市县区</th>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
    <% 
    request.setCharacterEncoding("UTF-8");
    /* String param = request.getParameter("param"); */
    String param = request.getParameter("param");
    System.out.println(param);
    TDaoImpl tDao = new TDaoImpl();
	List<T> ts = tDao.load(param);
	for(T t:ts){			
	%>
    <tbody>
      <tr>
       <td> <%=t.getSuozai() %></td>
       <td> <%=t.getYmingcheng() %></td>
	   <td> <%=t.getZname() %></td>
	   <td> <%=t.getWname() %></td>
	   <td> <%=t.getWangzhi() %></td>
	   <td> <%=t.getYoubian() %></td>
      </tr>                   
		<%
			} 
		%>
    </tbody>
  </table>
</div> --%>
</body>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var id3 = document.getElementById("id3").value;
	 var option = {
			    title : {
			        text: '所在市县区',
			        x:'center'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data: ['河北省,石家庄,市辖区','天津省,天津市,红桥区','上海省,上海,徐汇区'/* ,'视频广告','搜索引擎' */]
			    },
			    series : [
			        {
			            name: '访问来源',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:[
			                {value:id1, name:'河北省,石家庄,市辖区'},
			                {value:id2, name:'天津省,天津市,红桥区'},                       /*数值插入  */
			                {value:id3, name:'上海省,上海,徐汇区'}
			            ],
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
			};
	 myChart.setOption(option);
</script>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs3'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var id3 = document.getElementById("id3").value;
	 var option = {
			    xAxis: {
			        type: 'category',
			        data: ['河北省,石家庄,市辖区', '天津省,天津市,红桥区', '上海省,上海,徐汇区']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [id1, id2, id3],
			        type: 'bar'
			    }]
			};
	 myChart.setOption(option);
</script>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs1'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var option = {
			    title : {
			        text: '平台级别',
			        x:'center'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data: ['国家级','省级'/* ,'联盟广告','视频广告','搜索引擎' */]
			    },
			    series : [
			        {
			            name: '访问来源',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:[
			                {value:id1, name:'国家级'},
			               // {value:310, name:'邮件营销'},                       /*数值插入  */
			              //  {value:234, name:'联盟广告'},
			              //  {value:135, name:'视频广告'},
			                {value:id2, name:'省级'}
			            ],
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
			};
	 myChart.setOption(option);
</script>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs4'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var option = {
			    xAxis: {
			        type: 'category',
			        data: ['国家级', '省级']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [id1, id2],
			        type: 'bar'
			    }]
			};
	 myChart.setOption(option);
</script>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs2'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var id3 = document.getElementById("id3").value;
	 var id4 = document.getElementById("id4").value;
	 var id5 = document.getElementById("id5").value;
	 var option = {
			    title : {
			        text: '服务的主要国民经济行业',
			        x:'center'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data: ['其他','金融业,货币金融服务,中央银行服务' ,'畜牧业,家禽饲养,鸭的饲养','农、林、牧、渔服务业,植物油加工,食用植物油加工','制造业,农副食品加工业,谷物磨制']
			    },
			    series : [
			        {
			            name: '访问来源',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:[
			                {value:id1, name:'制造业,农副食品加工业,谷物磨制'},
			                {value:id2, name:'金融业,货币金融服务,中央银行服务'},                       /*数值插入  */
			                {value:id3, name:'畜牧业,家禽饲养,鸭的饲养'},
			                {value:id4, name:'农、林、牧、渔服务业,植物油加工,食用植物油加工'},
			                {value:id5, name:'其他'}
			            ],
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
			};
	 myChart.setOption(option);
</script>
<script language="javascript">

	 var myChart = echarts.init(document.getElementById('echartsJs5'));
	 var id1 = document.getElementById("id1").value;
	 var id2 = document.getElementById("id2").value;
	 var id3 = document.getElementById("id3").value;
	 var id4 = document.getElementById("id4").value;
	 var id5 = document.getElementById("id5").value;
	 var option = {
			 xAxis: {
			        type: 'category',
			        data: ['谷物磨制', '中央银行服务', '鸭的饲养', '植物油加工', '其他']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [{
			        data: [id1, id2, id3, id4, id5],
			        type: 'bar'
			    }]
			};
	 myChart.setOption(option);
</script>
<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea','color5');
	UM.getEditor('content');
</script>
</html>