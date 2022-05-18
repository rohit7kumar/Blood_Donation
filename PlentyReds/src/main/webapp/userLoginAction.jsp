<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String query="select email,donor_password from donor where email='"+username+"' and donor_password='"+password+"'";
	
	
	ResultSet rs=st.executeQuery(query);
	
	int count=0;
	while(rs.next())
	count++;
	if(count>0){
		session.setAttribute("u_name",username); 
		response.sendRedirect("userDetails.jsp");
	}
	else{
		response.sendRedirect("userLogin.jsp?msg=invalid");
	}
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
}
%>
