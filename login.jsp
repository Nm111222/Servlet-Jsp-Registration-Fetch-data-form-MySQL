<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

         <style>
         body{
                 color:brown;
                 text-align:center;
                 margin-top:50px;
                 background-color:pink;
                 
         }
         
         </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>       
             <h2 style="color:red">Please Login</h2>

          <form action="LoginServlet1" method="post">
          <list> 
               Enter UserName: <input type="text" name="user_name" placeholder="username"> <br><br>
               Enter Password:  <input type="password" name="user_password" placeholder="password"><br><br>
               
           <input type="submit" value="Submit">
             <input type="reset" value="Reset">
              </list>
              
              <br><br>
              <a href="registration.jsp">Click here for New User</a>
              
               
          
          
          </form>

</body>
</html>