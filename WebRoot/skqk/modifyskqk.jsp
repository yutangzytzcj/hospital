<%@page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="db" scope="page" class="com.hospital.Dbcoon"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
String applicationPath = basePath + "/" + "application";
%>
<%@ page import="java.sql.*" %>
<html>
<body>
    <script language="javascript">
 function checkform() {
	if (document.addForm.name.value=="" || document.addForm.rnrs.value==""){
		alert("������������Ϣ��");
		return false;
	}
	else {
		alert("�޸ĳɹ���");
		return true;
	}
  }
</script>



 <link rel="stylesheet" type="text/css" media="all" href="<%=path%>/images/css1/ioa.css" />
 <script type="text/javascript" src="<%=path%>/calendar/WdatePicker.js"></script>
  <% request.setCharacterEncoding("gb2312"); %>
  
  
<head>
<title>
�޸��Ͽ������Ϣ
</title>
</head>

<FORM Action="saveadd.jsp" Method="post" name="addForm">
 
<%
  String id=request.getParameter("id");

  String sql="select * from skqk where id="+id;
  ResultSet rs = db.executeQuery(sql);
  while(rs.next()) { %>
  <input type="hidden" name="id"  maxlength="32" class=inputnormal value="<%=rs.getString("id")%>">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pad5">
  <tr>
	<td valign="top" align="left" class="pad5">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="dqbg margb5">
          <tr>
            <td width="2%" align="right" class="pad05"><img src="<%=path%>/images/img2.gif" width="16" height="16"></td>
            <td width="98%" align="left" class="lan13b">�Ͽ�������� > �޸��Ͽ������Ϣ</td>
          </tr>
        </table>
		<table width="100%" border="0" cellpadding="1" cellspacing="1" class="table-border margb5">
		  <tr>
			<td width="14%" align="right" class="COLLECTION">��ʦ������</td>
		    <td width="36%" align="left" class="even padl5">
      <select   name="jsmc">
             
             <%
 

  String sql1="select * from users where usertype='��ʦ'";
  ResultSet rs1 = db.executeQuery(sql1);
  while(rs1.next()) { %>
		        <option <% if(rs.getString("jsmc").equals(rs1.getString("rname"))){ %>selected="true"<%
		        } %>  ><%=rs1.getString("rname")==null?"":rs1.getString("rname")%></option>
		      
		          <% } rs1.close();%>
	          </select>	





			 </td>
		   

		  </tr>
		  
		  
		     <tr>
 
		    <td width="14%" align="right" class="COLLECTION">�Ͽ�ʱ�䣺</td>
		    <td width="36%" align="left" class="even padl5">	    <input class="Wdate" type="text" name="sksj"  value="<%=rs.getDate("sksj")%>" maxlength="32"
					onfocus="WdatePicker({readOnly:true})" /> </td>
		    
	
		  </tr>
		   <tr>
 
		    <td width="14%" align="right" class="COLLECTION">��ʱ����</td>
		    <td width="36%" align="left" class="even padl5"><input type=text name="kss" value="<%=rs.getInt("kss")%>"  maxlength="32" class="inputnormal" value=""></td>
		  </tr>
          <tr>
		    <td align="right" class="COLLECTION">���</td>
		    <td   align="left" class="even padl5">
		    <%  
		       String lb =  rs.getString("lb"); 
		    %>
		      <select   name="lb">
		        <option  <% if("����".equals(lb)){ %>selected="true"<%
		        } %> >����</option>
		        <option  <% if("ʵ��".equals(lb)){ %>selected="true"<%
		        } %> >ʵ��</option>
	          </select>		    </td>
	      </tr>
		  <tr>
		    <td align="right" class="COLLECTION">ѧ�����</td>
		    <td   align="left" class="even padl5">
		    <%  
		       String xslb =  rs.getString("xslb"); 
		    %>
		      <select   name="xslb">
		        <option  <% if("�Կ�".equals(xslb)){ %>selected="true"<%
		        } %> >�Կ�</option>
		        <option  <% if("�ɽ�".equals(xslb)){ %>selected="true"<%
		        } %> >�ɽ�</option>
		        <option  <% if("ͳ��".equals(xslb)){ %>selected="true"<%
		        } %> > ͳ��</option>
	          </select>		    </td>
	      </tr>
	      		   <tr>
 
		    <td width="14%" align="right" class="COLLECTION">������ҵ������</td>
		    <td width="36%" align="left" class="even padl5"><input type=text name="pgzysl" value="<%=rs.getInt("pgzysl")%>"   maxlength="32" class="inputnormal" value=""></td>
		  </tr>
		  
	 
	  </table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		    <td width="50%" align="right" class="padr5"><input type="submit" onclick="javascript:return(checkform());" name="button" value="�� ��" class="button"></td>
		    <td width="50%" align="left" class="padl5"><input name="button1" type="button" class="button" onClick="history.go(-1);" value="�� ��"></td>
          </tr>
        </table>
    </td>
  </tr>
</table>

  <% } rs.close();%>






</form>


<br>
<br>
<br>
<br>
 
</body>
</html>
