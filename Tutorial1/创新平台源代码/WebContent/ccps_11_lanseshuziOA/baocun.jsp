<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.User" %>
<%@page import="com.moban.DaoFactory"%>
<%@page import="com.moban.ITDao"%>
<%@page import="com.moban.ValidateUtil"%>
<%@page import="com.moban.T"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<!-- <script type="text/javascript">
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
	}
</script> -->
<script type="text/javascript">  
     var num = 0;
     function lastChecked() {  
    	 num++;
    	 if(num==1)
         {
	    	 document.getElementById("id_1").disabled="";
	    	 document.getElementById("id_2").disabled="";
	    	 document.getElementById("id_3").disabled="";
         }
    	 else
    	 {
    		 document.getElementById("id_1").disabled="true";
	    	 document.getElementById("id_2").disabled="true";
	    	 document.getElementById("id_3").disabled="true";
    	 }
     }  
</script>
<!-- <script language="JavaScript">
function Fun(){
	var list = document.getElementsByTagName("input");
	for (var i = 0; i < list.length; i++) {
	// 判断是否为文本框
	if (list[i].type == "text"||list[i].type == "radio"||list[i].type == "checkbox") {
	// 判断文本框是否为空
			if (list[i].value == "") {
				alert("请将报表填写完整！");
				return false;
			}
	}
	else
	{
		document.getElementById('formId').submit();
	}
	}
}
</script> -->
<title>基础信息</title>
</head>

