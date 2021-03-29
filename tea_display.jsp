<%@page import="Teacher.Demo.*" %>
<%@page import="Teacher.Bean.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%TeacherDemo demo=new TeacherDemo();
 Teacher t=new Teacher();
   t.setName(request.getParameter("Name"));
   t.setId(request.getParameter("id"));
   t.setDob(request.getParameter("dob"));
   t.setEmail(request.getParameter("email"));
   t.setMobile_no(request.getParameter("mobile_no"));
   t.setDesignation(request.getParameter("designation"));
   t.setSub_Faculty(request.getParameter("sub"));
   t.setClass_Assigned(request.getParameter("std"));
  int r= demo.setData(t);
  
     if(r==1)
     {%>
     <form action="tea_validate.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
      <img src="class.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
      <center><h3 style="position:absolute;top:200px;left:250px;">Successful Registration Done !!!!!!!!!!!!!!</h3></center>
    </div>
    <%}
     
     else
     {%>
     <form action="tea_validate.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
     <img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
    <% }%>
     
     


</body>
</html>