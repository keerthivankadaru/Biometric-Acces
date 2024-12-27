<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Registration</title>
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
.style7 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style8 {color: #FF0000}
.style9 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
.style10 {font-size: 35px; color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style7">Designing Secure and Efficient Biometric-Based Secure Access Mechanism for Cloud Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
         <li><a href="index.html"><span>Home Page</span></a></li>
          <li ><a href="ClientLogin.jsp"><span>Client</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Remote Server</span></a></li>
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
          <h2><strong>WELCOME TO OWNER REGISTRATION </strong></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img">
             <form action="o_InsertData.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li class="style8 style2"><strong>
                <label for="name">Client Name (required)</label>
                <input id="name" name="userid" class="text" />
              </strong></li>
               <li class="style9">
                <label for="password">Password (required)</label>
                <input type="password" id="password" name="pass" class="text" />
               </li>
              <li class="style9">
                <label for="email">Email Address (required)</label>
                <input id="email" name="email" class="text" />
              </li>
			  <li class="style9">
                <label for="mobile">Mobile Number (required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              
              <li class="style9">
                <label for="address">Your Address</label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
			  <li class="style9">
                <label for="dob">Date of Birth (required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
			  <li class="style9">
                <label for="gender">Select Gender (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
              </li>
			  <li class="style9">
                <label for="pincode">Enter Pincode (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
			  
			  
			  <li>                <span class="style9">
                                <label for="pic">Select Profile Picture (required)</label>
                                
                                <label for="pic"></label>
                </span>                
                                <span class="style10">
                <label for="pic"></label>
                <input type="file" id="pic" name="pic" class="text" />
                                </span>
                <ol>
                  
                  <ol>
                      
                    <ol>
                      <li class="style10"></li>
					  
					  <p><span class="style8 style36 style2"><strong>
                      <label for="label">Select Finger Print(required)</label>
					  </strong></span><span class="style2 style36 style8"><strong><label for="label"></label>
					  </strong></span><span class="style2 style36"><strong><label for="label"></label>
					  </strong></span><span class="style36 style2"><label for="label"></label>
					  </span><span class="style36"><label for="label"></label>
            </span> <span class="style36">
            <input type="file" id="label" name="pic2" class="text" />
            </span></p>
                    </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
            <p>&nbsp;            </p>
            <p>
              <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
            </p>
          </form>
            <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ClientLogin.jsp"><span>Client</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Remote Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Authenticate Server</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Owner</span></a></li>
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
