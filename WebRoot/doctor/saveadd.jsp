<%@page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hospital.*" %>

<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>


<html>
<body>


<%
	 String number = DataFormat.convert(request.getParameter("number"));
	 String name = DataFormat.convert(request.getParameter("name"));
	 String sex = DataFormat.convert(request.getParameter("sex"));
	 String zhicheng = DataFormat.convert(request.getParameter("zhicheng"));
	 String zhiwu = DataFormat.convert(request.getParameter("zhiwu"));
	 String kebie = DataFormat.convert(request.getParameter("kebie"));
	 String birthtime = DataFormat.convert(request.getParameter("birthtime"));
	 String worktime = DataFormat.convert(request.getParameter("worktime"));
     
     int id = request.getParameter("id")==null?0:Integer.parseInt(request.getParameter("id")); 
   

  %>
  <%
 
   if(id!=0){
      String sql = "update doctor set number='"+number+"', name='"+name+"', sex='"+sex+"',zhicheng='"+zhicheng+"',zhiwu='"+zhiwu+"',kebie='"+kebie+"',birthtime='"+birthtime+"',worktime='"+worktime+"' where id="+id;
      db.executeUpdate(sql);
   }else{
       int result = db.executeUpdate("insert into doctor(number,name,sex,zhicheng,zhiwu,kebie,birthtime,worktime) values('"+number+"','"+name+"','"+sex+"','"+zhicheng+"','"+zhiwu+"','"+kebie+"', '"+birthtime+"','"+worktime+"')");
   }
 
   
  %>
   <%			 
   response.sendRedirect("list_user.jsp");
  %>

  </body>
  </html>
