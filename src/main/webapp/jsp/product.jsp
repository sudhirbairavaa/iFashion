<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./pro.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
a{
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;
}
       #nav_bar{
    width: 100vw;
    height: 3em;
    background-color: rgb(55, 54, 54);
    display: flex;
    justify-content: end;
    align-items: center;

}
.cart{
    color: rgb(33, 31, 31);
    font-size: 1em;
    position: relative;
     left: -5em;

}
/* img:hover{
    background-color: red;
} */
.admin:hover{
    color: red;
}
*{
    margin: 0;
    padding: 0;
}
.admin{
    color: white;
    font-size: 1em;
    position: relative;
     left: -3em; 
}
#nav_main{
    width: 100ew;
    height: 6em;
    background-color: rgb(255, 255, 255);
    display: flex;
    justify-content: center;
    align-items: center;
}
#nav_child1{
    width: 30%;
    text-align: center;
}
#nav_child2{
    width: 50%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 1.3em;
    font-family: 'Times New Roman', Times, serif;
    
}
.nav_child:hover{
    color: red;
}
#nav_child3{
    width: 20%;
    display: flex;
    justify-content: end;
}

h1{
    font-size: 50px;
    font-family:'Times New Roman', Times, serif;
    font-weight: bolder;
}
#nav_child3{
    width: 20%;
    display: flex;
    justify-content: end;
}

