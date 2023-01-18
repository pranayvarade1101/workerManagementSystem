<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
     <%@ page errorPage="errorPage.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<link rel="stylesheet" href="css/jhakkasLogin.css">
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","meraubuntu");
	
	int iam=(int)session.getAttribute("iam");
	
%>
<% 

// customer signup

if(iam==1){
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String addr=request.getParameter("addr");
	String phno=request.getParameter("phno");
	String newpass=request.getParameter("newpass");
	String conpass=request.getParameter("conpass");
		
	%>
	
	<%
	if (newpass.equals(conpass)){
  			
     		PreparedStatement pstmt=conn.prepareStatement("insert into customer(name,email,address,contactno,password) values(?,?,?,?,?)");
			
			pstmt.setString(1,name);
			pstmt.setString(2,email);
			pstmt.setString(3,addr);
			pstmt.setString(4,phno);
			pstmt.setString(5,conpass);
			
			int i=pstmt.executeUpdate();
			
				if(i>0){
				%>
				<center>
				<div class="greeting">
      
            You have registered successfully
        
   				 </div>
   				 </center>
				<%
				//out.print("<h2>You have registered successfully</h2>");
			
	%>
		<%
 		 } else{
 		%>
				<center>
				<div class="greeting">
      
            please enter same passwords in both the fields! 
        
   				 </div>
   				 </center>
				<%
 		 }
  		}
}
%>

<%
// wageworker signup

if(iam==2){
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno=request.getParameter("phno");
	String addr=request.getParameter("addr");
	String aadhar=request.getParameter("aadhar");
	String skill=request.getParameter("skill");
	String newpass=request.getParameter("newpass");
	String conpass=request.getParameter("conpass");
	
	
	
	%>
	
	<% 
  		if (newpass.equals(conpass)) { 
			
  			String status="free";
  			
     		PreparedStatement pstmt=conn.prepareStatement("insert into wageworker(name,email,address,contactno,aadhar,skill,password,status) values(?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,name);
			pstmt.setString(2,email);
			pstmt.setString(3,addr);
			pstmt.setString(4,phno);
			pstmt.setString(5,aadhar);
			pstmt.setString(6,skill);
			pstmt.setString(7,conpass);
			pstmt.setString(8,status);
			
			int i=pstmt.executeUpdate();
			
			if(i>0){
				%>
				<center>
				<div class="greeting">
      
            You have registered successfully
        <br><br><br><br>
        	<a href="whoAreYou.html">back to Login page</a>
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
}
%>
	
<% 

// contractor signup

if(iam==3){
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno=request.getParameter("phno");
	String addr=request.getParameter("addr");
	String aadhar=request.getParameter("aadhar");
	String skill=request.getParameter("skill");
	String newpass=request.getParameter("newpass");
	String conpass=request.getParameter("conpass");
	
	
	
	%>
	
	<% 
  		if (newpass.equals(conpass)) { 

  			String status="free";
  			
     		PreparedStatement pstmt=conn.prepareStatement("insert into contractor(name,email,address,contactno,aadhar,skill,password,status) values(?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,name);
			pstmt.setString(2,email);
			pstmt.setString(3,addr);
			pstmt.setString(4,phno);
			pstmt.setString(5,aadhar);
			pstmt.setString(6,skill);
			pstmt.setString(7,conpass);
			pstmt.setString(8,status);
			
			int i=pstmt.executeUpdate();
			
			if(i>0){
				%>
				<center>
				<div class="greeting">
      
            You have registered successfully
        <br><br><br><br>
        	<a href="whoAreYou.html">back to Login page</a>
        	
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
}
%>	
	
	<% conn.close(); %>

</body>
</html>