<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page session="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Addcandidateact</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
   <%
    String regno=request.getParameter("REGNO");
    String fname=request.getParameter("FNAME");
    String lname=request.getParameter("LNAME");
    String branch=request.getParameter("BRANCH");
    String eml=request.getParameter("EMAIL");
    
    
    try
    {
	    Connection con=DBCon.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into candidate values('"+regno+"','"+fname+"','"+lname+"','"+branch+"','"+eml+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
		   response.sendRedirect("Addcandidate.jsp?mmsg=Candidates Successfully Added");
        }
        else
        {
          response.sendRedirect("Addcandidate.jsp?mmsg1=Candidate not added");
        }
        
        ps.close();
        con.close();
	}
    catch(Exception e)
    {
        out.println("Invalid details");
        response.sendRedirect("Addcandidate.jsp?mmsg1=Candidate not added");
        System.out.println(e);
    }
%>
   
  
  </body>
</html>
