<%@page import="Student.Bean.*" %>
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

    <%
         StudentDemo demo=new StudentDemo();
           Student s=new Student();
           s.setName(request.getParameter("Name"));
           s.setDob(request.getParameter("dob"));
           s.setStd(request.getParameter("std"));
            s.setId(request.getParameter("id"));
            s.setEmail(request.getParameter("email"));
            s.setMobile_no(request.getParameter("mobile_no"));
            s.setSub1(request.getParameter("sub1"));
            s.setSub2(request.getParameter("sub2"));
            s.setSub3(request.getParameter("sub3"));
            s.setSub4(request.getParameter("sub4"));
            s.setSub5(request.getParameter("sub5"));
            s.setSub6(request.getParameter("sub6"));
            s.setSub7(request.getParameter("sub7"));
            
            
           
                int r=demo.SetData(s);
                if(r==1)
                {%>
                <form action="student_register.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
                	<img src="class.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
      <center><h3 style="position:absolute;top:200px;left:250px;">Successful Registration Done !!!!!!!!!!!!!!</h3></center>
    </div>
               <%  }
                else
                {%>
                  <form action="student_register.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>
                 	<img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
                
                  
               <% }
           
    %>
</body>
</html>