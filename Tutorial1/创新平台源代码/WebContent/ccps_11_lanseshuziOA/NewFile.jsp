<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.T"%>
<%@page import="com.moban.ITDao"%>
<%@page import="com.moban.TDaoImpl"%>
<%@page import="com.moban.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
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
<!--  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">-->
  <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
  <script src="../layui/layui.js" charset="utf-8"></script> 
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
    <title>查询界面</title>
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//kns/css/gb_min/simple.min.css?v=00E263BABE23AAFD" />
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//kns/css/gb_min/resultpop.min.css?v=D59787997F3B8FCE" />
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//kns/css/gb_min/CnkiAidInput.min.css?v=D59787997F3B8FCE" />
    <script type="text/javascript" src="http://piccache.cnki.net//kns/script/jquery-1.4.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//kns/css/gb_min/colortip.min.css?v=D59787997F3B8FCE" />
    <script type="text/javascript" src="http://piccache.cnki.net//kns/script/min/colortip.min.js?v=D59787997F3B8FCE" ></script>
    <script type="text/javascript" src="http://piccache.cnki.net//kns/script/min/gb.ResultPage.min.js?v=D59787997F3B8FCE" ></script>
</head>
<style type="text/css">

body {
background-color: white;
}

</style>
<body onload="pageLoadDisableWordTimes();" onkeydown="if(event.keyCode==13) {SubmitKey();return false;}else{}">    
   <form id="Form1" name="Form1" action="#" method="post" autocomplete="off">
    <dd class="divsearch" id="ddSubmit" name="ddSubmit" style="padding-bottom:5px; border-bottom:0">
        <table id="txt" align="center">
            <input id="txt_i" value="1" type="hidden" name="txt_i"></input>        <!-- 增加减少需要 -->
            <input id="txt_c" value="7" type="hidden" name="txt_c"></input>
            <tr id="hidden_logical_txt" style="display:none" align="center">
                <td nowrap="true" style="width:10%;" align="right">
                    <select id="txt_1_relation" name="txt_1_relation" style="width:54px">
                        <option value="and" selected=''>并且</option>
                        <option value="or">或者</option>
                    </select>
                </td>
            </tr>
            <tr id="txt_1" class="mainKey">
                <td nowrap="true" style="width:10%" height="25">
                    <span style="padding-left:9px"></span><A href="javascript:AddRowEx('txt','txt_i','txt_c');">
                        <IMG src='./img/jiahao.png' border="0"/>
                    </A>&nbsp;&nbsp;<A href="javascript:DeleteRow('txt','txt_i','txt_c');">
                        <IMG src='./img/jianhao.png' border="0"/>
                    </A>&nbsp;&nbsp;
                </td>
                <td width="89%" height="25" align="left" >
                    (
                    <select id="txt_1_sel" name="txt_1_sel" onchange="disableWordTimes(this);return false;" style="width:83px">
                        <option value="依托单位名称" selected=''>依托单位名称</option>
                        <option value="平台主任姓名">平台主任姓名</option>
                        <option value="邮编">邮编</option>
                    </select>
                   <!--  <input class="font9" value="" id="txt_1_value1" name="txt_1_value1" size="10"
                              maxlength="120" type="text" onFocus="if(KeywordVal(this.value)==false) this.value='';this.style.color='#000000';document.getElementById('currentid').value=this.id;"
                              onkeypress="SignVal(this,'sign',event)" onpaste="return SignVal(this,'value',event)"  onkeyup="SignVal1(this)" style="width:200px;" />

                    <select id="txt_1_relation" name="txt_1_relation" style="width:54px">
                        <option value="and" selected=''>并且</option>
                        <option value="or">或者</option>
                    </select> -->
                    <input class="font9" value="" id="txt_1_value2" name="name" size="10"
                              maxlength="120" type="text" onFocus="if(KeywordVal(this.value)==false) this.value='';this.style.color='#000000';document.getElementById('currentid').value=this.id;"
                              onkeypress="SignVal(this,'sign',event)" onpaste="return SignVal(this,'value',event)" onkeyup="SignVal1(this)"
                           style="width:200px;" />
                    <select id="txt_1_special1" name="txt_1_special1" onChange="">
                        <option value="模糊">模糊</option>
                        <option value="精准" selected=''>精确</option>
                    </select>
                    )
                </td>
            </tr>
        </table>
        <input type="hidden" id="txt_1_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_2_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_3_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_4_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_5_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_6_extension" name ="txt_extension" value="xls"/>
        <input type="hidden" id="txt_7_extension" name ="txt_extension" value="xls"/>
    </dd>
    <dd class="divsearch">
        <dl id="content" style="padding-top:0px;margin-top:-5px;">
            <input type="hidden" id="db_opt" name="db_opt" value=""/>
            <input type="hidden" id="db_value" name="db_value" value=""/>
            <dd class="dd01">
                <span id="updatedateN">
                    <input type="hidden" id="year" name="year"/>
                    <label style="margin-left:62px">从</label>
                    <select id="year_from" name="year_from" onchange="ChangeYearDate('year_from','year_to');ChangeYearOrTime(this,'year','updatedateN');MutiValueHandleHBRD('year_from','year_to','year');"  class="searchw16" style="width:62px"></select>
                    <lable>年</lable>
                    <lable>到</lable>
                    <select id="year_to" name="year_to" onchange="ChangeYearDate('year_from','year_to');ChangeYearOrTime(this,'year','updatedateN');MutiValueHandleHBRD('year_from','year_to','year');" class="searchw16" style="width:62px"></select>
                    <lable>年</lable>
                     <label>
 						 <input class="button" type="submit" value="提交" />
 					</label>
                    <script type="text/javascript">
                        FillDateSelect("year_from",1904,0,false);
                        DateSelectInsert('year_from',message['unLimit'],'',0);
                        CheckDataLastYear("year_from",false,'WWJD',1);

                        FillDateSelect("year_to",1904,0,true);
                        DateSelectInsert('year_to',message['unLimit'],'',0);
                        CheckDataLastYear("year_to",true,'WWJD',1);
                    </script>
                </span>
            </dd>
        </dl>
    </dd>
</form>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  	<legend>查询结果</legend>
</fieldset>
 
<div class="layui-form">
  <table class="layui-table">
    <colgroup>
      <col width="150">
      <col width="150">
      <col width="200">
      <col>
    </colgroup>
    <thead>
      <tr>
        <th>依托单位名称</th>
        <th>平台主任姓名</th>
        <th>网址名称</th>
        <th>网站地址</th>
        <th>邮编</th>
      </tr> 
    </thead>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
System.out.println(11111);
/* String[] name=null;
name = (String[]) request.getParameterValues("name"); 
for(int i=0;i<name.length;i++)
{
	System.out.println(name[i]);
} */
String sname=null;
/* String[] xuanze = (String[]) request.getParameterValues("xuanze"); 
String[] chaxun = (String[]) request.getParameterValues("chaxun");  */
TDaoImpl tDao = new TDaoImpl();
List<T> ts = tDao.load(name,"1","1");
/* if(name.length>0)   
{   
    for(int i=0;i<name.length;i++)   
    {     
    	sname=sname+name[i]+",";     
    }   
    sname=sname.substring(0,sname.length()-1);//去掉SID中的最后一个逗号     
}   */
for(T t:ts){
%>
<tbody>
      <tr>
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
</body>
</html>
