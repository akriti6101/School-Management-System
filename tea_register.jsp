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
<form action="teacher_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>

<form action="tea_display.jsp" method="post">
    <div class="tea_reg_outer">
       <div class="tea_reg_inner">
          Name :<input type="text" name="Name" class="one" placeholder="Name"  pattern="[A-Z a-z][A-Za-z][A-Za-z \s]+"required/><br/><br/>
            <br/>
            D.O.B :<input class="six" name="dob"type="date" placeholder="DD: MM: YY"  pattern="[0-9][0-9][/][0-9][0-9][/][0-9][0-9]" required/>
                  <br/>  <br/><br/>    
               ID :<input class="six" name="id"type="text" placeholder="ID" required/>
                  <br/>  <br/><br/>    
            
                Email:<input type="text" name="email" type="email"placeholder="Email Address"  class="four"   pattern="[\.a-z0-9]+[@][a-z]+[\.][a-z]+"required/><br/><br/>
            <br/>
                 Contact:  
                   <br/>
                      Mobile No. :<input type="tel" class="five" name="mobile_no"name="mobile"placeholder="10-digit number" pattern ="[7-9][0-9]{9}"required/><br/><br/>
                     <br/><br/> Designation :<br/>
                      <div class="list" style="height:50px;"required/>
                       
                          <select class="s"name="designation"required/>
                          <option>--select--</option>
                          <option value="Professor">Professor</option>
                            <option value="Assistant Professor">Assistant Professor</option>
                              <option value="Assistant">Assistant</option>
                               
                          
                          </select>
                          </div>
                          
                                Subject Faculty:<br/>
                            <div class="list1"required/>
                            <select class="s1"name="sub">
                           <option>--select--</option>
                          <option value="Science">Science</option>
                            <option value="English">English</option>
                              <option value="Social Science">Social Science</option>
                              <option value="Maths">Maths</option>
                            <option value="Sanskrit">Sanskrit</option>
                              <option value="Computer">Computer</option>
                              <option value="Phy. Edu">Phy. Education</option>
                               
                          
                          </select>
                      
                            <br/><br/>
                            
                               Class Assigned:<input name="std" pattern="[0-9]+" class="seven"type="text">
                            <br/> 
                            </div><br/>
                                           
                            
                            <br/>
                      
                                                          
          <button type="submit" class="register_btn">Register</button>
       
      
      
    
       
       
      </form> 
       




</body>
</html>