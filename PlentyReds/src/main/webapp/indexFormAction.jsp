<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String unit_req=(request.getParameter("unit_request"));
String status="pending";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobileno);
	ps.setString(3,email);
	ps.setString(4,bloodgroup);
	ps.setString(5,status);
	ps.setString(6,unit_req);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
	
}
%>