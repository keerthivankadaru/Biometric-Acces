<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>

<title>Upload</title>
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
.style3 {color: #76a2be}
.style4 {color: #76a2be; font-weight: bold; }
.style1 {	font-size: 35px;
	color: #0066CC;
	font-weight: bold;
}
.style6 {color: #E1E1E1}
.style7 {
	color: #0000FF;
	font-weight: bold;
}
.style8 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style9 {
	color: #FF0000;
	font-size: 18px;
}
.style10 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.style12 {color: #FF0000; font-weight: bold; font-size: 16px; }
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
          <li><a href="CloudLogi.jsp"><span>Remote Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Authenticate Server</span></a></li>
          <li class="active"><a href="AuthorityLogin.jsp"><span>Owner</span></a></li>
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
          <h2 class="style7">Upload Data !!! </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style6"><form id="form1" name="form1" method="post" action="Upload1.jsp">
          <table width="598" border="1" align="center">
            <tr>
              <td width="286" bgcolor="#FFFF00"><span class="style10">Select File :- </span></td>
              <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00" class="style4 style9">File Name :- </td>
              <td><input required="required" name="tt" type="text" id="t42" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00">&nbsp;</td>
              <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style12">Session Key  ...... </span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
      </form></h2>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AuthorityMain.jsp">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
         
          </ul>
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
