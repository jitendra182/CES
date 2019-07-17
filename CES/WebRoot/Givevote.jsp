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
    
    <title>Give Vote</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" type="text/css" href="css/stylee.css">
  </head>
  
  <body>
    <% 
       if(session.getAttribute("user2")==null)
       {
         response.sendRedirect("Voter.jsp");
       }
       
       
     if(request.getParameter("mg")!=null) {%>
     <script>alert('Successfully Votted');</script>
     <%}
     
     if(request.getParameter("mg2")!=null) {%>
     <script>alert('Vote Not Submitted');</script>
     <%}
  %>
  <ul>
  <li><a href="Voterhome.jsp">Home</a></li>
  <li><a href="Givevote.jsp" class="active">Give Vote</a></li>
  <li><a href="Voterlogout.jsp">Logout</a></li>
  </ul>
<hr>

  <h1 align="center" id=pa>Choose candidate as per your choice</h1>
    <hr>
    <form action="Givevoteact.jsp" method="post">
        <center>
            <label>Choose a candidate</label><br>
    <select name="vote">
        <option value="">Click here to choose</option>
        <%
         try
         {
          Connection con=DBCon.getConnection();
          PreparedStatement pst=con.prepareStatement("select * from candidate");
          ResultSet rs=pst.executeQuery();
          while(rs.next())
          {
           %>
            <option value="<%=rs.getString(2)%><%=rs.getString(3)%>"><%=rs.getString(2)%>&nbsp;<%=rs.getString(3)%></option>
           <%
          }
          rs.close();
          pst.close();
          con.close();
         }
         catch(Exception e)
         {
          System.out.println("Error in "+e.getMessage());
         }
         %>
       
     </select></br>
    <input type="submit" value="Give Vote"></input>
    </center>
    </form>
  </body>
</html>
