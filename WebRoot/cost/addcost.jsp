<%@page contentType="text/html; charset=gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	String applicationPath = basePath + "/" + "application";
%>
<%@ page import="java.sql.*"%>
<html>
	<body>
		<script language="javascript">
function checkform() {
	if (document.addForm.kebie.value == ""
			|| document.addForm.number.value == "") {
		alert("请输入完整信息！");
		return false;
	} else {
		alert("添加成功！");
		return true;
	}
}
</script>



		<link rel="stylesheet" type="text/css" media="all"
			href="<%=path%>/images/css1/ioa.css" />
		<script type="text/javascript" src="<%=path%>/calendar/WdatePicker.js"></script>		
		<%
			request.setCharacterEncoding("gb2312");
		%>
		<head>
			<title>添加收费信息</title>
		</head>

		<FORM Action="savecost.jsp" Method="post" name="addForm">


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				class="pad5">
				<tr>
					<td valign="top" align="left" class="pad5">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="dqbg margb5">
							<tr>
								<td width="2%" align="right" class="pad05">
									<img src="<%=path%>/images/img2.gif" width="16" height="16">
								</td>
								<td width="98%" align="left" class="lan13b">
									收费管理 > 添加收费信息
								</td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="1" cellspacing="1"
							class="table-border margb5">
							<tr>
								<td width="14%" align="right" class="COLLECTION">
									科别：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="kebie" maxlength="32"
										class=inputnormal value="">
									<font color="red">*</font>
								</td>


							</tr>

							<tr>

								<td width="14%" align="right" class="COLLECTION">
									病床号：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="number" maxlength="32"
										class="inputnormal" value=""><font color="red">*</font>
								</td>
								
							</tr>
							<tr>

								<td w idth="14%" align="right" class="COLLECTION">
									姓名：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="name" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									收费项目：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="xiangmu" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									单价：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="danjia" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									数量：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="shuliang" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									金额：
								</td>
								<td width="36%" align="left" class="even padl5">
									<input type=text name="jine" maxlength="32" class="inputnormal"
										value="">
								</td>
							</tr>
							<tr>

								<td width="14%" align="right" class="COLLECTION">
									日期：
								</td>
								<td width="36%" align="left" class="even padl5">
									
										<input class="Wdate" type="text" name="riqi"  maxlength="32"
					onfocus="WdatePicker({readOnly:true})" />	
								</td>
							</tr>
							
							
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="50%" align="right" class="padr5">
									<input type="submit" onclick="javascript:return(checkform());"
										name="button" value="保 存" class="button">
								</td>
								<td width="50%" align="left" class="padl5">
									<input name="button1" type="button" class="button"
										onClick="history.go(-1);" value="返 回">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>







		</form>


		<br>
		<br>
		<br>
		<br>

	</body>
</html>
