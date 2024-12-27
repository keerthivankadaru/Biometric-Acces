<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>End Client Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {	font-size: 35px;
	color: #0066CC;
	font-weight: bold;
}
.style7 {
	color: #0000FF;
	font-weight: bold;
}
.style8 {font-size: 30px}
.style9 {color: #FF0000}
.style10 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style1 style8">Designing Secure and Efficient Biometric-Based Secure Access Mechanism for Cloud Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="ClientLogin.jsp"><span>Client</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Remote Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Authenticate Server</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Owner</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> 
		<a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a>
		 <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style7">VIEW ALL FILES </h2>
          <p>&nbsp;</p>
          <table width="965" border="1" align="center">
  <tr>
    <td width="140" height="32" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>File Name </strong></em></div></td>
      <td width="293" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>Session Key </strong></em></div></td>
    <td width="178" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>Private Key </strong></em></div></td>
    <td width="115" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>Rank </strong></em></div></td>
    <td width="205" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>Date & Time</strong></em></div></td>
	<td width="205" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>Access Authorization</strong></em></div></td>
	<td width="205" bgcolor="#FFFF00"><div align="center" class="style22 style9"><em><strong>File Owner</strong></em></div></td>
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from cloudserver "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
	
		%>

  <tr>
    <td height="29"><div align="center" class="style9 style26 style25"><strong><%=s2%></strong></div></td>
    <td><div align="center" class="style9 style31"><strong><%=s3%></strong></div></td>
	
	<td><div align="center" class="style9 style31"><strong><%=s4%></strong></div></td>
    
	 <td><div align="center" class="style9 style31"><strong><%=s5%></strong></div></td>
	  <td><div align="center" class="style9 style31"><strong><%=s6%></strong></div></td>
	 
	  <td><div align="center" class="style9 style31"><strong><%=s7%></strong></div></td>
	  
	   <td><div align="center" class="style9 style31"><strong><%=s8%></strong></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
          </p>
          <div class="clr"><a href="ClientMain.jsp" class="style10">Back</a></div>
        </div>
        
      </div>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
