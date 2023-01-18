<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int iam=Integer.parseInt(request.getParameter("iam"));
 %>
 
 <% if(iam==1){
	 session.setAttribute("iam", iam);
	 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		rd.include(request, response);
	 	%>
	<%@ include file="custLogin.html" %> 
	<% 	 
 }
 	else if(iam==2){
 		session.setAttribute("iam", iam);
 		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
 			rd.include(request, response);
 		
 %>
	<%@ include file="wageLogin.html" %>
	<% 	 
 } 		
 	else if(iam==3){
 		session.setAttribute("iam", iam);
 		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
 			rd.include(request, response);
 %>
	<%@ include file="conLogin.html" %>
	<% 	
 }
 	else{
 		session.setAttribute("iam", iam);
 		 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
 			rd.include(request, response);
 %>
 	<%@ include file="adminLogin.html" %>
 	<% 
 	} 
 	%>
</body>
</html>