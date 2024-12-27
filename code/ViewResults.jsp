<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All End Clients</title>
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
.style9 {
	color: #0000FF;
	font-weight: bold;
}
.style15 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style16 {
	font-size: 24px;
	font-weight: bold;
}
.style22 {font-size: 16px; color: #FF0000; font-weight: bold; font-style: italic; }
.style25 {font-size: 16px; }
.style26 {
	color: #000000;
	font-weight: bold;
}
.style28 {font-size: 16px; color: #000000; font-weight: bold; font-style: italic; }
.style31 {font-size: 16px; color: #000000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
        </form>
      </div>
      <div class="logo">
        <h1 class="style15">Designing Secure and Efficient Biometric-Based Secure Access Mechanism for Cloud Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ClientLogin.jsp"><span>Client</span></a></li>
          <li class="active"><a href="CloudLogin.jsp"><span>Remote Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Authenticate Server</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Owner</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a>
		 <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a>
		  <a href="CloudMain.jsp"><img src="images/slide3.jpg" width="960" height="360" alt=""/></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style16">View Results </h2>
          <div class="clr"></div>
          <div class="img">
            <div class="post_content">
              <h2 align="center">
                
                <iframe width="755" height="400" src="Results.jsp"></iframe>
              </h2>
            </div>
          </div>
        </div>
      </div>
      <a href="CloudMain.jsp" class="style9"></a>
      <div class="clr">
     
        <p align="left">&nbsp;</p>
        <div align="left"><br/>
        </div>
        <p align="center"><a href="CloudMain.jsp" class="style9 style2"> Back</a></p>
      </div>
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
