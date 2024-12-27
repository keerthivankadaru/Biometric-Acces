<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@include file="connect.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

int id=Integer.parseInt(request.getParameter("id"));
 String id1=String.valueOf(id);

%>
<form action="FileBioIdentiry.jsp?id=<%=id1%>" method="post" id="sendemail" enctype="multipart/form-data">
            <ol><li><ol><ol><ol>
              <p><span class="style36">
                <label for="label"><span class="style7"><span class="style3">Biometric Authentication</span><br />
                <br />
                <span class="style4">Select Finger Print(required)</span></span></label>
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
            <p align="center">
              <input name="Submit" type="submit" class="style5" value="Submit" />
            </p>
          </form>



<%


%>

</body>
</html>