<body>
<%User user = (User)session.getAttribute("loginUser");
int id = 2;
//int id=user.getId();
ITDao tDao = DaoFactory.getDaoImpl();
T t = tDao.load(id);
String[] arry = t.getSuozai().split(",");
String[] arry1=t.getJingji().split(",");
String[] arry2=t.getXueke().split(",");
%>
<form action="../user/update.jsp"  method="post" name="form">
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>基本信息</span>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>平台名称</label>
                	<div class="kv-item-content">
                		<%=user.getPname() %>
                    	<!-- <input type="text"/> -->
                   &nbsp;
                    </div>
               
                   <label></label><label></label><label></label><label></label><label></label><label></label>
                    <label><span class="impInfo">*</span>平台编号</label>
                	<div class="kv-item-content">
                    	<%=user.getNum() %>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>批准年月</label>
                	<div class="kv-item-content">
                    	<%=user.getYear() %>
                    </div>
                    <label></label><label></label><label></label><label></label><label></label><label></label>
                    <label><span class="impInfo">*</span>批准文号</label>
                	<div class="kv-item-content">
                    	<%=user.getWenhao() %>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>技术领域</label>
                	<div class="kv-item-content">
                    	<%=user.getLingyu() %>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <!-- 以上是从后台接收的代码，下面是要填写的-->
                <%
                if("国家级".equals(t.getJibie())){ 
                %>
               <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>平台级别</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="jibie" value="国家级" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">国家级</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="jibie" value="省级"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">省级</span>
                        </span>
                    </div>
                </div>
                <%
                }else{
                %>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>平台级别</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="jibie" value="国家级"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">国家级</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="jibie" value="省级" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">省级</span>
                        </span>
                    </div>
                </div>
                <%} %>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>所在市县区</label>
                	<div class="kv-item-content">
                    	<select id="province" name="suozai">
                        	<option><%=arry[0] %></option>                             <!-- 所在市县区 -->
                   
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="city" name="suozai">
                        	<option><%=arry[1] %></option>                           
                            
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="country" name="suozai">
                        	<option><%=arry[2] %></option>                           
                           
                        </select>
                    </div>
                    <span class="kv-item-tip success">成功信息</span>
                </div>
                         
                 <%
       				 if("内设机构相对独立(无法人资格)".equals(t.getZuzhi())){            
  				 %>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div>
                 <%
       			 }else if("独立法人,企业法人".equals(t.getZuzhi())){                                   
   	 			%> 
   	 			 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div>
                <%
       			 }else if("独立法人,事业法人".equals(t.getZuzhi())){                                   
   	 			%> 
   	 			 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div>
                    <%
       			 }else if("独立法人,社团法人".equals(t.getZuzhi())){                                   
   	 			%> 
   	 			 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3" checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div>
                 <%
    				}else if("多单位联合共建".equals(t.getZuzhi())){ 
   				 %>  
   				  <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"  checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div> 
                 <%
    				}else if("依托单位独自建设".equals(t.getZuzhi())){ 
    			 %>          
    			  	  		 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>组织形态</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="内设机构相对独立(无法人资格)"/>
                                <span class="checkbox"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">内设机构相对度独立</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="独立法人" onclick="lastChecked()"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">独立法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="企业法人" disabled="disabled" id="id_1"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">企业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="事业法人" disabled="disabled" id="id_2"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">事业法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="社团法人" disabled="disabled" id="id_3"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">社团法人</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="多单位联合共建"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">多单位联合共建</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter1">
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"  checked="checked"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                </div>  
                <%
                	} 
                %> 
                <%
        			if("是".equals(t.getJgongjian())){            
  				 %>                                      
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>京津冀共建</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="jgongjian" value="是" checked="checked"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 京津冀共建 -->
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="jgongjian" value="否"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        
                    </div>
                </div>
                <%
      			  }else{                                   
   				 %>
   				 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>京津冀共建</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="jgongjian" value="是"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 京津冀共建 -->
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="jgongjian" value="否" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        
                    </div>
                </div>
                <%
    			}
   				 %>
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>国民经济行业</label>
                	<div class="kv-item-content">
                    	<select id="syiji" name="jingji">
                        	<option><%=arry1[0] %></option>                           
                            
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="serji" name="jingji">
                        	<option><%=arry1[1] %></option>                           
                           
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="ssanji" name="jingji">
                        	<option><%=arry1[2] %></option>                           
                            
                        </select>
                    </div>
                    <span class="kv-item-tip success">成功信息</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>所属主要学科</label>
                	<div class="kv-item-content">
                    	<select id="yiji" name="xueke">
                        	<option><%=arry2[0] %></option>                                      <!--原来是kv-item，但在网页中显示不出来  -->
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="erji" name="xueke">
                        	<option><%=arry2[1] %></option>                           
                            
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="sanji" name="xueke">
                        	<option><%=arry2[2] %></option>                           
                           
                        </select>
                    </div>
                    <span class="kv-item-tip success">成功信息</span>
                </div>
                
             <h2 class="subfild">
            	<span>依托单位</span>
            </h2>
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>单位名称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="ymingcheng" value="<%=t.getYmingcheng() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>组织机构代码</label>
                	<div class="kv-item-content">
                    	<input type="text" name="daima" value="<%=t.getDaima() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>法人代表姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" name="yname" value="<%=t.getYname() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>办公电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="ytel" value="<%=t.getYtel() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                 <%
        			if("企业".equals(t.getYleixing())){           
  		  		%>
               <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业" checked="checked"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
       			 }else if("科研机构".equals(t.getYleixing())){                              
   				 %>
   				 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("高等院校".equals(t.getYleixing())){     
    			%>
    			 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"  checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("检测机构".equals(t.getYleixing())){     
    			%>
    			<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"  checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("医疗机构".equals(t.getYleixing())){     
   				 %>
   				 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("政府机构".equals(t.getYleixing())){     
    			%>
    			 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("社团组织".equals(t.getYleixing())){     
   				 %>
   				<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}else if("其他".equals(t.getYleixing())){     
   				 %>
   				 	 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>类型</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="企业"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 依托单位类型 -->
                            <span class="text">企业</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="科研机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">科研机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="高等院校"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">高等院校</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="检测机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">检测机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="医疗机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">医疗机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="政府机构"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">政府机构</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="社团组织"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">社团组织</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="yleixing" value="其他" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                </div>
                <%
    			}  
    			%>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>共建单位</label>
                	<div class="kv-item-content">
                		<div id="addInput" style="float: float;">
                		<div style="float: float;">
                    	<input type="text" name="gongjian"/>
                    	<input type="button" onclick="del(this)" value="删除"/>
						</div>
						</div>
		                <input type="button" onclick="addInput()" value="新增一个"/>
                    </div>
                </div>
                        <!-- 共建单位 -->
            </div>
            
            <h2 class="subfild">
            	<span>平台主任</span>
            </h2>
            <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zname" value="<%=t.getZname() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>出生年月</label>
                	<div class="kv-item-content">
                    	<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="zyear" value="<%=t.getZyear() %>"/>
                        <i class="time-icon"></i>
                    </div>
            </div>
            <%
        	if("男".equals(t.getZsex())){            //若是男生，则选中男生按钮
  			%>
            <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>性别</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="zsex" value="男" checked="checked"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">男</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="zsex" value="女"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">女</span>
                        </span>
                        
                    </div>
             </div>
             <%
       		 }else{                                    //否则，显示选中女生按钮
   			%>
   			<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>性别</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="zsex" value="男"/>
                                <span class="radio"></span>
                            </span>                                             <!-- 平台级别 -->
                            <span class="text">男</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="zsex" value="女" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">女</span>
                        </span>
                        
                    </div>
             </div>
             <%
    		}
    		%>
            <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>职称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zzhicheng" value="<%=t.getZzhicheng() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>所学专业</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zzhuanye" value="<%=t.getZzhuanye() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
           </div>
           <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>学历</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zxueli" value="<%=t.getZxueli() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>学位</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zxuewei" value="<%=t.getZxuewei() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
           </div>
           <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>办公电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zphone" value="<%=t.getZphone() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>手机</label>
                	<div class="kv-item-content">
                    	<input type="text" name="ztel" value="<%=t.getZtel() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
          </div>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>E-mail</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zemail" value="<%=t.getZemail() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
          </div>
          <h2 class="subfild">
            	<span>平台信息</span>
          </h2>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>网站名称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="wname" value="<%=t.getWname() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>网址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="wangzhi" value="<%=t.getWangzhi() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
          </div>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>通讯地址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="tdizhi" value="<%=t.getTdizhi() %>"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span class="impInfo">*</span>邮编</label>
                	<div class="kv-item-content">
                    	<input type="text" name="youbian" value="<%=t.getYoubian() %>"/>
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
          </div>
            <div class="buttons">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="submit" value="提交" onclick="Fun()"/>
                 <input class="button" type="submit" value="保存" />
            </div>
        </div>
    </div>
</div>
</form>
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea','color5');
	UM.getEditor('content');
</script>
</html>
