<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.*" %>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>


<html>
<body>


<%
	String number = DataFormat.convert(request.getParameter("number"));
	String kebie = DataFormat.convert(request.getParameter("kebie"));
	String name = DataFormat.convert(request.getParameter("name"));
	String xiangmu = DataFormat.convert(request.getParameter("xiangmu"));
	String danjia = DataFormat.convert(request.getParameter("danjia"));
	String shuliang = DataFormat.convert(request.getParameter("shuliang"));
	String jine = DataFormat.convert(request.getParameter("jine"));
	String riqi = DataFormat.convert(request.getParameter("riqi"));
	int id = request.getParameter("id") == null ? 0 : Integer.parseInt(request.getParameter("id"));
%>
  <%
  	if(id != 0) {
  		String sql = "update cost set number='" + number + "', kebie='" + kebie + "', name='" + name + "', xiangmu='" + xiangmu + "', danjia='" + danjia + "', shuliang='" + shuliang + "', jine='" + jine + "', riqi='" + riqi + "' where id=" + id;
  		db.executeUpdate(sql);
  	} else {
  		int result = db.executeUpdate("insert into cost(number,kebie,name,xiangmu,danjia,shuliang,jine,riqi) values('" + number + "','" + kebie + "','" + name + "','" + xiangmu
  				+ "','"+danjia+"','"+shuliang+"','"+jine+"','"+riqi+"')");
  	}
  %>
   <%
   	response.sendRedirect("list_cost.jsp");
   %>

  </body>
  </html>
