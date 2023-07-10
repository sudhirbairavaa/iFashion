<%@page import="com.protech.ifashion.dto.Customer"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
.cart{
    color: black;
       position: relative;
       left: -20px;
    text-decoration: none;
}

a{
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;
}

        #nav_bar{
    width: 100%;
    height: 3em;
    background-color: black;
    display: flex;
    justify-content: end;
    align-items: center;

}
.cart{
    color: white;
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
    background-color: bisque;
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


#headt{
    font-size: 50px;
    font-family:'Times New Roman', Times, serif;
    font-weight: lighter;
}
#main_body{
    width:100vw;
    height: 50vw;
    background-color: aqua;
}







#cart_imagehead
{
   height: 5em;
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   background-image: radial-gradient(skyblue,white);
   font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
   position: relative;
   top: 15px;
}
#cart_table
{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    font-size: medium;
    border-collapse: collapse;
    position: relative;
    top: 2em;
}
.cart_quantity
{
    width: 3em;
    text-align: center;
}
#cart_head
{
    background-image: linear-gradient(to top,  gray , white);
    
    
}
#cart_total
{
    position: relative;
    left: 65em;
    top: 50px;
    border-spacing: 2em;
}
td{
    text-align: left;
    border-bottom: -1em solid;
}
#cart_image{
    width: 250px;
    height: 200px;
    text-align: center;
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
    

    <div id="cart_imagehead">
        <h1>Cart Page</h1>
    </div>
    <center>
      <table style="text-align: center;" id="cart_table" cellspacing="5em" cellpadding="50em" border="2em">
        <tr id="cart_head">
            <td style="text-align: center;padding: 20px;"><h3>Remove</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Product Image</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Product</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Price</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Quantity</h3></td>
            <td style="text-align: center;padding: 20px;"><h3>Total</h3></td>
        </tr>
        <tr>
            <td style="text-align: center;"><button style="padding: 5px;font-size: 15px;">Delete</button></td>
            <td id="cart_image"><img src="../image/cloth1.jpg" alt="" width="250px" height="200px"></td>
            <td style="text-align: center;">
                <h3>Young Woman Wearing Dress</h3>
                <p>Far far away, behind the word mountains, far from the countries</p>
            </td>
            <td style="text-align: center;">490</td>
            <td style="text-align: center;"><input class="cart_quantity" type="text" name="quantity"  value="1" min="1" max="100"></td>
            <td style="text-align: center;">490</td>
        </tr>
        <tr>
            <td style="text-align: center;"><button style="padding: 5px;font-size: 15px;">Delete</button></td>
            <td id="cart_image"><img src="../image/cloth4.jpg" alt="" width="250px" height="200px"></td>
            <td style="text-align: center;">
                <h3>EYEBOGLER Men's Solid Regular fit T-Shirt </h3>
                <p>Far far away, behind the word mountains, far from the countries</p>
            </td>
            <td style="text-align: center;">1390</td>
            <td style="text-align: center;"><input class="cart_quantity" type="text" name="quantity"  value="1" min="1" max="100"></td>
            <td style="text-align: center;">1390</td>
        </tr>
        <tr>
            <td style="text-align: center;"><button style="padding: 5px;font-size: 15px;">Delete</button></td>
            <td id="cart_image"><img src="../image/tvimg.jpg" alt="" width="250px" height="200px"></td>
            <td>
                <h3 style="text-align: center;">Samsung Galaxy M04 Light Green </h3>
                <!-- <p>4GB RAM, 64GB Storage | Upto 8GB RAM with RAM Plus | MediaTek Helio P35 Octa-core Processor | 5000 mAh Battery | 13MP Dual Camera</p> -->
            </td>
            <td style="text-align: center;">9916</td>
            <td style="text-align: center;"><input class="cart_quantity" type="text" name="quantity"  value="1" min="1" max="100"></td>
            <td style="text-align: center;">9916</td>
        </tr>
    </table>
</center>
    <table id="cart_total" >
        <tr>
            <td colspan="3"><h2>Cart Total</h3></td>
         </tr>
        <tr>
            <td colspan="2"><h3>Subtotal</h3></td>
            <td><h3>11796</h3></td>
        </tr>
        <tr>
            <td colspan="2"><h3>Delivery</h3></td>
            <td><h3>1000</h3></td>
        </tr>
        <tr>
            <td colspan="2"><h3>Discount</h3></td>
            <td><h3>3000</h3></td>
        </tr>
        <tr>
            <td colspan="2"><h3>TOTAL</h3></td>
            <td><h3>8796</h3></td> 
        </tr>
    </table>
    
</body>
</html>