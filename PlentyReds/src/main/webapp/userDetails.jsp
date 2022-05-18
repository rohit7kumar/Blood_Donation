<%@page import="com.plentyReds.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="headertemplate3.html"%>
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
<center><h1>Enter your details to request for blood</h1> </center>
  <form action="UserBloodReqAction.jsp" method="post">
  <center>
  <input type="text" onkeypress="return AvoidSpace(event)" name="name" placeholder="Enter name" required>
 <input type="text" pattern="\d*" maxlength="10" minlength="10" name="mobileno" placeholder="Enter mobile number" required>
  <input type="mail" onkeypress="return AvoidSpace(event)" name="email" placeholder="Enter E-mail Id" required>
  <input type="text" name="bloodgroup" placeholder="Enter blood group" required>
 <input type="number" id="Number" placeholder="Units req." 
           name="unit_request" min="1" max="10" style="width: 120px;">
<br>
<br>
  <button class="button1">
  <span>Submit</span>
  </button>
  </center>
  </form>
 
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Email</th>
<th>Blood Group</th>
<th>Units Req</th>
<th>Status</th>

</tr>
<tr>
<%
String email=(String)session.getAttribute("u_name");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String query="select name,email,bloodgroup,unit_requested,status from bloodrequest where email='"+email+"'";
	ResultSet rs=st.executeQuery(query);
	while(rs.next())
	{
		String name=rs.getString(1);
		
		 email=rs.getString(2);
		String bloodgroup=rs.getString(3);
		String unitrequested=rs.getString(4);
		String status=rs.getString(5);
%>
<td><%out.println(name);%></td>
<td><%out.println(email);%></td>
<td><%out.println(bloodgroup);%></td>
<td><%out.println(unitrequested);%></td>
<td><%out.println(status);%></td>
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
<br>
<br>
<br>
<br>
</body>
</html>