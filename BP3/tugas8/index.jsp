<%@ page language="java" %>
<html>
<head>
<title>Cookie Input Form</title>
</head>
<body>
<fieldset style="width: 450px;">
	<form method="post" action="confirmlogin.jsp">
		<p><b>Enter Your Username: </b><input type="text" name="username"><br>
		<p><b>Enter Your Password: </b><input type="password" name="password"><br><br>
		<input type="submit" value="Submit">
	</form>
</fieldset><br>
	
	<i><% if(request.getParameter("pesan") !=null ) 
	out.print(request.getParameter("pesan")); %></i>
	
</body>