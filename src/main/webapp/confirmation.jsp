<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    <%@ page errorPage="errorPage.jsp" %>
    
    
    
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/homePage.css"> 
    
    <style>
    .greeting{
    font-family:'Copperplate Gothic Bold';
    color: #350000;
    font-size: 70px;
}

.confirm{
 	font-size:50px;
}

input[type=radio]{
  /* position: absolute; */
  visibility: hidden;
}

  input[type=radio]:checked ~ .check {
  border: 5px solid #1d1000;
}

input[type=radio]:checked ~ .check::before{
  background: #1d1000;
}

input[type=radio]:checked ~ label{
  color: #1d1000;
}
    </style>

    <title>Repairing</title>
</head>
<body>

    <nav>
        <ul>
          <li><a href="inHome.jsp">Home</a></li>
          <li><a href="repairing.html">Repairing</a>
            <ul>
              <li><a href="#">Electricians</a>
                <!-- <ul>
                  <li><a href="#">Repairing</a></li>
                </ul> -->
              </li>
                
              <li><a href="#">Carpenters</a> 
              </li>
    
              <li><a href="#">Plumbers</a>            
              </li>
    
              <li><a href="#">Fabrication</a>
              </li>
    
              <li><a href="#">Pest Control</a>
              </li>
    
              <li><a href="#">Painters</a>
              </li>
          
            </ul>
          </li>
    
          <li><a href="appliances.html">Appliances</a>
            <ul>
              <li><a href="#">Gas Geasers</a>
                <!-- <ul>
                  <li><a href="#">Repairing</a></li>
                </ul> -->
              </li>
                
              <li><a href="#">Washing Machines</a> 
              </li>
    
              <li><a href="#">A.C</a>            
              </li>
    
              <li><a href="#">Fridge</a>
              </li>
    
              <li><a href="#">Wifi</a>
              </li>
    
              <li><a href="#">Dish T.V.</a>
              </li>
          
            </ul>
          </li>
    
          <li>
            <a href="renovation.html">Renovation</a>
            <ul>
              <li><a href="#">Furniture</a>
                <!-- <ul>
                  <li><a href="#">Repairing</a></li>
                </ul> -->
              </li>
                
              <li><a href="#">Painting</a> 
              </li>
    
              <li><a href="#">Plumbing</a>            
              </li>
    
              <li><a href="#">Fabrication</a>
              </li>
    
              <li><a href="#">Builders</a>
              </li>
    
              <li><a href="#">Interior Designers</a>
              </li>
          
            </ul>
          </li>
    
          
    
          <%String name=(String)session.getAttribute("name"); %> 
        
    	  <li><a href="#">
    	  Welcome <%=name %> 
        </a></li>
    
    <li><a href="logOut.jsp">Logout</a>
      </li>
      
        </ul>
      </nav>
    <br><br>
    
    
    <center>
    <div class="greeting">
        Confirmation
    </div>
    <%

	String worker=request.getParameter("worker");
 %>
   
   
    <div class="list">

     <div class="form-group">
        <!-- <div class="container2"> -->
    
    
    <form action="yourBooking.jsp" method=post>
    	<div class="confirm"> You have chosen
    	 <p style="font-weight : 900"> <%=worker %>
    	 </p>
    	 <%
    		session.setAttribute("worker", worker);
    	 %>
    	 
    	 <center> 
          <input class="btn" type=submit value="Confirm Booking">
          
        </center>
    	 
    	</div>
    	</form>
    <br><br>
    <!-- Element -->
    
    
    
     
</body>
</html>