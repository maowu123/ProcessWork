<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.User" %>
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
<script type="text/javascript">  
     var num = 0;
     function lastChecked() {  
    	 num++;
    	 if(num==1|num%2!=0)
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
<script language="JavaScript">
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
</script>
<!-- <script type="text/javascript">
        $(function () {
            $("#btnSubmit").click(function () {
                $("input[type='text']").each(function () {
                    if ($(this).val() == "") {
                        alert("输入内容不能为空！");
                        return false;
                    }
                })
            })
        })
</script> -->
<title>基础信息</title>
</head>

<body>
<%User user = (User)session.getAttribute("loginUser"); 
System.out.println("接受值成功");%>
<form action="../user/tianxieInput.jsp"  method="post" name="form" id="formId">
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
                	<label><span class="impInfo">*</span><font size=3>技术领域</font></label>
                	<div class="kv-item-content">
                    	<%=user.getLingyu() %>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <!-- 以上是从后台接收的代码，下面是要填写的-->
               <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span><font size=3>平台级别</font></label>
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
                                <input type="checkbox" name="jibie" value="省级"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">省级</span>
                        </span>
                    </div>
                    <span class="kv-item-tip">请选择</span>
                </div>
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>所在市县区</label>
                	<div class="kv-item-content">
                    	<select id="province" name="suozai">
                        	<option>---请选择---</option>                             <!-- 所在市县区 -->
                           
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="city" name="suozai">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="country" name="suozai">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                    </div>
                    <span class="kv-item-tip">请选择</span>
                </div>
                         
                                                                          <!--缺一个平台组织形态复选框  -->
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
                                <input type="checkbox" name="zuzhi" value="依托单位独自建设"/>
                                <span class="checkbox"></span>
                            </span>
                            <span class="text">依托单位独自建设</span>
                        </span>
                    </div>
                    <span class="kv-item-tip">请选择</span>
                </div>
                                                                          
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
                                <input type="radio" name="jgongjian" value="否"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        <span class="kv-item-tip">请选择</span>
                    </div>
                </div>
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>国民经济行业</label>
                	<div class="kv-item-content">
                    	<select id="syiji" name="jingji">
                        	<option>---请选择---</option>                           
                            
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="serji" name="jingji">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="ssanji" name="jingji">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                    </div>
                    <span class="kv-item-tip">请选择</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>所属主要学科</label>
                	<div class="kv-item-content">
                    	<select id="yiji" name="xueke">
                        	<option>---请选择---</option>                                      <!--原来是kv-item，但在网页中显示不出来  -->
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="erji" name="xueke">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                        </div>
                        <label></label>
                        <div class="kv-item-content">
                        <select id="sanji" name="xueke">
                        	<option>---请选择---</option>                           
                            <option>---请选择---</option>
                            <option>---请选择---</option>
                        </select>
                    </div>
                    <span class="kv-item-tip">请选择</span>
                </div>
                
             <h2 class="subfild">
            	<span>依托单位</span>
            </h2>
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>单位名称</label>
                	<div class="kv-item-content"> 
                    	<input type="text" name="ymingcheng"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>组织机构代码</label>
                	<div class="kv-item-content">
                    	<input type="text" name="daima"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <!-- <span class="kv-item-tip">标题字数限制在35个字符</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>法人代表姓名</label>
                	<div class="kv-item-content">
                    <!-- 	<input type="text" name="yname" value="法人代表姓名" onfocus="if(value=='法人代表姓名'){value=''}"  
    onblur="if(value==''){alert(111);}"/> -->
   					 <input type="text" name="yname"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>办公电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="ytel"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                </div>
                
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
                                <input type="radio" name="yleixing" value="其他"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">其他</span>
                        </span>
                    </div>
                     <span class="kv-item-tip">请选择</span>
                </div>
                
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
                     <span class="kv-item-tip">请填写</span>
                </div>
            </div>
            
            <h2 class="subfild">
            	<span>平台主任</span>
            </h2>
            <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zname"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>出生年月</label>
                	<div class="kv-item-content">
                    	<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="zyear"/>
                        <i class="time-icon"></i>
                    </div>
                    <span class="kv-item-tip">请填写</span>
            </div>
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
                                <input type="radio" name="zsex" value="女"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">女</span>
                        </span>
                        <span class="kv-item-tip">请选择</span>
                    </div>
                </div>
            <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>职称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zzhicheng"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>所学专业</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zzhuanye"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
           </div>
           <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>学历</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zxueli"/>
                    	
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>学位</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zxuewei"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
           </div>
           <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>办公电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zphone"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>手机</label>
                	<div class="kv-item-content">
                    	<input type="text" name="ztel"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
          </div>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>E-mail</label>
                	<div class="kv-item-content">
                    	<input type="text" name="zemail"/>
                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
          </div>
          <h2 class="subfild">
            	<span>平台信息</span>
          </h2>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>网站名称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="wname"/>
                    	
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>网址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="wangzhi"/>
                    </div>
                   <span class="kv-item-tip">请填写</span>
          </div>
          <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>通讯地址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="tdizhi"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
                    <label></label>
                    <label><span class="impInfo">*</span>邮编</label>
                	<div class="kv-item-content">
                    	<input type="text" name="youbian"/>
                    </div>
                    <span class="kv-item-tip">请填写</span>
          </div>
            <div class="buttons">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="button" value="提交" onclick="Fun()"/>
              <!--   <input class="button" type="submit" value="提交" id="btnSubmit"> -->
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
