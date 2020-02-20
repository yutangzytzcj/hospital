<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page import="java.util.*,com.hospital.*" %>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>
<html>
<head>
<title>
µÇÂ¼ÑéÖ¤
</title>
</head>
<body bgcolor="#ffffff">
<%
	String user = DataFormat.convert(request.getParameter("username"));
	String pwd = DataFormat.convert(request.getParameter("password"));
	String URL = "";
	String sql = "";
	 
	sql = "SELECT * FROM loginuser where loginname='" + user
			+ "'and loginpwd='" + pwd + "'";
	URL = "index.jsp";
	ResultSet rs = db.executeQuery(sql);
	if (rs.next()) {
		String loginname = rs.getString("loginname");
		int uid = rs.getInt("id");
		request.getSession(true);
		session.setAttribute("loginname", loginname);
		session.setAttribute("uid", uid);
		response.sendRedirect(URL);
	} else
	response.sendRedirect("error.jsp");
	 
%>

</body>
</html>
