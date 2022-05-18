<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"],input[type="email"], input[type="password"], input[type="submit"]
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
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
  </div>
</div>
<body>
<center><h1><u>Donor Login</u></h1></center>

<div class="container">
<br>
<br>
<%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
	%>
	<center><font color="red" size="5">Invalid Username/Password</font></center>
	<% 
}%>
<form action="userLoginAction.jsp" method="post">
<div class="form-group">
<center>
<h3>Enter Email ID</h3>
</center>
<input type="email" placeholder="Enter Username" name="username" required>
<center><h3>Password</h3></center>
<input type="password" placeholder="Enter Password" name="password" required>
<center>
<button type="submit" class="button">Submit</button>
 </center>
</div>

</form>
	
	
	
	
</div>
<br>
<br>
<br>
<br>

</body>
</html>
