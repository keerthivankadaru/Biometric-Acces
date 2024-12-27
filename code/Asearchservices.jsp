<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>
<%@ page import="java.sql.*"%>

<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%

	JSONObject obj=new JSONObject();
	String  s77=null,s2=null, s3=null,s4=null,s5=null,s6=null,s66=null,s8=null,s9=null,s10=null,lowerCaseAppDesc=null;
	String lowerCaseInput=null;
	String s7=null;
		
	int k=0;

      	try 
	{

	   String name=request.getParameter("kname");
	    
	   

	   ArrayList al = new ArrayList();

           
				String query="select * from user where name='"+name+"'"; 
		           Statement st = connection.createStatement();
		           ResultSet rs=st.executeQuery(query);
		        
			while ( rs.next() )
			   {
				
			s2=rs.getString(12); 
			
				
				

			
		 s66="Your OTP="+s2;
         al.add(s66);
 			
				}
	
	  obj.put("ResDetails",al);
		
   	  out.print(obj);
    	
		}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



