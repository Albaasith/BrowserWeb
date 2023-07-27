<%
response.setHeader("Cache-Control","no-cache,no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<% String routArgs=request.getParameter("routineArgs"); %>
<% String compId=request.getParameter("compId"); %>
<% String usrRole=request.getParameter("usrRole"); %>
<% String skin=request.getParameter("skin"); %>
<% String server=request.getServerName(); %>
<% int portno=request.getServerPort(); %>
<% String compScreen=request.getParameter("compScreen"); %>
<% String contextRoot=request.getContextPath(); %>
<% String user=request.getParameter("user"); %>


<html>
<head>
      <link rel="icon" href="../plaf/icon/favicon.ico"/>
      <link rel="stylesheet" type="text/css" href="../plaf/style/<%= skin %>/general.css">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <script src="../scripts/jsp.js"></script>
      <title>Processing...</title>
</head>
<body onLoad="dorequest()" oncontextmenu="return false;">
		<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td width="33%"></td>
				<td align="middle" bgcolor="#e8ebf2" width="34%" height="75"><P align="center"><b><FONT color="#213a7d">Your 
								request is being processed.</FONT></b></P>
					<P align="center">
						<img border="0" src="../plaf/images/default/gears.gif">
					</P>
				</td>
				<td width="33%"></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
<form name="request" method="POST" action="../servlet/BrowserServlet">
	<input type="hidden" name="requestType" value="UTILITY.ROUTINE"/>
	<input type="hidden" name="routineName" value="OS.NEW.DEAL"/>
	<input type="hidden" name="routineArgs" value="<%= routArgs %>"/>
	<input type="hidden" name="command" value="globusCommand"/>
	<input type="hidden" name="companyId" value="<%= compId %>"/>	
	<input type="hidden" name="userRole" value="<%= usrRole %>"/>    
	<input type="hidden" name="compScreen" value="<%= compScreen %>"/>	
	<input type="hidden" name="user" value="<%= user %>"/>	
</form>

</body>
</html>
