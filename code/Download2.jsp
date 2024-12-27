<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>

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
.style2 {font-size: 14px}
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
.style11 {font-size: 18}
.style12 {font-weight: bold; color: #0066CC;}
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
          <h2 class="style7">Confirm Download Files </h2>
          <p>&nbsp;</p>
            <%
		  	
		    	try 
				{
				
				
    String user=(String)application.getAttribute("uname");
		  		String file = request.getParameter("t1");
				String oname=request.getParameter("t12");
				String sk=request.getParameter("t13");
				
				String status="Yes";
				String status1="No";
				
				String strQuery = "select * from cloudserver where fname='"+file+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
					if(rs.next()==true)
					{
						String ct=rs.getString(3);
						String td=rs.getString(4);
						String sk1=rs.getString(5);
						String rank=rs.getString(6);
						String acc=rs.getString(8);
						
			
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
						
						if(acc.equals(status)  )
						{
						
						String strQuery1 = "select * from cloudserver where fname='"+file+"' and sk='"+sk+"' and sk!='"+status1+"' ";
					    ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					
					       if(rs1.next()==true)
						 {
						int updaterank = Integer.parseInt(rank)+1;
						String strQuery2 = "update cloudserver set rank='"+updaterank+"' where fname='"+file+"'";
						connection.createStatement().executeUpdate(strQuery2);	
			%>
		  </p>
		  <p align="center" class="style1">File Contents</p>
		  
		    <label>
	            <div align="center">
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
	              <br/>
	              <br/>
	              <td><button onClick="saveTextAsFile()">Download</button>
                  <p><a href="Download.jsp">Back</a></p></td>
            </div>
		    </label>
		  <p align="center">&nbsp; </p>
		  <p>
		    <%	
			}
			else // Else condition for Checking Secret Key 
			{%>
			  
		  <p>
		  <h1 class="style1">No Secret Key Generated or Secret key is mis Matched !!!</h1>
		  
		  
			<p>
		  <h1 class="style1">No Access Permission For this File !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
			<%
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
		
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						
						
						String strQuery22 = "insert into attacker(user,fname,sk,dt) values('"+user+"','"+file+"','"+sk+"','"+dt+"')";
						connection.createStatement().executeUpdate(strQuery22); }
			} 
			
			
			else // Else condition for Checking Access Permission
			{
			%>
			<p>
		  <h1 class="style1">No Access Permission For this File !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
			<%
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
		
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
				
						
						
						String strQuery22 = "insert into attacker(user,fname,sk,dt) values('"+user+"','"+file+"','"+sk+"','"+dt+"')";
						connection.createStatement().executeUpdate(strQuery22);
			}
					
			}
					else
					{
						
		%>
	      </p>
		  <p>
		  <h1 class="style1">File Doesn't Exist !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
	<%
					}
				
	 			
		  connection.close();
		  } 
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		 
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
