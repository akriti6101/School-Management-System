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
<form action="teacher_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>

<%  String name=(String)session.getAttribute("tea_name");
String id=(String)session.getAttribute("tea_id");
TeacherDemo demo=new TeacherDemo();
Teacher t=demo.getData(name,id);

%>


  <div style="background-color:#810000;position:absolute;height:600px;
  left:60px;top:70px;width:800px;">
  <table style="text-align:center;">
  <tr>
   <th style="position:absolute;background-color:#310b0b;top:50px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Name :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:40px;left:300px;color:white;width:200px;height:30px;"><%=t.getName() %></td>
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:90px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">ID :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:90px;left:300px;color:white;width:200px;height:30px;"><%=t.getId() %></td>
   
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:140px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Date of Birth :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:140px;left:300px;color:white;width:200px;height:30px;"><%=t.getDob() %></td>
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:190px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Email :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:190px;left:300px;color:white;width:200px;height:30px;"><%=t.getEmail() %></td>
   
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:240px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Mobile_no :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:240px;left:300px;color:white;width:200px;height:30px;"><%=t.getMobile_no() %></td>
   
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:290px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Designation :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:290px;left:300px;color:white;width:200px;height:30px;"><%=t.getDesignation() %></td>
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:340px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Subject Faculty :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:340px;left:300px;color:white;width:200px;height:30px;"><%=t.getSub_Faculty() %></td>
   
   <th style="position:absolute;text-align:centre;background-color:#310b0b;top:390px;color:white;left:60px;
   width:200px;border-radius:16px;height:30px;">Class Assigned :</th>
   <td style="position:absolute;text-align:center;border-radius:16px;background-color:#151515;
   top:390px;left:300px;color:white;width:200px;height:30px;"><%=t.getClass_Assigned() %></td>
  
   
   
   
  </tr>
  </table>
  
  </div>

</body>
</html>