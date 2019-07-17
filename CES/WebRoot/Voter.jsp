<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" type="text/css" href="css/style.css">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Voter Login</title>
    
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
            if (request.getParameter("msg") != null) {%>
        <script>alert('login success');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('username/password wrong');</script> 
        
        <%}
        %> 
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Online<span> College </span>Voting</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="Admin.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="Voter.jsp"><span>Voter</span></a></li>
        
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="image/voteimage.jpg" width="960" height="360" alt="" /><span><br />
       <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="post_content">
           <center>
	<h2>Voter Login</h2>
    <br><br>
           <form name="f" action="Voteract.jsp" method="post" >  <center>
<table>
   
        <tr>
              <td>
                  <strong><font size="4" color="black">&nbsp;&nbsp;&nbsp;&nbsp;Reg No:</font></strong>
                <input type="text" name="userid" id="userName1" placeholder= "Reg No." style="height:30px; width:170px"></input>
              </td>
</tr>
<br>
        <tr>
              <td>
               <strong><font size="4" color="black">Password: </font></strong>
                <input type="password" name="password" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
   
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
          <br>
	  <tr>
              <td><br/>
                 <input type="submit" value="Login"  style="height:30px; width:65px" />
              </td>
                        </tr>
 
	</table>
                    </center>
                    <h2><center><a href="Voterreg.jsp">Register</a></h2>
     </form></div>
          <div class="clr"></div>
        </div>
     </div>
      
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
  </body>
</html>
