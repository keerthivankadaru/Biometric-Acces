<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@include file="connect.jsp" %>


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
.style11 {font-size: 18}
.style13 {
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
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
	String file = request.getParameter("t1");
	String owner = request.getParameter("t22");

	String user=(String)application.getAttribute("uname");

	String status="Yes";
	String strQ = "select * from cloudserver where  Access='"+status+"' ";
	ResultSet rs54 = connection.createStatement().executeQuery(strQ);
	if(rs54.next()== true)
	{
	
				String mac="";
				String sk="";
				String oon="";
				String strQuery = "select * from cloudserver where fname='"+file+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{
						oon=rs.getString(2);
						mac=rs.getString(5);
						sk=rs.getString(6);
						
					SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;	
					String task="Downloaded";
					String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
			%>
			
			<form action="Download2.jsp" method="post" name="form1" id="form1">
            <table width="478" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              <tr>
                <td width="223" bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Enter File Name :-</strong></span></td>
                <td width="245"><span class="style11">
                  <label>
                  <input required name="t1" type="text" value="<%=file%>" size="40" readonly="readonly"/>
                  </label>
                </span></td>
              </tr>
				<tr>
		<td width="223" bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Enter Owner Name :-</strong></span></td>
		<td width="245"><span class="style11">
		  <label> 
		  <input required name="t12"
			type="text"  size="40" value="<%=owner%>" readonly="readonly"/> 
		  </label>
		</span></td>
	</tr>
			  
              <tr>
                <td bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Secret Key :-</strong></span></td>
                <td><input name="t13" type="text"  size="40" /></td>
              </tr>
              <tr>
                <td bgcolor="#A6EDFF">&nbsp;</td>
                <td><span class="style11"></span></td>
              </tr>
              <tr>
                <td bgcolor="#A6EDFF"><div align="right"></div></td>
                <td><span class="style11">
                  <label>
                  <input name="Submit2" type="submit" class="style9" value="Decrypt and Download" />
                  </label>
                </span></td>
              </tr>
            </table>
          </form>		
			
			<%	
					}
					else
					{
		
						out.println("File Doesn't Exist !!!");
			%>
						<p>&nbsp;</p>
						<p><a href="Download.jsp">Back</a></p>
						<%
					}
				}
	}
	else{
		%>
		<h1 class="style13"> You are not Authorized!!<br/> Please Contact Proxy Server!!!</h1>
		<p><a href="Download.jsp">Back</a></p>
		<%
	}
           connection.close();
         
	 
	 }
  catch(Exception e)
  {
    out.println(e.getMessage());
    e.printStackTrace();
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
