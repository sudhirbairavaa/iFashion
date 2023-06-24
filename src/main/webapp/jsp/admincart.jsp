<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 body{
    background-color: white;
    /* width: 10em; */
    /* background-image:url(../image/prbg1.jpg); */
    overflow: hidden;
 
}
.main{
     width: 70em;
     position: relative;
     left: 5em;
}
 nav{

    /* width: 100%; */
    background-color: white;
 }
 .container{
    display: flex;
    column-gap: 3em;
    position: relative;
    left: 3em;
    top: 1em;
    /* background-color: aqua; */
    width: 50em;
    height: 3em;


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
    <div class="main">
        <nav>
           <div class="container">
            <div><a href="./pro.html" target="_blank" style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
            <div><a href="./About.html" target="_blank" style="text-decoration: none;font-size: 20px;color: black;"> About </a></div>
            <div><a href="./product.html" target="_blank" style="text-decoration: none;font-size: 20px;color: black;"> Product</a> </div>
            <div><a href="./adminoperation.html" target="_blank" style="text-decoration: none;font-size: 20px;color: black;"> Admin Dashboard</a> </div>
           
          </div>
        </nav>
    


    <div id="cart_imagehead">
        <h1> Admin Cart Table</h1>
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
</body>
</html>