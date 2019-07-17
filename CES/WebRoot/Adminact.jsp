<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.DBCon"%>
<%
    String uname = request.getParameter("username");
    String pwd = request.getParameter("password");
    try
    {
	    Connection con=DBCon.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from adminlogin where adid='"+uname+"' and adpw='"+pwd+"'");
        if(rs.next())
        {
		 session.setAttribute("user",uname);
		   response.sendRedirect("Adminhome.jsp?msg=login success");
        }
        else 
        {
            response.sendRedirect("Admin.jsp?msg1=login failed");
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
