<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.moban.T"%>
<%@page import="com.moban.ITDao"%>
<%@page import="com.moban.TDaoImpl"%>
<%@page import="com.moban.User"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="utf-8">
<title>带搜索功能的jQuery树形菜单代码</title>

<link rel="stylesheet" type="text/css" href="all.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = "../js/jquery-3.3.1.js"></script>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
  <script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jtree.js"></script>
<script type="text/javascript" src="js/uitool.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<style type="text/css">
body {
	/* background-image: url(../image/loginbg.jpg); */
	background-color: #fff;
}
</style>
<script language="JavaScript">
var num = 0;
function myFun(){
    num++;
    if(num==1)
    {
    	/* alert("请再次点击");  */
    }
    else
    {
    	document.getElementById('formId').submit();
    }
    System.out.println("跳出");
}
</script>
<script>
	var jq=jQuery.noConflict();
    jq(document).ready(function(){
        jq("#d1 a").click(function(){
            var a=($(this).attr("linkId")); //这样就得到点击的链接的linkId参数了，然后你可以用这个值来做其它的事 onclick="document.getElementById('formId').submit();"
            /* this.form1.param.value=a; */
            form1.param.value=a;
            /* alert(form1.param.value); */
           
        });
    });
</script>
<!-- <style type="text/css">
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
			left: 40%;
			width: 60%;
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
</style> -->
</head>
<body><script src="/demos/googlegg.js"></script>
<!-- <form name="form1" action="#" id="formId"> -->
<div class="navTab-panel tabsPageContent layoutBox" style="padding-top:20px;padding-left: 20px;width:2000px; height:600px;position:absolute;overflow-y:auto">
  <div class="page unitBox">
    <div class="pageFormContent">
      <div id="leftside"> 
        <!-- jtree模板 -->
        <div id="sidebar">
          <div class="toggleCollapse">
            <div class="navigationbar">
             <!--  <div id="searchMenuBar" style="line-height: 30px"> 
              <a title="折叠全部" onClick="$('ul.tree').colExpAll({clickType:'expAll'})" id="expandBtn" class="treebar">折叠<i class="myicons iconfont icon-zhedie collapse-all"></i></a> 
              <a title="展开全部" onClick="$('ul.tree').colExpAll({clickType:'colAll'})" id="collapseBtn" class="treebar">展开<i class="myicons iconfont icon-1 expand-all"></i></a> 
			</div> -->
            </div>
          </div>
        <form name="form1" id="formId" method="post"> 
            <input type="hidden" name="param" value="444" id="param"/> 
          <div id="d1" class="d1"> <!-- 接收值的写在了这里，可以正常运行 -->
          <div class="accordion" fillSpace="sidebar">
            <div class="accordionContent">
              <ul id="a" class="tree treeFolder collapse">
                <li><a autobypy="bz" dataType="topmenu" childMneu="bzmenus" keyboard="A">河北省</a>
                  <ul id="bzmenus" class="bzmenus_sub">
                    <li><a autobypy="tyhs"><span class="font_pos"><i class="external_small"></i></span>石家庄市</a>
                      <ul>
                        <li><a autobypy="cjbg" onclick="myFun()" linkId="河北省，石家庄，市辖区"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>长安区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,桥东区"><span class="font_pos"><i class="external_small"></i></span>桥东区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,桥西区"><span class="font_pos"><i class="external_small"></i></span>桥西区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,新华区"><span class="font_pos"><i class="external_small"></i></span>新华区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,井陉矿区"><span class="font_pos"><i class="external_small"></i></span>井陉矿区</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,裕华区" ><span class="font_pos"><i class="external_small"></i></span>裕华区</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,井陉县"><span class="font_pos"><i class="external_small"></i></span>井陉县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,正定县"><span class="font_pos"><i class="external_small"></i></span>正定县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,栾城县"><span class="font_pos"><i class="external_small"></i></span>栾城县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,行唐县"><span class="font_pos"><i class="external_small"></i></span>行唐县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,灵寿县"><span class="font_pos"><i class="external_small"></i></span>灵寿县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,高邑县"><span class="font_pos"><i class="external_small"></i></span>高邑县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,深泽县"><span class="font_pos"><i class="external_small"></i></span>深泽县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,赞皇县"><span class="font_pos"><i class="external_small"></i></span>赞皇县</a></li>
                         <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,无极县"><span class="font_pos"><i class="external_small"></i></span>无极县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,平山县"><span class="font_pos"><i class="external_small"></i></span>平山县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,元氏县"><span class="font_pos"><i class="external_small"></i></span>元氏县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();" linkId="河北省,石家庄,赵　县"><span class="font_pos"><i class="external_small"></i></span>赵　县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="bg"><span class="font_pos"><i class="external_small"></i></span>唐山市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>路南区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>路北区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>古冶区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>开平区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>丰南区</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>丰润区</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>滦　县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>滦南县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>乐亭县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>迁西县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>玉田县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>唐海县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="ck|dhk"><span class="font_pos"><i class="external_small"></i></span>邢台市</a>
                      <ul>
                        <li><a autobypy="cjbg" href="#"  onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>邯山区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>丛台区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>复兴区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>峰峰矿区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>邯郸县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>临漳县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>成安县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>大名县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涉　县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>磁　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>肥乡县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>永年县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>邱　县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>鸡泽县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>广平县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>馆陶县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>魏　县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>曲周县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="bd" href=""><span class="font_pos"><i class="external_small"></i></span>秦皇岛市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥东区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥西区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>邢台县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>临城县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>内丘县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>柏乡县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>隆尧县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>任　县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>南和县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宁晋县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>巨鹿县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>新河县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>广宗县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>平乡县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>威　县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>清河县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>临西县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>邯郸市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>新市区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>北市区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>南市区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>满城县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>清苑县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涞水县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>阜平县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>徐水县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>定兴县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>唐　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>高阳县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>容城县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涞源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>望都县 </a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>安新县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>易　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>曲阳县</a></li>
                         <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蠡　县 </a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>顺平县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>博野县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>雄　县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>保定市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥东区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥西区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>下花园区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>张北县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>康保县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>沽源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>尚义县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蔚　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>阳原县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀安县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>万全县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀来县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涿鹿县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>赤城县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>崇礼县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>张家口市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>新市区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>北市区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>南市区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>满城县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>清苑县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涞水县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>阜平县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>徐水县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>定兴县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>唐　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>高阳县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>容城县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涞源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>望都县 </a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>安新县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>易　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>曲阳县</a></li>
                         <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蠡　县 </a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>顺平县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>博野县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>雄　县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>承德市</a>
                      <ul>
                        <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥东区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥西区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>下花园区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>张北县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>康保县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>沽源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>尚义县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蔚　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>阳原县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀安县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>万全县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀来县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涿鹿县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>赤城县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>崇礼县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>沧州市</a>
                      <ul>
                      <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>康保县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>沽源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>尚义县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蔚　县</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>廊坊市</a>
                      <ul>
                       <li class="dateinput"><a autobypy="sjsrk" href="#"><span class="font_pos"><i class="external_small"></i></span>时间输入框</a></li>
                        <li class="uicombox"><a autobypy="combox" href="#"><span class="font_pos"><i class="external_small"></i></span>combox</a></li>
                        <li class="autocombox"><a autobypy="zdwc" href="#"><span class="font_pos"><i class="external_small"></i></span>自动完成</a></li>
                        <li class="jlcombox"><a autobypy="jl" href="#"><span class="font_pos"><i class="external_small"></i></span>级联</a></li>
                        <li class="formValid"><a autobypy="khdyz" href="#"><span class="font_pos"><i class="external_small"></i></span>客户端验证</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="s"><span class="font_pos"><i class="external_small"></i></span>衡水市</a>
                      <ul>
                       <li><a autobypy="cjbg" href="#" onclick="document.getElementById('formId').submit();" linkId="link_1"><span class="font_pos"><i class="external_small"></i></span>市辖区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥东区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>桥西区</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化区</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>下花园区</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>宣化县</a></li>
                        <li><a autobypy="bgcx" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>张北县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>康保县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>沽源县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>尚义县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>蔚　县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>阳原县</a></li>
                        <li><a autobypy="dkbq" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀安县</a></li>
                        <li><a autobypy="gshbd" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>万全县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>怀来县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>涿鹿县</a></li>
                        <li><a autobypy="ybtj" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>赤城县</a></li>
                        <li><a autobypy="dkck" href="#" onclick="document.getElementById('formId').submit();"><span class="font_pos"><i class="external_small"></i></span>崇礼县</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
    	 <%--  <%
   		 request.setCharacterEncoding("UTF-8");
		 String ymingcheng = request.getParameter("param");
    	 System.out.println(ymingcheng);
		 %>  --%>
       </form> 
      </div>
    </div>
  </div>
</div>
</div>

<!-- <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
<legend>查询结果</legend>
</fieldset> -->
 
<div class="layui-form">
  <table class="layui-table" style="position: absolute;left:15%;width:80%;">
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
	List<T> ts1 = tDao.load(param);
	System.out.println(2222);
	for(T t:ts1){
		System.out.println(3333);
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
</div>
<!-- <div class="layui-form-item">
    <div class="layui-input-block">
    <center>
      <button class="layui-btn" onclick="reloadPage()">返回重新查询</button>
    </center>
    </div>	
</div> -->

<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe> <!-- 有缺陷，数据刷新缓慢 -->
<!-- </form> -->
</body>
</html>