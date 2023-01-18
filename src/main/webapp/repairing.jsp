<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page errorPage="errorPage.jsp" %>

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
          <li><a href="repairing.jsp">Repairing</a>
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
        Choose the worker you need for repairing
    </div>
    <br><br>
    <!-- Element -->
    
    
    
    <section>
    
      <div class="atYourService">At Your Service
      </div>
    <div class="list">

    <div class="form-group">
        <div class="container2">
            
            
           <form action="confirmation.jsp" method="post" >
          <ul>
          <li>
            <input type="radio" id="electrician" name="worker" value="electrician">
            <label for="electrician">Electrician</label>
            
            <div class="check"></div>
          </li>
          
          <li>
            <input type="radio" id="carpenter" name="worker" value="carpenter">
            <label for="carpenter">Carpenter</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>
          
          <li>
            <input type="radio" id="plumber" name="worker" value="plumber">
            <label for="plumber">Plumber</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>
    
          <li>
            <input type="radio" id="fabricator" name="worker" value="fabricator">
            <label for="fabricator">Fabricator(Aluminium partition & Welding works)</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>

          <li>
            <input type="radio" id="exterminator" name="worker" value="exterminator">
            <label for="exterminator">Exterminator(Pest Control)</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>

          <li>
            <input type="radio" id="painter" name="worker" value="painter">
            <label for="painter">Painter</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>
          
          <li>
            <input type="radio" id="tecnician" name="worker" value="tecnician">
            <label for="tecnician">Tecnician(install/uninstall/service Appliances)</label>
            
            <div class="check"><div class="inside"></div></div>
          </li>

        </ul>
       
        <center> 
          <input class="btn" type=submit value="OK">
        </center>
        </div>
      </div>
        </form>
</body>
</html>