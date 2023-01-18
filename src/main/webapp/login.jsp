<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page errorPage="errorPage.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="css/jhakkasLogin.css">
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","meraubuntu");
	
	int iam=(int)session.getAttribute("iam");

	
%>

<%  
// 	Customer Login

if(iam==1){
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");

	PreparedStatement pstmt=conn.prepareStatement("select name,password from customer where email=?");
	pstmt.setString(1,email);
	
	ResultSet rs=pstmt.executeQuery();
	
	while(rs.next()){
		String name=rs.getString(1);
		String dbpass=rs.getString(2);
		
		 /* out.print("database password and name is  "+dbpass+" " +name);  */
		
		 if(dbpass.equals(pass)){
		
			 session.setAttribute("name", name);
			 
			 RequestDispatcher rd=request.getRequestDispatcher("inHome.jsp");
				rd.include(request, response);
	
	
	%>
<%-- 	<%@ include file="custHome.jsp"%> --%>
<% 
		 }else{
		 %>
		 <center>
		<div class="greeting">

 			Wrong email / password , please check agian !

		 </div>
		 </center>
		 
		 <% 
	 }
}
}
%>
<%
//   wageworker login

if(iam==2){
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");

	PreparedStatement pstmt=conn.prepareStatement("select name,password from wageworker where email=?");
	pstmt.setString(1,email);
	
	ResultSet rs=pstmt.executeQuery();
	
	while(rs.next()){
		String name=rs.getString(1);
		String dbpass=rs.getString(2);
		
		 /* out.print("database password and name is  "+dbpass+" " +name); */ 
		
		 if(dbpass.equals(pass)){
		
			 session.setAttribute("name", name);
			 
			 RequestDispatcher rd=request.getRequestDispatcher("inHome.jsp");
				rd.include(request, response);
	
	
	%>
<%-- 	<%@ include file="custHome.jsp"%> --%>
<% 
		 }else{
		 %>
		 <center>
		<div class="greeting">

 			Wrong email / password , please check agian !

		 </div>
		 </center>
		 
		 <% 
	 }
}
}
%>
<%

//  contractor login

if(iam==3){
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");

	PreparedStatement pstmt=conn.prepareStatement("select name,password from contractor where email=?");
	pstmt.setString(1,email);
	
	ResultSet rs=pstmt.executeQuery();
	
	while(rs.next()){
		String name=rs.getString(1);
		String dbpass=rs.getString(2);
		
		 /* out.print("database password and name is  "+dbpass+" " +name); */ 
		
		 if(dbpass.equals(pass)){
		
			 session.setAttribute("name", name);
			 
			 RequestDispatcher rd=request.getRequestDispatcher("inHome.jsp");
				rd.include(request, response);
	
	
	%>
<%-- 	<%@ include file="custHome.jsp"%> --%>
<% 
		 }else{
		 %>
		 <center>
		<div class="greeting">

 			Wrong email / password , please check agian !

		 </div>
		 </center>
		 
		 <% 
	 }
}
}
%>

<%

//    admin login

if(iam==4){
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");

	PreparedStatement pstmt=conn.prepareStatement("select name,password from admin where email=?");
	pstmt.setString(1,email);
	
	ResultSet rs=pstmt.executeQuery();
	
	while(rs.next()){
		String name=rs.getString(1);
		String dbpass=rs.getString(2);
		
		 /* out.print("database password and name is  "+dbpass+" " +name); */ 
		
		 if(dbpass.equals(pass)){
		
			 session.setAttribute("name", name);
			 
			 RequestDispatcher rd=request.getRequestDispatcher("inHome.jsp");
				rd.include(request, response);
	
	
	%>
<%-- 	<%@ include file="custHome.jsp"%> --%>
<% 
		 }else{
		 %>
		 <center>
		<div class="greeting">

 			Wrong email / password , please check agian !

		 </div>
		 </center>
		 
		 <% 
	 }
}
}
%>

<% 

	conn.close();
%>



</body>
</html>