
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page session="true" %>
<%
    String regno=request.getParameter("RNO");
    String pwd=request.getParameter("RPW");
    String fnm=request.getParameter("RFNM");
    String lnm=request.getParameter("RLNM");
    String eml=request.getParameter("REM");
    
    
    try
    {
	    Connection con=DBCon.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into voters values('"+regno+"','"+pwd+"','"+fnm+"','"+lnm+"','"+eml+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
           session.setAttribute("user",regno);
		   response.sendRedirect("Voterhome.jsp?message=Registration successful");
        }
        else
        {
          response.sendRedirect("Voterreg.jsp?message1=Registration failed");
        }
        
        ps.close();
        con.close();
	}
    catch(Exception e)
    {
        out.println("Invalid details");
        response.sendRedirect("Voterreg.jsp");
        System.out.println(e);
    }
%>

