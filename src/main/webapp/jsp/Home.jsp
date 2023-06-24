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
             <a href="/jsp/Home.jsp" class="admin" style="text-decoration: none; color: black;"><h1> i Fashion</h1></a>  
               
            </div>
            <div id="nav_child2">
                <div class="nav_child">
                    <a href="/jsp/Home.jsp" style="text-decoration: none; color: black;">Home</a>
                </div>
                <div>
                    <a href="/jsp/AboutUsSdr.jsp" style="text-decoration: none; color: black;">About</a>
                    
                </div>
                <div>
                    <a href="/jsp/product.jsp" style="text-decoration: none; color: black;">Products</a>
                    
                </div>
                <div>
                    <a href="/jsp/userlogin.jsp" style="text-decoration: none; color: black;">Login</a>
                    
                </div>
                <div>
                    <a href="/jsp/usersignup.jsp" style="text-decoration: none; color: black;">SignUp</a>
                    
                </div>

            </div>
            

        </section>
        ${pass }
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