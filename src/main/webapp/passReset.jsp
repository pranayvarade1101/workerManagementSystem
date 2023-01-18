<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

	<%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page errorPage="errorPage.jsp" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Password reset</title>
</head>
<body bgcolor=lightblue>

	<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","meraubuntu"); 

	int iam=(int)session.getAttribute("iam");
	%>
	<% 
	
	String email=request.getParameter("email");
	String newpass=request.getParameter("newpass");
	String conpass=request.getParameter("conpass");
	%>
	<%
	if(iam==1){

		if (newpass.equals(conpass)) { 

 		PreparedStatement pstmt=conn.prepareStatement("update customer set password=? where email=?");
		
		pstmt.setString(1,conpass);
		pstmt.setString(2,email);
		
		int i=pstmt.executeUpdate();
		
		if(i>0){
			out.print("<h2>Your password has been reset successfully</h2>");
	%>
		<a href="whoAreYou.html">Back to login page</a>
		<% 
		}
		%>
		<%
		 } else {
		%>
		<h2>
		<% 
			out.print("the passwords don't match , please check agian !");
		 }
	}
		%>
	</h2>
	
	
	<%
	if(iam==2){

		if (newpass.equals(conpass)) { 

 		PreparedStatement pstmt=conn.prepareStatement("update wageworker set password=? where email=?");
		
		pstmt.setString(1,conpass);
		pstmt.setString(2,email);
		
		int i=pstmt.executeUpdate();
		
		if(i>0){
			out.print("<h2>Your password has been reset successfully</h2>");
	%>
		<a href="whoAreYou.html">Back to login page</a>
		<% 
		}
		%>
		<%
		 } else {
		%>
		<h2>
		<% 
			out.print("the passwords don't match , please check agian !");
		 }
	}
		%>
	</h2>
	
	<%
	if(iam==3){

		if (newpass.equals(conpass)) { 

 		PreparedStatement pstmt=conn.prepareStatement("update contractor set password=? where email=?");
		
		pstmt.setString(1,conpass);
		pstmt.setString(2,email);
		
		int i=pstmt.executeUpdate();
		
		if(i>0){
			out.print("<h2>Your password has been reset successfully</h2>");
	%>
		<a href="whoAreYou.html">Back to login page</a>
		<% 
		}
		%>
		<%
		 } else {
		%>
		<h2>
		<% 
			out.print("the passwords don't match , please check agian !");
		 }
	}
		%>
	</h2>
	
	<%
	if(iam==4){

		if (newpass.equals(conpass)) { 

 		PreparedStatement pstmt=conn.prepareStatement("update admin set password=? where email=?");
		
		pstmt.setString(1,conpass);
		pstmt.setString(2,email);
		
		int i=pstmt.executeUpdate();
		
		if(i>0){
			out.print("<h2>Your password has been reset successfully</h2>");
	%>
		<a href="whoAreYou.html">Back to login page</a>
		<% 
		}
		%>
		<%
		 } else {
		%>
		<h2>
		<% 
			out.print("the passwords don't match , please check agian !");
		 }
	}
		%>
	</h2>
	
<% conn.close(); %>
	
</body>
</html>