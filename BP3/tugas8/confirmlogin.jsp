	<title>Confirm Login User</title>

<%@ page language="java" import="java.util.*"%>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if (username != null && password != null) {
		if(username.equals("admin") && password.equals("admin") ) {
%>
			<jsp:forward page="buatcookies.jsp" /> 

<%		} else { %>

			<jsp:forward page="index.jsp" > 
				<jsp:param name="pesan" value="Login gagal !!" />
			</jsp:forward>

<%		}
	} else { %>

		<jsp:forward page="index.jsp" > 
			<jsp:param name="pesan" value="Login gagal !!" />
		</jsp:forward>

<%	} %>