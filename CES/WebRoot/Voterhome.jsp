<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Voter</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="stylee.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/stylee.css">
  </head>
  
  <body>
  <% 
     if(request.getParameter("message")!=null) {%>
     <script>alert('Registration Successful');</script>
     <%}
  %>
   <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Login Successful');</script>
        <%}
        
        if(session.getAttribute("user2")==null)
      {
       response.sendRedirect("Voter.jsp");
      }
   %>
     <ul>
  <li><a href="Voterhome.jsp" class="active">Home</a></li>
  <li><a href="Givevote.jsp">Give Vote</a></li>
  <li><a href="Voterlogout.jsp">Logout</a></li>
</ul>
<hr>
   <h1 align="center"> Welcome ${user2} </h1>
   
  </body>
</html>
