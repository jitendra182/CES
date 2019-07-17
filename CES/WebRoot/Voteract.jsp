<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>
<%
    String uid = request.getParameter("userid");
    String pwd = request.getParameter("password");
    try
    {
	    Connection con=DBCon.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from voters where regno='"+uid+"' and password='"+pwd+"'");
        if(rs.next())
        {
		   session.setAttribute("user2",uid);
		   response.sendRedirect("Voterhome.jsp?msg=login success");
        }
        else 
        {
            response.sendRedirect("Voter.jsp?msg1=login failed");
        }
        rs.close();
        st.close();
        con.close();
	}
    catch(Exception e)
    {
      
        System.out.println("Error in Voteract"+e.getMessage());
    }
%>
