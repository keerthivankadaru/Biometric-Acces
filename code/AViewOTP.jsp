<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import= "java.sql.DriverManager" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%

	JSONObject obj=new JSONObject();
	String  s77=null,s2=null, s3=null,s4=null,s5=null,s6=null,s66=null,s8=null,s9=null,s10=null,cid=null;
	String s1=null;
	String s7=null;
	int i=0;
	int k=0;

      	try 
	{
	  

	   		   ArrayList al = new ArrayList();


						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
						Connection connection = DriverManager.getConnection("jdbc:odbc:DAC");

           
			   String query="select * from Attacker "; 
		           Statement st = connection.createStatement();
		           ResultSet rs=st.executeQuery(query);
		        
			while ( rs.next() )
			   {
				
		s1=rs.getString("Fname");
		s77=rs.getString("Aname");
		s2=rs.getString("pkey");
		s3=rs.getString("skey");
		s4=rs.getString("date");

                s7="File Name="+s1+" ,"+"Attacker Name="+s77+","+"Public Key="+s2+","+"SKey"+s3+","+"Date="+s4+"*****";
         	al.add(s7);



				
			}
	
	  obj.put("FDetails",al);
		
   	  out.print(obj);
    	
		}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



