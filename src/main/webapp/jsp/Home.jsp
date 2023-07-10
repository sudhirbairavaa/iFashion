<%@page import="com.protech.ifashion.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>i Fashion</title>
    <link rel="stylesheet" href="../css/Homecss.css">
    <link rel="icon" href="../images/favicon.ico">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
.cart{
    color: black;
       position: relative;
       left: -20px;
    text-decoration: none;
}
    .container{
    
        display: flex;
        justify-content: space-around;
        }
        
        .footer_image{
            display: inline-grid;
            grid-template-columns: auto auto auto auto;
            column-gap: 0.5em;
        }
        
    
       .head{
        font-size: 1.8em;
        position: relative;
    
       }
      #nav_main{
        background-color: rgb(203, 21, 21);
       
    
      }
    </style>
</head>
<body>
    <div id="nav_bar">
        
        <div class="admin">
       
            <a href="/admin/login" class="admin" style="text-decoration: none;"> <img height="50px" width="50px" alt="" src="../images/adminlogo.png"></a>
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
        ${pass } ${fail }
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="https://cdn.pixabay.com/photo/2019/08/17/12/16/sunglasses-4412056_640.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                  <div class="carousel-item">
                    <img src="https://cdn.pixabay.com/photo/2014/03/11/16/00/shoes-285331_640.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                  <div class="carousel-item">
                    <img src="https://cdn.pixabay.com/photo/2020/05/03/19/09/nike-5126389_640.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                </div>
              </div>
              <!-- footer -->
              <footer>
                <div class="container">
                    <div class="item1">
                    ${msg }
                       <div style="font-size: 1.8em;"> i Fashion </div>
                        <p style="line-height: 2em;">We would love to serve you and let enjoy <br> your culinary expirience. Excepteure sint <br> occaecat cupidatat non proident. </p>
                        <p style="line-height: 2em;">Copyright @2023 All rights reserved  </p>
                    </div>
                    <div class="item2">
                        <div class="head">Delivery Times</div>
                        <p>Monday-Friday:10.00-23.00</p>
                        <p>Saturday:10.00-19.00</p>
            
                        <div class="footer_image">
                        <img src="https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_640.png" alt=""  height="30px" width="30px" class="footer_image1">
                        <img src="https://cdn.pixabay.com/photo/2016/08/01/21/00/icon-1562136_640.png" alt=""  height="30px" width="30px" class="footer_image2">
                        <img src="https://cdn.pixabay.com/photo/2016/11/01/12/09/twitter-logo-1788039_640.jpg" alt=""  height="30px" width="30px" class="footer_image3">
                        <img src="https://cdn.pixabay.com/photo/2017/01/16/17/05/whatsapp-1984584_640.png" alt="" height="30px" width="30px" class="footer_image4">
                        </div>
                         
                    </div>
                    <div class="item3">
                        <div class="head">Contact Us</div>
                        <p>tel:************</p>
                        <P>Email:Hello.i Fashion@gmail.com</P>
                        <p>Address:Iris Waston, P.O.Box 283 8562 Fusce Rd,Ny</p>
                    </div>
                </div>
                </footer>


        

              <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
              <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
              <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>