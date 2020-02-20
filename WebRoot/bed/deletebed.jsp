<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*" %>

<%@ page import="com.hospital.DataFormat" %>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>


<html>
<body>


<%
     int id = request.getParameter("id")==null?0:Integer.parseInt(request.getParameter("id")); 
     int result = db.executeUpdate("delete from bed where id=" + id);

  %>
 
   <%			 
   response.sendRedirect("list_bed.jsp");
  %>

  </body>
  </html>
