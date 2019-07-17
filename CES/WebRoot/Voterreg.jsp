<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Registration</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="stylee.css">
	-->
	<link rel="stylesheet" href="css/stylee.css">

  </head>
  
 <body>
 <%
   if (request.getParameter("msg1") != null) {%>
        <script>alert('No field should left blank');</script>
        <%}
 %>
 
  <div id="j">
  <img src="image/registration.png" alt="Registration"/>
  </div>
  <div id="t">
    <form action="Voterregact.jsp" method="post"> 
   <center>
    <table>
	<tr>
		<td><strong>Enter Reg No.</strong></td>
		<td><input type="text" name="RNO"></td>
	</tr>
	<tr>
		<td><strong>Enter FirstName</strong></td>
		<td><input type="text" name="RFNM"></td>
	</tr>
	<tr>
		<td><strong>Enter LastName</strong></td>
		<td><input type="text" name="RLNM"></td>
	</tr>
	<tr>
		<td><strong>Enter Password</strong></td>
		<td><input type="password" name="RPW"><br></td>
	</tr>
	<tr>
		<td><strong>Enter email_Id</strong></td>
		<td><input type="text" name="REM"></td>
	</tr>
    <tr>
        <td align="center" height="30" width="519" colspan="2"><input type="submit" value="Register"></td>
    </tr>
  </table>
  </center>
  </form>
  </div>
  </body>
</html>
