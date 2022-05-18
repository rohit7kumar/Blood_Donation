<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
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
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
  </div>
</div>
<center><h2><u>Blood Stock Available</u></h2></center>
<div class="container">
<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{	
%>
<center><font color="red" size="5">Something went wrong! Try again!</font>
<%}%>
<%
if("invalid".equals(msg))
{	
%>
<center><font color="red" size="5">Successfully Updated</font>
<%}%>


<br>
<center>
<table id="customers">
<tr>
<th>Blood Group</th>
<th>Units</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from stock");
	while(rs.next())
	{
		String Bloodgroup=rs.getString(1);
		String Units=rs.getString(2);
%>
<td><%out.println(Bloodgroup);%>
<td><%out.println(Units);%>
</tr>
<% 
	}
}
catch(Exception e)
{
	System.out.println(e);
 	
}
%>

</table>
</center>

 
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>