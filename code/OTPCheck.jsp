
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@page  import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page  import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page  import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%

	String pass = request.getParameter("otp");

	try {

		String name=(String)application.getAttribute("uname") ;
		application.setAttribute("uname",name) ;

		String sql = "SELECT * FROM user where name='" + name
				+ "' and otp='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()) {

			response.sendRedirect("ClientMain.jsp");

		} else {

			response.sendRedirect("wrongotp.jsp");
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
		
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						String file="OTP Attacker";
						
						
						String strQuery22 = "insert into attacker(user,fname,sk,dt) values('"+name+"','"+file+"','"+pass+"','"+dt+"')";
						connection.createStatement().executeUpdate(strQuery22);
			
		}

	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

