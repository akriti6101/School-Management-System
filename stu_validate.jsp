<%@page import="Student.Bean.*" %>
<%@page import="Teacher.Bean.*" %>
<%@page import="Teacher.Demo.*" %>
<%@page import="Student.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form action="Home.html">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
<%StudentDemo demo=new StudentDemo();
  String name=request.getParameter("en_name");
  String id=request.getParameter("en_id");
  String t_n=(String)session.getAttribute("tea_name");
  String t_id=(String)session.getAttribute("tea_id");
  int marks=Integer.parseInt(request.getParameter("marks"));

  TeacherDemo t_demo=new TeacherDemo();
  Teacher t=new Teacher();
  t=t_demo.getData(t_n,t_id);
  String sub=t.getSub_Faculty();
  int r=t_demo.findstu(name,id,sub);
 
  t_demo.enterMarks(name,id,sub,marks);

  if(r==1){%>
    <form action="enter_marks.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
    <img src="class.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
      <center><h3 style="position:absolute;top:200px;left:250px;">Marks Entered Successfully!!!!!!!!!!!!!!</h3></center>
   <%  }
    else
    {%><form action="enter_marks.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
    <img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
   <% }%>




</body>
</html>