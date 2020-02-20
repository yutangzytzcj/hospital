<%@ page contentType="text/html; charset=GBK"%>
<head>
	<title>医院管理系统</title>
	<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}

function loginout(){
   parent.window.location.href = "login.jsp";
}
</SCRIPT>
<body bgcolor="16ACFF">

	<%
		String usertype = (String) session.getAttribute("usertype");
	%>
	<table width="98%" border="0" cellpadding="0" cellspacing="0"
		background="images/tablemde.jpg">






		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4);
											height=25>
											医生信息管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="doctor/list_user.jsp" target=main>医生信息查询</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="doctor/adduser.jsp" target=main>医生信息添加</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(16);
											height=25>
											病床信息管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu16 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="bed/list_bed.jsp" target=main>病床信息查询</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="bed/addbed.jsp" target=main>病床信息添加</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>



		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(7);
											height=25>
											病人信息管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu7 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="patient/list_patient.jsp" target=main>病人信息查询</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="patient/addpatient.jsp" target=main>病人信息添加</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>


		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(19);
											height=25>
											收费信息管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu19 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="cost/list_cost.jsp" target=main>收费信息查询</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="cost/addcost.jsp" target=main>收费信息添加</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>




		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(9);
											height=25>
											统计分析
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu9 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="query/list_bedinfo.jsp" target=main>病床利用率查询</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="query/list_costinfo.jsp" target=main>收费明细查询</A>
											</TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>



		<tr>
			<td height="5" background="images/tableline_bottom.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td height="5" background="images/tableline_top.jpg"
				bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
			<td>
				<TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%"
					align=right border=0>
					<TBODY>
						<TR>
							<TD height="25"
								style="background: url(images/left_tt.gif) no-repeat">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<TD width="20"></TD>
										<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5);
											height=25>
											系统管理
										</TD>
									</tr>
								</table>
							</TD>
						</TR>
						<TR>
							<TD>
								<TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="pwd.jsp" target=main>修改密码</A>
											</TD>
										</TR>
										<TR>
											<TD width="2%">
												<IMG src="images/closed.gif">
											</TD>
											<TD height=23>
												<A href="#" onclick="loginout();" target=main>退出系统</A>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</td>
		</tr>

		<tr>
			<td height="5" background="images/tableline_bottom.jpg"></td>
		</tr>
	</table>
</body>
</html>