<%@page import="com.protech.ifashion.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/AboutUsSdr.css">
     <link rel="icon" href="../images/favicon.ico">
   <style>
   
.cart{
    color: black;
       position: relative;
       left: -20px;
    text-decoration: none;
}

    </style>
    
</head>
<body>
    <div id="nav_bar">
        
        <div class="admin">
       
            <a href="/jsp/AdminLogin.jsp" class="admin" style="text-decoration: none;"> <img height="50px" width="50px" alt="" src="../images/adminlogo.png"></a>
        </div>
    </div> 	 	



        <section id="nav_main">
            <div id="nav_child1">
             <a href="/" class="admin" style="text-decoration: none; color: black;"><h1> i Fashion</h1></a>  
               
            </div>
            <div id="nav_child2">
                <div class="nav_child">
                    <a href="/" style="text-decoration: none; color: black;">Home</a>
                </div>
                <div>
                    <a href="/aboutus" style="text-decoration: none; color: black;">About</a>
                    
                </div>
                <div>
                    <a href="/customer/products" style="text-decoration: none; color: black;">Products</a>
                    
                </div>
                <%Customer customer=(Customer)session.getAttribute("customer");
                if(customer==null){
                %>
                
                <div>
                    <a href="/customer/login" style="text-decoration: none; color: black;">Login</a>
                    
                </div>
                <div>
                    <a href="/customer/signup" style="text-decoration: none; color: black;">SignUp</a>
                    
                </div>
              <%}else{%>
               <div class="cart">
        <a href="/customer/cart" class="cart"><img src="data:image/jpeg;base64,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" alt="Cart" width="39em" height="39em" style="border-radius: 10em;">Cart</a>   
    </div>
              
               <div>
                    <a href="/logout" style="text-decoration: none; color: black;">Logout</a>
                    
                </div>
                <%} %>
            </div>
            
            
            

        </section>
      <div  class="parent">
      <div>
        <div class="child1"><h1>ABOUT US</h1></div>
       <div class ="child2"> <p style="font-size: 1.8em;text-align: center;">THE FASHION ALPHA STORE caters to thoughtful shoppers who appreciate unique designs and top quality pieces you just can’t find anywhere else. We are constantly curating fresh new collections and looking for the next big thing our customers will love. Founded in Vienna in 2019, we are proud to be your Online Clothing Shop that you can rely on for our expert service and care. </p></div>
      </div>
      </div>

      <div class="im"></div>

      <div class="parent2">
      <div>
        <div class="child3"><h1>Journey Starts From</h1></div>
        <div class="child4"><p style="font-size: 1.8em;text-align: center;">Our Journey since 1991 has become the most successful path till date which also had lot of challenges in our way,many competitors we lost all our hope in the year 2007.But it was the support of all our hardworks which has turned up to one of the best online Fashion Website now.Thanks to the entire team for keeping us in the flow to fly high..</p></div>
      </div>
      </div>

      <div class="im1"></div>

      <div class="parent3">
        <div>
        <div class="child5"><h1>Our Products</h1></div>
        <div class="child6"><p style="font-size: 1.8em;text-align: center;">Fashion is a form of self-expression and autonomy at a particular period and place and in a specific context, of clothing, footwear, lifestyle, accessories, makeup, hairstyle, and body posture. The term implies a look defined by the fashion industry as that which is trending.</p></div>
      </div>
      </div>

      <div >
        <div class="parent4">
            <div class="im2"><img src="https://preview.colorlib.com/theme/shionhouse/assets/img/gallery/popular1.png" alt="" height="400px" width="300px"></div>
            <div class="im3"><img src="https://preview.colorlib.com/theme/shionhouse/assets/img/gallery/popular2.png" alt=""height="400px" width="300px"></div>
            <div class="im4"><img src="https://preview.colorlib.com/theme/shionhouse/assets/img/gallery/popular3.png" alt="" height="400px" width="300px"></div>
            <div class="im5"><img src="https://preview.colorlib.com/theme/shionhouse/assets/img/gallery/popular4.png" alt="" height="400px" width="300px"></div>
        </div>
      </div>
      <!-- above foot -->
      <div class="grandparent" >
        <div class="parent5">
            <div class="parent6">
                <img src="https://preview.colorlib.com/theme/shionhouse/assets/img/icon/services1.svg" alt="">
                <h3 class="p1">Fast And Free Delivery</h3>
                <p class="p1">Free Delivery on all Orders</p>
            </div>
            <div class="parent7">
                <img src="https://preview.colorlib.com/theme/shionhouse/assets/img/icon/services2.svg" alt="">
                <h3 class="p1">Fast And Free Delivery</h3>
                <p class="p1">Free Delivery on all Orders</p>
            </div>
            <div class="parent8">
                <img src="https://preview.colorlib.com/theme/shionhouse/assets/img/icon/services3.svg" alt="">
                <h3 class="p1">Fast And Free Delivery</h3>
                <p class="p1">Free Delivery on all Orders</p>
            </div>
            <div class="parent9">
                <img src="https://preview.colorlib.com/theme/shionhouse/assets/img/icon/services4.svg" alt="">
                <h3 class="p1">Fast And Free Delivery</h3>
                <p class="p1">Free Delivery on all Orders</p>
            </div>
            
        </div>
        <div class="parent10"><p style="text-align: center;">Copyright ©2023 All rights reserved</p>
        </div>
      </div>




      
</body>
</html>