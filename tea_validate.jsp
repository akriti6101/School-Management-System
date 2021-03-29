<%@page import="Teacher.Demo.*" %>
<%@page import="Teacher.Bean.*" %>
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
<%
   String name=request.getParameter("tea_name");
   String id=request.getParameter("tea_id");
   session.setAttribute("tea_name",name);
   session.setAttribute("tea_id",id);
   TeacherDemo demo=new TeacherDemo();
  int r= demo.find(name,id);
   if(r==1)
   {%>
	   <div class="dis" >
	     <form action="per_dis.jsp">
	     <button type="submit" class="btn5" style="left:30px;width:150px;background-color:#f39189;">Personal Details</button></form>
	         <form action="Student_list.jsp">
	     <button type="submit" class="btn6" style="left:200px;width:150px;background-color:#f39189;">Student's List</button></form>
	         <form action="enter_marks.jsp">
	     <button type="submit" class="btn7" style="position:absolute;left:490px;width:150px;top:110px;height:40px;background-color:#f39189;">Enter Marks</button></form>
	  </div>
  <%  }
   else
   {%>
	   <img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
  <%  }
   
%>



</body>
</html>