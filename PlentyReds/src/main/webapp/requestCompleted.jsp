<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Unit</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bloodrequest where status='completed'");
	while(rs.next())
	{
		String name=rs.getString(1);
		String mobilenumber=rs.getString(2);
		String email=rs.getString(3);
		String bloodgroup=rs.getString(4);
		String unitreq=rs.getString(6);
%>
<td><%out.println(name);%></td>
<td><%out.println(mobilenumber);%></td>
<td><%out.println(email);%></td>
<td><%out.println(bloodgroup);%></td>
<td><%out.println(unitreq);%></td>
</tr>
<% 		
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%> 





</center>
<br>
<br>
<br>
<br>
</body>
</html>