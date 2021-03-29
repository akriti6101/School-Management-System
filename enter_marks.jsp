<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="tea_style.css">
<title>Insert title here</title>
</head>
<body>
    <form action="teacher_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
       <div style="position:absolute;background-color:#351f39;border-radius:16px;top:80px;left:170px;width:500px;
       height:400px;">
       <br/><br/>
       <form action="stu_validate.jsp">
      <h3> <b  style="color:white;margin-left:20px;">Enter Name :</b><input   type="text"  class="nine" name="en_name"></h3>
       <h3 ><b  style="color:white;margin-left:20px;">Enter Id :</b><input  type="text" class="ten" name="en_id"></h3>
       <h3><b  style="color:white;margin-left:20px;">Enter Marks :</b><input  class="ele" type="text" name="marks"></h3>
         <center><button  style="background-color:green;top:40px;border-radius:16px;height:30px;width:180px;"type="submit" >ENTER</button></center>
       
       </form>
       
       </div>


</body>
</html>