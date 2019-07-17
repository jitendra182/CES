<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>
<%@page import="javax.servlet.http.HttpSession"%>

<% 
   String val=request.getParameter("vote");
   try
    {
	    Connection con=DBCon.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into result values('"+val+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
         response.sendRedirect("Givevote.jsp?mg=Successfully Votted");
        }
        else
        {
        response.sendRedirect("Voterhome.jsp?mg2=Fail");
        }
        ps.close();
        con.close();
	}
    catch(Exception e)
    {
        System.out.println("Error in Adminlogact"+e.getMessage());
        response.sendRedirect("Givevote.jsp?mg2=Fail");
    }
 %>