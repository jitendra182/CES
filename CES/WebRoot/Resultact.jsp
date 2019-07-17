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
    
    <title>Result</title>
    
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
<h1 align="center">Showing Results</h1>
<hr>
<%
String vl=request.getParameter("cnm");
String sql="select count(cname) from result where cname='"+vl+"'";
 try
    {
	    Connection con=DBCon.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        String Countrow="";
        if(rs.next())
        {
           Countrow = rs.getString(1);
		   %>
		   <table align="center">
		   <tr>
		   <th><h1>Total number of votes got &nbsp;&nbsp;&nbsp;=</h1></th>
		   <th><h1><%out.print(Countrow);%></h1></th>
		   </tr>
		   <tr>
		   <td><form method="post" action="Result.jsp">
                <button type="submit">Click to Back</button>
               </form>
           </td>
		   </tr>
		   </table>
		   
		<%
        }
        
        st.close();
        rs.close();
        con.close();
	}
    catch(Exception e)
    {
        out.println("Invalid details");
        response.sendRedirect("Result.jsp?mmsg1=Candidate not added");
        System.out.println(e);
    }
%>
  </body>
</html>
