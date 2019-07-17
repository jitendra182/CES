<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Admin</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" href="css/stylee.css">
  </head>
  
  <body>
  
    <% 
    if (request.getParameter("mssg") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
    
        if (request.getParameter("msg") != null) {%>
        <script>alert('Login Successfully');</script>
        <%}
    
      if(session.getAttribute("user")==null)
      {
       response.sendRedirect("Admin.jsp");
      }
    %>
    <ul>
  <li><a href="Adminhome.jsp" class="active">Home</a></li>
  <li><a href="Addcandidate.jsp">Add Candidate</a></li>
  <li><a href="Deletecandidate.jsp">Delete Candidate</a></li>
  <li><a href="Result.jsp">View Result</a></li>
  <li><a href="Viewvoters.jsp">View Voters</a></li>
  <li><a href="Adminlogout.jsp">Logout</a></li>
</ul>
<hr>
   <h1 align="center"> Welcome ${user} </h1>
     
     
  </body>
</html>
