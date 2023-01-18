<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
     <%@ page errorPage="errorPage.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin signup</title>
<link rel="stylesheet" href="css/adminSignUp.css">
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","meraubuntu");
	
%>

<% 

// Admin signup


	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String addr=request.getParameter("addr");
	String phno=request.getParameter("phno");
	String aadhar=request.getParameter("aadhar");
	String desig=request.getParameter("desig");
	String sal=request.getParameter("sal");
	String newpass=request.getParameter("newpass");
	String conpass=request.getParameter("conpass");
	
	
	
	%>
	
	<% 
  		if (newpass.equals(conpass)) { 

     		PreparedStatement pstmt=conn.prepareStatement("insert into admin(name,email,address,contactno,aadhar,designation,salary,password) values(?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,name);
			pstmt.setString(2,email);
			pstmt.setString(3,addr);
			pstmt.setString(4,phno);
			pstmt.setString(5,aadhar);
			pstmt.setString(6,desig);
			pstmt.setString(7,sal);
			pstmt.setString(8,conpass);
			
			int i=pstmt.executeUpdate();
			
			if(i>0){
				%>
				<center>
				<div class="greeting">
      
            New Admin has registered successfully
        
   				 </div>
   				 </center>
				<%
				//out.print("<h2>You have registered successfully</h2>");
			}
	%>
		<%
 		 } else {
 		%>
				<center>
				<div class="greeting">
      
            please enter same passwords in both the fields! 
        
   				 </div>
   				 </center>
				<%
 		 }

%>	
	
	<% conn.close(); %>




</body>
</html>