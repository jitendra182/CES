<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Addcandidate</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/stylee.css">

  </head>
  <% 
    
      if(session.getAttribute("user")==null)
      {
       response.sendRedirect("Admin.jsp");
      }
  %>
  <body>
  <%
   if (request.getParameter("mmsg") != null) {%>
        <script>alert('Candidate Added Successfully');</script>
        <%}
   if (request.getParameter("mmsg1") != null) {%>
        <script>alert('Candidate Not added');</script>
        <%}
  %>
    
    <ul>
  <li><a href="Adminhome.jsp">Home</a></li>
  <li><a href="Addcandidate.jsp" class="active">Add Candidate</a></li>
  <li><a href="Deletecandidate.jsp">Delete Candidate</a></li>
  <li><a href="Result.jsp">View Result</a></li>
  <li><a href="Viewvoters.jsp">View Voters</a></li>
  <li><a href="Adminlogout.jsp">Logout</a></li>
</ul>
<h1 align="center" id=pa>Add Candidates</h1>
    <hr>

<div id="tb">
<form method="post" action="Addcandidateact.jsp" id="fm">
	<table align="center" border="" width="100%" id="zz">
		<tr>
			<td>Enter Regno</td>
			<td><input type="text" name="REGNO" size="20"></td>
		</tr>
		<tr>
			<td>Enter FirstName</td>
			<td><input type="text" name="FNAME" size="20"></td>
		</tr>
		<tr>
			<td>Enter LastName</td>
			<td><input type="text" name="LNAME" size="20"></td>
		</tr>
		<tr>
			<td>Enter Branch</td>
			<td><input type="text" name="BRANCH" size="20"></td>
		</tr>
		<tr>
			<td>Enter Email</td>
			<td><input type="text" name="BRANCH" size="20"></td>
		</tr>
		
        <tr id="cen"><br><br>
			<td><input type="submit" value="ADD CANDIDATE"></input></td>
		</tr>
	</table>
</form>
</div>
</body>
</html>
