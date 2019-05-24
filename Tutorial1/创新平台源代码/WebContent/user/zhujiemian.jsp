<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
      <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>河北科技创新系统</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="../css/default.css"/>
<link rel="stylesheet" href="../layui/css/layui.css"  media="all">
<link rel="SHORTCUT ICON" href="images/xt.ico" />
        <!--框架必需start-->
        <link href="css/import_basic.css" rel="stylesheet" type="text/css"/>
        <link href="skins/sky/import_skin.css" rel="stylesheet" type="text/css" id="skin" themeColor="blue"/>
        <script type="text/javascript" src="js/jquery-1.4.js">
        </script>
        <script type="text/javascript" src="js/bsFormat.js">
        </script>
        <!--框架必需end-->
        <!--引入弹窗组件start-->
        <script type="text/javascript" src="js/attention/zDialog/zDrag.js">
        </script>
        <script type="text/javascript" src="js/attention/zDialog/zDialog.js">
        </script>
        <!--引入弹窗组件end-->
        <!--修正IE6支持透明png图片start-->
        <script type="text/javascript" src="js/method/pngFix/supersleight.js">
        </script>
</head>
<body>

 <div id="nav">
 	<img src="../image/7.jpg" />
 </div>
 <div id="nav">
	 <li>
           您好！今天是
         <script>
              var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
              var now = new Date();
              var year = now.getFullYear();
              var month = now.getMonth() + 1;
              var day = now.getDate()
              var currentime = year + "年" + month + "月" + day + "日 " + weekDayLabels[now.getDay()]
              document.write(currentime)
         </script>
     </li>
 </div>
 <div id="left">
	 <div id="info">
		<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px; background-color:#66CDAA">
  <li class="layui-nav-item layui-nav-itemed">
    <a href="javascript:;">默认展开</a>
    <dl class="layui-nav-child">
      <dd><a href="jiben.jsp">选项一</a></dd>
      <dd><a href="javascript:;">选项二</a></dd>
      <dd><a href="javascript:;">选项三</a></dd>
      <dd><a href="">跳转项</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">解决方案</a>
    <dl class="layui-nav-child">
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">云市场</a></li>
  <li class="layui-nav-item"><a href="">社区</a></li>
</ul>
<script src="../layui/layui.js" charset="utf-8"></script>
	 </div>
 </div> 
<!-- <div style="height:2000px; width:220px; border-right:#000 solid 2px"></div> 加竖线的-->
 <div id="right">
 </div>
<script src="../layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>
</body>
</html>