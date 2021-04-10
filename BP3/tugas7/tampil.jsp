<title>Tampil GuestBook</title>

<%@ page import="java.util.Date, java.util.TimeZone, java.text.DateFormat, java.text.SimpleDateFormat" %>

<% 
	Date now = new Date();
	TimeZone.setDefault(TimeZone.getTimeZone("Asia/Jakarta"));
	String date = new SimpleDateFormat("EEEE, dd-MMM-yyyy / 'pukul' HH:mm z").format(now);
%>

<h1 align="center">Tampil GuestBook User</h1>
<hr>

<table>
	<thead>
		<tr class="user">
			<td><b><%= request.getParameter("nama") %></b></td>
			<td><%= "[" + request.getParameter("email") + "]" %></td>
		</tr>
		<tr class="date">
			<td colspan="2"><%= date %></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="2"><%= request.getParameter("pesan") %></td>
		</tr>
</tbody>
</table>


<style type="text/css">
	table{
		width: 50%;
		background: grey;
		color: white;
		margin-left: auto;	
		margin-right: auto;
		margin-top: 100px
	}
	thead tr.user{
		font-size: 20px;
	}
	thead tr.date{
		font-size: 14px;
		font-style: italic;
	}
	tbody{
		background: white;
		color: black;
	}
</style>