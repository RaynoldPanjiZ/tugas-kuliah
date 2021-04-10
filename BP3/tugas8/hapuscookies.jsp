<%
    Cookie[] cookies = request.getCookies();
    Cookie mycookie = null;
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            mycookie = cookies[i];

            mycookie.setMaxAge(0);
            response.addCookie(mycookie);
            out.print(cookies[i].getName() + " cookie is removed <br>");
        }
    }
%>

<jsp:include page="tampilcookie.jsp" />