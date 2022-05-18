<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String mobileno=request.getParameter("mobileno");
String unit_requested=request.getParameter("unit_requested");
String bloodgrp=request.getParameter("bloodgrp");
if(!bloodgrp.contains("-"))
	bloodgrp=bloodgrp.trim()+"+";

try
{
	Connection con=ConnectionProvider.getCon();
	con.setAutoCommit(false);
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='completed' where mobileno=?");
	String query="update stock set units=units-"+unit_requested+" where bloodgroup='"+bloodgrp+"'";
	PreparedStatement ps1=con.prepareStatement(query);
	
	
//	PreparedStatement ps1=con.prepareStatement("select ");
	ps.setString(1,mobileno); 
	ps.executeUpdate();
	
	ps1.executeUpdate();
	con.commit();
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
}
%>