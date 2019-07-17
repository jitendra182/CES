<%@page import="java.sql.*"%>
<%@page import="com.DBCon"%>

<%
 String cnm=request.getParameter("cn");
try
    {   
	    Connection con=DBCon.getConnection();
        Statement st=con.createStatement();
        int i=st.executeUpdate("delete from candidate where regno='"+cnm+"'");
        if(i>0)
        {
          response.sendRedirect("Deletecandidate.jsp?message=Candidate Successfully Deleted");
        }
        else
        {
          response.sendRedirect("Deletecandidate.jsp?message1=Candidate Not Delete");
        }
        st.close();
        con.close();
	}
    catch(Exception e)
    {
        out.println("Invalid details");
        response.sendRedirect("Deletecandidate.jsp?message1=Candidate Not Delete");
        System.out.println(e);
    }
%>