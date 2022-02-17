<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <style>
            form{
                   color:blue;
                   text-align:center;
            }
            
            body{
            text-align:center;
            background-color:lightgreen;
            }
    </style>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>

        <h2 style="color:red"> Please fill details</h2>
        
        <form action="RegistrationServlet" method="post">
        
      <li><td>  Enter Your Name :   </td><td><input type="text" name="name" placeholder="Enter Name"></td></li><br>
        <li><td>Enter Your Email:   </td><td><input type="email" name="user_email" placeholder="Enter Email"></td></li><br>
        <li>Enter Your Address  :    <input type="text" name="user_address" placeholder="Enter Address"></li><br>
        <li>Enter Your Phone    :      <input type="text" name="user_phone" placeholder="Enter Phone"></li><br>
        <li>Create UserName     :     <input type="text" name="user_name" placeholder="Enter UserName"></li><br>
        <li>Create UserPassword :   <input type="password" name="user_password" placeholder="Enter Password"></li><br>
        
        <li><input type="submit" value="Submit"></li>
        
        <br>
        <br>
        <a href="login.jsp">Click here if u already registered</a>
        
          
        
        
        </form>

</body>
</html>