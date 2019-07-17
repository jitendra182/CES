<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Voter Details</title>
    
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
  <% 
    
      if(session.getAttribute("user")==null)
      {
       response.sendRedirect("Admin.jsp");
      }
  %>
  <body>
    <ul>
  <li><a href="Adminhome.jsp">Home</a></li>
  <li><a href="Addcandidate.jsp">Add Candidate</a></li>
  <li><a href="Deletecandidate.jsp">Delete Candidate</a></li>
  <li><a href="Result.jsp">View Result</a></li>
  <li><a href="Viewvoters.jsp" class="active">View Voters</a></li>
  <li><a href="Adminlogout.jsp">Logout</a></li>
  </ul>
    <h1 align="center" id=pa>Voters List</h1>
  <hr>
       <center>
             <table id="vt" >
          <tr>
               <th class="thh">RegNo. </th>
               <th class="thh">Name</th>
               <th class="thh">Email Id</th>
          </tr>
  <%
  try
    {
	    Connection con=DBCon.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from voters");
        
        while(rs.next())
        {
        %>   
		    
             <tr>
               <td class="tdd"><%=rs.getString(1)%></td>
               <td class="tdd"><%=rs.getString(3)%>&nbsp;<%=rs.getString(4)%></td>
               <td class="tdd"><%=rs.getString(5)%></td>
            </tr>

		 
		<%
        }
        rs.close();
        st.close();
        con.close();
	}
    catch(Exception e)
    {
        System.out.println("Error in Adminlogact"+e.getMessage());
    }
%>
</table>
           </center>
  </body>
</html>
