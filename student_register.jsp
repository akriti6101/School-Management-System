<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<form action="student_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
<form action="stu_display.jsp" method="post">
    <div class="std_reg_outer">
       <div class="std_reg_inner">
          Name :<input type="text" name="Name" class="one" placeholder="Name" pattern="[A-Z a-z][A-Za-z][A-Za-z \s]+" required/><br/><br/>
            <br/>
            D.O.B :<input class="six" name="dob"type="date" placeholder="DD/MM/YY" pattern="[0-9][0-9][/][0-9][0-9][/][0-9][0-9]"required/>
                  <br/>  <br/><br/>    
                  
            Class :<input type="text" name="std" class="two" placeholder="Class" pattern="[0-9]+"required/><br/><br/>
            <br/>
              ID :<input type="text" name="id"class="three" placeholder="ID/Roll No"required/><br/><br/><br/>
            <br/>
                Email:<input type="text" name="email" type="email"placeholder="Email Address" class="four" 
                pattern="[\.a-z0-9]+[@][a-z]+[\.][a-z]+"required/><br/><br/>
            <br/>
                 Contact:  
                   <br/>
                      Mobile No. :<input type="tel" class="five" name="mobile_no"name="mobile" pattern ="[7-9][0-9]{9}"placeholder="10-digit number" required/><br/><br/>
                      Subjects list :<br/>
                      <div class="list"required/>
                       
                         <input type="checkbox" name="sub1" value="science">Science</input>
                         <input type="checkbox" name="sub2" value="English">English</input>
                         <input type="checkbox" name="sub3" value="Social_Sci">Social Science</input>
                         <input type="checkbox" name="sub4"value="Maths">Maths</input>
                          <input type="checkbox" name="sub5"value="Sanskrit">Sanskrit</input>                       
                          <input type="checkbox" name="sub6" value="Computer">Computer</input> 
                            <input type="checkbox" name="sub7" value="Phy. Edu">Physical Education</input> <br/> 
                            </div><br/>
                                                          
          <button type="submit" class="register_btn">Register</button>
       </div>
      
      
    </div>
       
       
      </form> 
       
</body>
</html>