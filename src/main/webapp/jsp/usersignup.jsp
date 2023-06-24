<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
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

   .head{
    display: flex;
   justify-content: center;
   align-items: center; 
   height: 600px;
   }
        form{
            border: 2px solid;
            /* position: relative;
            left: 27em;
            top: 5em; */
            width: 25em;
            height: 33em;
            /* display: flex;
            justify-content: center;
            align-items: center; */
            border-radius: 1em;
            background-color: rgb(255, 255, 255);

        }
        h1{
            height: 2em;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            top: -20.3px;
            border-radius: 10px;
        
            
            background-color: rgb(135, 141, 143);
            /* text-align: center;
            border-top-right-radius: 0.5em;
            border-top-left-radius: 0.5em; */
            
        }

        .td1{
            text-align: right;
            position: relative;
            /* left: -1em; */
        }

        .cancel{
            background-color: red;
             position: relative; 
             left: -4em; top: 1.5em;
              border: white; height: 2em;
              width: 7em; border-radius: 1em;
              
        }

        .reg{
            position: relative;
             left: 2em;
              background-color:cornflowerblue;
               border: white;
                height: 2em; width: 7em; 
                top: 1em;
                 border-radius: 1em;
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
            <a href="" class="admin" style="text-decoration: none;">Admin</a>
        </div>
    </div>



        <section id="nav_main">
            <div id="nav_child1">
               <h2> i Fashion</h1>
               
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
                    <a href="/usersignup.jsp" style="text-decoration: none; color: black;">SignUp</a>
                    
                </div>

            </div>
            <div id="nav_child3">
                <a href="" class="cart"><img src="https://cdn.pixabay.com/photo/2016/12/21/16/34/shopping-cart-1923313_640.png" alt="cart" width="30em" height="30em" style="border-radius: 5em;">
                </a>   
            </div>

        </section>
        ${fail }
        
    <div class="head">
    
    <form action="/customersignup"method="post">
        <h1 style="color: white;">SignUp</h1>
        <table cellspacing="20em">
            <tr>
                <td class="td1"><label for="name"><strong>First Name :</strong></label></td>
                <td><input type="text" name="fname" id="name"></td>
            </tr>
            <tr>
                <td class="td1"><label for="lname"><strong>Last Name :</strong></label></td>
                <td><input type="text" name="lname" id="lname"></td>
            </tr>
            <tr>
                <td class="td1"><label for="mno"><strong>Mobile No :</strong></label></td>
                <td><input type="text" name="mno" id="mno"></td>
            </tr>
            <tr>
                <td class="td1"><label for="email"><strong> Email-Id :</strong></label></td>
                <td><input type="email" name="email" id="email"></td>
            </tr>
            <tr>
                <td class="td1"><label for="pwd"><strong>Password :</strong></label></td>
                <td><input type="password" name="pwd" id="pwd"></td>
            </tr>
            <tr>
                <td class="td1"><label for="cpwd"><strong> Confirm <br>
                    Password </strong>:</label></td>
                <td><input type="password" name="" id="cpwd"></td>
            </tr>
            
            <tr>
                <td><button class="reg" ><strong><a href="/Home.jsp"  style="text-decoration: none; color: white;">Home</strong></a></button>
                </td>
                <td><button class="reg"><strong>Register</strong></button>
                </td>
                <!-- <a href="" >Forgot pasword?</a> -->
                <td><button class="cancel"><strong><a href="" style="text-decoration: none;color: white;">Cancel</a></strong></button>
                 <a href="" style="position: relative; top: 3em; left: -1em; text-decoration: none;font-size: 15px;color: black;">help?</a></td>
            
        </table>
    </form>
</div>
</body>
</html>