h1{
    font-size: 50px;
    font-family:'Times New Roman', Times, serif;
    font-weight: lighter;
}
#main_body{
    width:100vw;
    height: 50vw;
    background-color: aqua;
}
        .product_container{
            width: 100%;
        }
        .child_product_container{
            width: 90%;
            margin: auto;
            display: flex;
            justify-content: space-evenly;
        }
        .child_product_container1{
            width: 20%;
            border: 1px solid black; 
            border-style: none;
            text-align: center;
            padding: 10px;
        }
        .img1{
            width: 220px;
            height: 280px;
        }
        .container{
    
    display: flex;
    justify-content: space-around;
    position: relative;
    top: 20em;
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
    <!-- navbar -->
    <div id="nav_bar">
        <div class="cart">
            <a href="" class="cart"><img src="https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728552_640.jpg" alt="cart" width="25em" height="25em" style="border-radius: 5em;">
            </a>   
        </div>
        <div class="admin">
            <a href="/AdminLogin.jsp" class="admin" style="text-decoration: none;">Admin</a>
        </div>
    </div>



        <section id="nav_main">
            <div id="nav_child1">
               <h1> i Fashion</h1>
               
            </div>
            <div id="nav_child2">
                <div class="nav_child">
                    <a href="/Home.jsp" style="text-decoration: none; color: black;">Home</a>
                </div>
                <div>
                    <a href="/AboutUsSdr.jsp" style="text-decoration: none; color: black;">About</a>
                    
                </div>
                <div>
                    <a href="/product.jsp" style="text-decoration: none; color: black;">Products</a>
                    
                </div>
                <div>
                    <a href="/userlogin.jsp" style="text-decoration: none; color: black;">Login</a>
                    
                </div>
                <div>
                    <a href="/usersignup.jsp" style="text-decoration: none; color: black;">SignUp</a>
                    
                </div>

            </div>
            <div id="nav_child3">
                <a href="" class="cart"><img src="https://cdn.pixabay.com/photo/2016/12/21/16/34/shopping-cart-1923313_640.png" alt="cart" width="30em" height="30em" style="border-radius: 5em;">
                </a>   
            </div>

        </section>
    
        <!-- carousel -->
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="../image/lapslide.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                  <div class="carousel-item">
                    <img src="../image/fashslide.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                  <div class="carousel-item">
                    <img src="../image/gslide.jpg" class="d-block w-100" alt="..." height="500em">
                  </div>
                </div>
              </div>
              <!-- products -->
    <!-- <div><marquee behavior="alternate" direction="right" style="font-size: 50px;font-style: italic;">Collection</marquee></div> -->
    <div style="font-size: 50px;font-style: italic;position: relative;left: 50px;">Electronics Items</div>
    <div class="product_container">
        
        <div class="child_product_container">
            <div class="child_product_container1"><img src="../image/lapimg.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    DELL
                </h5>
                <h5 style="position: relative;top: 5px;">
                    DELL101
                </h5>
            <h3 style="color: coral;position: relative;top: 5px;">
                30000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;position: relative;top: 5px;">Add to cart</button></a>
            </div>
        
        
            <div class="child_product_container1">
                <img src="../image/oppom.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    OPPO
                </h5>
                <h5 style="position: relative;top: 5px;">
                    OPPO101
                </h5>
            <h3 style="color: coral;">
                20000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;position: relative;top: 5px; width: 100px;">Add to cart</button></a>
                </div>
            
            
            <div class="child_product_container1"><img src="../image/tvimg1.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    SONY
                </h5>
                <h5 style="position: relative;top: 5px;">
                    SONY101
                </h5>
            <h3 style="color: coral;">
                30000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;">Add to cart</button></a>
                </div>
            
           
            <div class="child_product_container1"><img src="../image/sound.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    BOAT
                </h5>
                <h5 style="position: relative;top: 5px;">
                    BOAT101
                </h5>
            <h3 style="color: coral;">
                15000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;">Add to cart</button></a>
                </div>

        </div>
    
    </div>
    <!-- <div><marquee behavior="alternate" direction="right" style="font-size: 50px;font-style: italic;">Collection</marquee></div> -->
    <div style="font-size: 50px;font-style: italic;position: relative;left: 50px;">Grocery</div>
    <div class="product_container">
        <div class="child_product_container">
           
            <div class="child_product_container1"><img src="../image/dal.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    DAL
                </h5>
                <h5 style="position: relative;top: 5px;">
                    DAL101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                120.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
        
            <div class="child_product_container1"><img src="../image/godhi.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    GODHI
                </h5>
                <h5 style="position: relative;top: 5px;">
                    GODHI101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                50.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
                </div>
            
            <div class="child_product_container1"><img src="../image/sugar.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    SUGAR
                </h5>
                <h5 style="position: relative;top: 5px;">
                    SUGAR101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                50.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
                </div>
            
            <div class="child_product_container1"><img src="../image/fennel seeds.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    FENNEL
                </h5>
                <h5 style="position: relative;top: 5px;">
                    FENNEL101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                100.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
                </div>
            
        </div>

    </div>


    <!-- <div><marquee behavior="alternate" direction="right" style="font-size: 50px;font-style: italic;">Collection</marquee></div> -->
    <div style="font-size: 50px;font-style: italic;position: relative;left: 50px;">Cloths</div>
    <div class="product_container">
        <div class="child_product_container">
           
            <div class="child_product_container1"><img src="../image/cloth1.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    Raymond
                </h5>
                <h5 style="position: relative;top: 5px;">
                    Raymond101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                1500.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
            
            <div class="child_product_container1"><img src="../image/cloth3.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    LENEN
                </h5>
                <h5 style="position: relative;top: 5px;">
                    LENEN101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                2000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
                </div>
            
            <div class="child_product_container1"><img src="../image/cloth2.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    SPOQUE
                </h5>
                <h5 style="position: relative;top: 5px;">
                    SPOQUE101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                1000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
       
            <div class="child_product_container1"><img src="../image/cloth6.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    ATHENA
                </h5>
                <h5 style="position: relative;top: 5px;">
                    ATHENA101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                1000.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
        
        </div>
    

    </div>


    <!-- <div><marquee behavior="alternate" direction="right" style="font-size: 50px;font-style: italic;">Collection</marquee></div> -->
    <div style="font-size: 50px;font-style: italic;position: relative;left: 50px;">Shoes</div>
    <div class="product_container">
        <div class="child_product_container">
            
            <div class="child_product_container1"><img src="../image/shoes.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    SPARk
                </h5>
                <h5 style="position: relative;top: 5px;">
                    SPARK101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                1800.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;position: relative;top: 5px;">Add to cart</button></a>
            </div>

            <div class="child_product_container1"><img src="../image/shoes1.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    BATA
                </h5>
                <h5 style="position: relative;top: 5px;">
                    BATA101
                </h5>
            <h3 style="color: coral;position: relative;top: 5px;">
                400.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
       
            <div class="child_product_container1"><img src="../image/shoes3.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    LAYASA
                </h5>
                <h5 style="position: relative;top: 5px;">
                    LAYASA101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                500.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none; position: relative;top: 5px;">Add to cart</button></a>
            </div>
        
            <div class="child_product_container1"><img src="../image/shoes2.jpg" alt="" class="img1">
                <h5 style="position: relative;top: 5px;">
                    NIKE
                </h5>
                <h5 style="position: relative;top: 5px;">
                    NIKE101
                </h5>
            <h3 style="color: coral; position: relative;top: 5px;">
                1200.00
            </h3>
            <a href="./cart.html" target="_blank"><button style="background-color: goldenrod;font-size: 15px;padding: 10px;border-style: none;position: relative;top: 5px;">Add to cart</button></a>
            </div>
        
        </div>

    </div>
     <!-- footer -->
     <footer>
        <div class="container">
            <div class="item1">
               <div style="font-size: 1.8em;">MR Collection </div>
                <p style="line-height: 2em;">We would love to serve you and let enjoy <br> your culinary expirience. Excepteure sint <br> occaecat cupidatat non proident. </p>
                <p style="line-height: 2em;">Copyright @2023 All rights reserved | This <br> template is made with &#128151 by Colorbil </p>
            </div>
            <div class="item2">
                <div class="head">Opening Times</div>
                <p>Monday-Friday:10.00-23.00</p>
                <p>Saturday:10.00-19.00</p>
    
                <div class="footer_image">
                <img src="../image/facebook.png" alt=""  height="30px" width="30px" class="footer_image1">
                <img src="../image/instagram.jpg" alt=""  height="30px" width="30px" class="footer_image2">
                <img src="../image/twitter.jpg" alt=""  height="30px" width="30px" class="footer_image3">
                <img src="../image/g+.png" alt="" height="30px" width="30px" class="footer_image4">
                </div>
                 
            </div>
            <div class="item3">
                <div class="head">Contact Us</div>
                <p>tel:************</p>
                <P>Email:Hello.colorbil@gmail.com</P>
                <p>Adress:Iris Waston, P.O.Box 283 8562 Fusce Rd,Ny</p>
            </div>
        </div>
        </footer>




      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>