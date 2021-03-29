<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="tea_style.css">
</head>
<body>
<form action="Home.html">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
    <form action="tea_validate.jsp">
    <div class="t_out">
     <h4><u>TEACHER'S LOGIN</u></h4>
     <div class="t_login">
       <b>Name :<input type="text" placeholder="Name" class="name" name="tea_name" required/></b>
       <br/><br/>
       <b>ID :<input type="text" placeholder="ID" name="tea_id" class="id" required/></b>
       
       <button type="submit" class="btn3">LOGIN</button>
         
       </div>
       </form>
       <div class="t_register">
          <em>or</em>
          <a href="tea_register.jsp" >Register</a>
       
       </div>
    
    
    </div>

    
</body>
</html>