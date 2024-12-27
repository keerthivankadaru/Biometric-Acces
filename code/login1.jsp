<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%
    
        String username=request.getParameter("user");      
        JSONObject obj=new JSONObject();
		int res=0;
		try
		{
		   String query="select * from user where name='"+username+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
						
		
	   if(rs.next()==true)
	    {

		 res=1;
        }
	    else
	    {
		 res=0;
        }

 
    obj.put("status",res);
    
    out.print(obj);
    out.flush();

}

catch(Exception e)
{out.print(e);}
%>

