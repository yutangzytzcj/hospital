<%@ page contentType="text/html; charset=GBK" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
%>
<html>
	<head>
	  <title>医院管理系统</title>
	</head>
<frameset rows="59,*" frameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" noresize="noresize" frameborder="0" name="topFrame" marginwidth="0" marginheight="0" scrolling="no">
<frameset rows="*" cols="195,*" id="frame">
	<frame src="left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto">
	<frame src="right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="yes">
</frameset>
<frame src="UntitledFrame-1" noresize="noresize" frameborder="0" name="bottomFrame" marginwidth="0" marginheight="0" scrolling="no">
<noframes>
	<body></body>
</noframes>
</frameset>
</html>
