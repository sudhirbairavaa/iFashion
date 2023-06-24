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
    position:sticky;
    top:0px;
    z-index:2;
    align-items:center;
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
     position:sticky;
    top:3em;
    z-index:2;
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
    </style>
</head>
<body>
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


        <div class="container-fluid">
            <form action="/adminlogin" method="post" >
                <table class="tab" style="height: 300px; width: 300px; border-radius: 10px;" >
                    <tr>
                    <th>${fail}</th>
                    </tr>
                    <tr>
                        <th style="font-size: 20px; font-style:normal;text-align: center;">
                            ADMIN LOGIN
                        </th>
                    </tr>
                    <tr>
                       
                        <td>
                            <input type="text" name="user" id="user" placeholder="Enter email/mobile" style="width: 200px; height: 25px;font-size: 12px;background-color:lightgoldenrodyellow;">
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td>
                            <input type="password" name="pass" id="pass" placeholder="Password" style="width: 200px; height: 25px;font-size: 12px;">
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>
                            <button style="width: 50px; height: 30px; font-size: 18px; background-color: orange;border-style: none;width: 200px;border-radius: 2px;">Login</button>
                        </td>
                       
                    </tr>
                
            </table>
            </form>
        </div> 
        
        
</body>
</html>