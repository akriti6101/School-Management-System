<%@page import="Teacher.Demo.*"%>
<%@page import="Teacher.Bean.*"%>
<%@page import="Student.Demo.*"%>
<%@page import="Student.Bean.*"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#9e9d89;">

<form action="teacher_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
<% 
int i=0,j=0;
ArrayList<String> m=new ArrayList<String>();
String name=(String)session.getAttribute("tea_name");
String id=(String)session.getAttribute("tea_id");
TeacherDemo demo=new TeacherDemo();
ArrayList <String> w=new ArrayList<String>();
List<Student>ls=demo.getStuData(name,id,m,w);

if(ls!=null)

 {%>
	  <table style="position:absolute;top:30px;text-align:center;">
	  <tr >
	  <th style="background-color:#1f441e;width:180px;border-radius:16px;border-color:white;height:50px;color:white;">
	  Name</th>
	  <th style="background-color:#1f441e;width:180px;border-radius:16px;border-color:white;height:50px;color:white;">ID</th>
	  <th style="background-color:#1f441e;width:180px;border-radius:16px;border-color:white;height:50px;color:white;">Subject</th>
	<th style="background-color:#1f441e;width:180px;border-radius:16px;border-color:white;height:50px;color:white;">Marks</th>
	<th style="background-color:#1f441e;width:180px;border-radius:16px;border-color:white;height:50px;color:white;">Total Marks</th>
	  </tr>	  
	  <%     for(Student s:ls){
		  %>
	<tr>
		  <td style="background-color:#0f1123;width:180px;border-radius:16px;border-color:white;
		  height:50px;color:white;"><%=s.getName() %></td>
		   <td style="background-color:#0f1123;width:180px;border-radius:16px;border-color:white;height:50px;
		   color:white;"><%=s.getId() %></td>
		   <td style="background-color:#0f1123;width:180px;border-radius:16px;border-color:white;height:50px;
		   color:white;"><%=w.get(0) %></td>
		   
		    <td style="background-color:#0f1123;width:180px;border-radius:16px;border-color:white;height:50px;
		    color:white;"> <%=m.get(i++) %></td>
		    	    <td style="background-color:#0f1123;width:180px;border-radius:16px;border-color:white;height:50px;
		    color:white;"> <%=100 %></td>
		    
		    <br/><br/>
		  	</tr>
		  
		    <%}%>
		   
	
	  </table>
	 <%} 
	
	  else
		 { %>
		 <img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
		 <%} %>
	 
	 
	 
	 



</body>
</html>