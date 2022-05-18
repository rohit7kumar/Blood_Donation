<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>



<% 
	
session.invalidate(); 
response.sendRedirect("userLogin.jsp");
%>
	


