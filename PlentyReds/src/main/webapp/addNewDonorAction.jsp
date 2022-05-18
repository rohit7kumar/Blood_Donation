<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobileno=request.getParameter("mobileno");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String password=request.getParameter("donor_password");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,father);
	ps.setString(4,mother);
	ps.setString(5,mobileno);
	ps.setString(6,gender);
	ps.setString(7,email);
	ps.setString(10,password);
	ps.setString(8,bloodgroup);
	ps.setString(9,address);
	ps.executeUpdate();
	response.sendRedirect("donorRegistration.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("donorRegistration.jsp?msg=invalid");
}
%>