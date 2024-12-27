

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->	
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.*"%>

          
<%
				   ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,bank="",name="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,image2=null,cloud=null,bin = "";
				
					FileInputStream fs=null,fs2=null;
					
					File file1 = null, file2 = null;	

					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
					
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
							}		
						}
			
			
					
								String sql1="SELECT * FROM owner where  thumbname='"+image+"' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									
											
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
     
	  
					response.sendRedirect("GenerateKey.jsp");		
										
										
								 }
								else
								{
										%>
									              <br/>
											    </div>
												<p align="center" class="style1">Finger Print Mismatch, Please Provide Correct Finger Print!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="GenerateKey.jsp"><strong>Back</strong></a>
									              <%
								}
				
					
					
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>
												  
                                                </div>
												