<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.DBCon"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Delete Candidate</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/stylee.css">
 <% 
    
      if(session.getAttribute("user")==null)
      {
       response.sendRedirect("Admin.jsp");
      }
 %>

  </head>
  
  <body>  
 <ul>
  <li><a href="Adminhome.jsp">Home</a></li>
  <li><a href="Addcandidate.jsp">Add Candidate</a></li>
  <li><a href="Deletecandidate.jsp" class="active">Delete Candidate</a></li>
  <li><a href="Result.jsp">View Result</a></li>
  <li><a href="Viewvoters.jsp">View Voters</a></li>
  <li><a href="Adminlogout.jsp">Logout</a></li>
</ul>
<h1 align="center" id=pa>Delete Candidates</h1>

<hr>
    <%
     if (request.getParameter("message") != null) {%>
        <script>alert('Candidate Deleted ');</script>
        <%}
     if (request.getParameter("message1") != null) {%>
        <script>alert('Candidate Not Deleted');</script>
        <%}
  %>
  </body>
  <table align="center">
   <tr>
   <td>
         <form action="Deletecandidateact.jsp" method="post"> 
         <label>Enter Reg. Number</label>
         <input type=text name="cn"></input>
         <input type="submit" value="Delete"></input>
         </form>
   </td>
   </tr>
  </table>
</html>
