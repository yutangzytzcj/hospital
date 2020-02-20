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
	String sex = DataFormat.convert(request.getParameter("sex"));
	String chuyuan = DataFormat.convert(request.getParameter("chuyuan"));
	String age = DataFormat.convert(request.getParameter("age"));
	String bingzheng = DataFormat.convert(request.getParameter("bingzheng"));
	String doctor = DataFormat.convert(request.getParameter("doctor"));
	String ruyuan = DataFormat.convert(request.getParameter("ruyuan"));
	int id = request.getParameter("id") == null ? 0 : Integer.parseInt(request.getParameter("id"));
%>
  <%
  	if(id != 0) {
  		String sql = "update patient set number='" + number + "', kebie='" + kebie + "', chuyuan='" + chuyuan + "', age='" + age + "', bingzheng='" + bingzheng + "', doctor='" + doctor + "', ruyuan='" + ruyuan + "', name='" + name + "',sex='" + sex + "' where id=" + id;
  		db.executeUpdate(sql);
  	} else {
  		int result = db.executeUpdate("insert into patient(number,kebie,name,sex,chuyuan,age,bingzheng,doctor,ruyuan) values('" + number + "','" + kebie + "','" + name + "','" + sex
  				+ "','"+chuyuan+"','"+age+"','"+bingzheng+"','"+doctor+"','"+ruyuan+"')");
  	}
  %>
   <%
   	response.sendRedirect("list_patient.jsp");
   %>

  </body>
  </html>
