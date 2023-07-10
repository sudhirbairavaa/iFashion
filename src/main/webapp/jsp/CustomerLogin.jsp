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
    <link rel="stylesheet" href="./pro.css">
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
h1{
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



.container-fluid{
     background-image:url(../image/prbgg.jpg);
     /* background-image: url(../image/1682498717547.jpg);
     background-repeat: no-repeat;
     background-size: cover; */
     height: 500px;
     display: flex;
     justify-content: center;
     align-items: center;
}
.tab{
    border: 2px solid black;
    background-color: white;
    /* background-image: linear-gradient(blue,red,orange,green); */
    /* border-radius: 10px; */
    /* display: flex; */
    /* justify-content: center; */
    padding: 60px;
    width: 100px;
    height: 100px;
    
}
input[id="user"]
{
    border-color: black;
    border-width: 1px;
    border-radius: 3px;
    border-style: solid;

}
input[id="pass"]
{
    border-color: black;
    border-width: 1px;
    border-radius: 3px;
    border-style: solid;
    
}
input[value="Submit"]
{
    border-color: blue;
    border-width: 1px;
    border-radius: 3px;
    color: black;
}
body{
    background-image: url("https://images.unsplash.com/photo-1505022610485-0249ba5b3675?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80");
background-repeat: no-repeat;
background-size: 100% 100vh;
}
::placeholder{
    position: relative;
    left: 10px;
    color: rgb(151, 151, 151);
    font-weight: 400;
}
    </style>
</head>
<body>
  



        <!-- <section id="nav_main">
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
            
            

        </section> -->
        

   


        <div class="container-fluid">
            <form action="/customer/login" method="post" >
                <table class="tab" style="height: 500px; width: 350px; border-radius: 10px;background-image: linear-gradient(to bottom right,white,rgb(60, 59, 59));" >
                 <tr>
                        <th>
                        ${fail} 
                        </th>
                    </tr>
                    <tr>
                        <th style="font-size: 20px; font-style:normal;text-align: center;">
                            USER LOGIN
                        </th>
                    </tr>
                    <tr>
                    
                            <td>
                                <h1 style="font-size: 15px;position: relative;top: 35%;">USERNAME</h1>
                            </td>
                        </tr>
                       
                        <td>
                            <input type="text" name="user" id="user" placeholder="Enter email/mobile" style="width: 250px;position: relative;bottom: 15%; height: 35px;font-size: 12px;background-color:lightgoldenrodyellow;">
                        </td>
                        
                    </tr>

                    <tr>
                    
                        <td>
                            <h1 style="font-size: 15px;position: relative;bottom: 20%;">PASSWORD</h1>
                        </td>
                    </tr>
                   
                    <td>
                    <tr>
                        
                        <td>
                            <input type="password" name="password" id="pass" placeholder="Password" style="width: 250px;position: relative;background-color:lightgoldenrodyellow;bottom: 45%; height: 35px;font-size: 12px;">
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <button style="width: 50px; height: 30px; font-size: 15px;position: relative;outline: 2px solid black;bottom: 40%;left: 8%; background-color: rgb(132, 116, 67);border-style: none;width: 200px;border-radius: 2px;">LOGIN</button>
                        </td>
                       
                    </tr>

                    <tr>
                        <td>
                            <a href="" style="position: relative;left: 25%;bottom: 50%;color: rgb(28, 25, 25);"><h4>Forgot Password</h4></a>
                        </td>
                        </form>
                </div> 
            </tr>
            <tr>
            <td>
                <hr>
            </td>
            </tr>
            <tr>
                <td>
                    <button style="width: 50px; height: 30px; font-size: 15px;position: relative;outline: 2px solid black;bottom: 18%;left: 9%; background-color: #DFD7BF;border-style: none;width: 200px;border-radius: 2px;">SignUp</button>
                </td>
               
            </tr>
                    
                
            </table>
           
   
        
</body>
</html>