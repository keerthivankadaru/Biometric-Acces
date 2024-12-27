

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

  <%
  		   
		  
  
   try {
	   
		
		int uid = Integer.parseInt(request.getParameter("id"));

			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
			Cipher encoder = Cipher.getInstance("RSA");
			KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
//				System.out.println("PUBLIC KEY" + pub);
		
				String pk = String.valueOf(pub);


       Statement st1 = connection.createStatement();
       String query1 ="update cloudserver set sk='"+pk+"' where id='"+uid+"' ";
	   st1.executeUpdate (query1);
	   
	   
	    Statement st11 = connection.createStatement();
       String query11 ="update authorityfile set sk='"+pk+"' where id='"+uid+"' ";
	   st11.executeUpdate (query11);
     
	   connection.close();
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   
   
   response.sendRedirect("GenerateKey.jsp");
		 
		  
		  
%>



