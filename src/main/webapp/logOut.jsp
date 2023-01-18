<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%@ page errorPage="errorPage.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	String name=(String)session.getAttribute("name");
	session.invalidate();
	response.sendRedirect("homePage.html");

%>
</body>
</html>