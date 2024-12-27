<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
                <%@page import="java.util.*"%>
                <%@ include file="connect.jsp"%>
                <%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
                <%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
                <%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
                <%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trustee Main</title>
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
.style2 {font-size: 14px}
.style1 {	font-size: 35px;
	color: #0066CC;
	font-weight: bold;
}
.style7 {
	color: #0000FF;
	font-weight: bold;
}
.style8 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style9 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style10 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style8">Designing Secure and Efficient Biometric-Based Secure Access Mechanism for Cloud Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
           <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ClientLogin.jsp"><span>Client</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Remote Server</span></a></li>
          <li class="active"><a href="TrusteeLogin.jsp"><span>Authenticate Server</span></a></li>
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
          <h2 class="style7">View All Attackers </h2>
          <p class="style7">&nbsp;</p>
          <table width="965" border="1" align="center">
  <tr>
    <td width="140" height="32" bgcolor="#FFFF00"><div align="center" class="style10 style22"><strong>Attacker Name </strong></div></td>
      <td width="293" bgcolor="#FFFF00"><div align="center" class="style10 style22"><strong>File Name </strong></div></td>
    <td width="178" bgcolor="#FFFF00"><div align="center" class="style10 style22"><strong>Secret Key Used </strong></div></td>
 
    <td width="205" bgcolor="#FFFF00"><div align="center" class="style10 style22"><strong>Date & Time</strong></div></td>
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from attacker "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
		s2=rs.getString(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
		
	
		%>

  <tr>
    <td height="29"><div align="center" class="style25 style26"><em><%=s2%></em></div></td>
    <td><div align="center" class="style32"><em><%=s3%></em></div></td>
	
	<td><div align="center" class="style32"><em><%=s4%></em></div></td>
    
	 <td><div align="center" class="style32"><em><%=s5%></em></div></td>
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
          <p><a href="TrusteeMain.jsp" class="style9">Back</a></p>
          <div class="clr"></div>
        </div>
        
        <p class="pages">&nbsp;</p>
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
