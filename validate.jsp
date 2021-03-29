
<%@page import="Student.Demo.*" %>
<%@page import="Student.Bean.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" >
<title>Insert title here</title>
</head>
<body style="background-color:#007580">
<form action="student_login.jsp">
<button class="btnb" style="position:absolute;top:2px;
left:5px;width:80px;background-color:red;" type="submit">BACK</button></form>

  <%
  String name=request.getParameter("std_name");
  String id=request.getParameter("std_id");
        StudentDemo demo=new StudentDemo();
       int t=demo.find(name,id);
       if(t==1)
       {
           Student s=demo.getData(name,id);
           List<String>ls=new ArrayList<String>();
           List<Integer> m=new ArrayList<Integer>();
           ls=demo.getSub(name, id, m);
        
            %>
            
               <table>
               <br/><br/>
                   <tr>
                      <th style="width:200px;background-color:#1e212d;font-family:cursive;color:white;">Name</th>
                         <th style="width:200px;background-color:#1e212d;font-family:cursive;color:white;" >Date of Birth</th>
                            <th style="width:200px;background-color:#1e212d;font-family:cursive;color:white;">Class</th>
                               <th style="width:200px;background-color:#1e212d;font-family:cursive;color:white;">ID</th>
                               <th style="width:200px;background-color:#1e212d;font-family:cursive;color:white;">Email</th>
                                  <th  style="width:200px;background-color:#1e212d;font-family:cursive;color:white;">Mobile No.</th>
                                  
                   </tr>
                   <tr >
      <td style="width:200px;height:40px ;background-color:#b68973;font-family:cursive;"><%=s.getName()%></td>    
                             <td style="width:200px;text-align:center;height:40px;background-color:#b68973;font-family:cursive;"><%=s.getDob()%></td>   
                               <td style="width:200px;text-align:center;height:40px;background-color:#b68973;font-family:cursive;"><%=s.getStd()%></td>  
                                <td style="width:200px;text-align:center;height:40px;background-color:#b68973;font-family:cursive;"><%=s.getId()%></td>  
                                  <td style="width:200px;height:40px;background-color:#b68973;font-family:cursive;"><%=s.getEmail()%></td> 
                                <td style="width:200px;height:40px;background-color:#b68973;font-family:cursive;"><%=s.getMobile_no()%></td>  
                                
                      </tr>
                 
               </table>
               
               
            
            
            
            
            <div>
            <table style="margin-left:50px;">
            <tr>
                     <th style="width:200px;background-color:#40394a;left:250px;font-family:cursive;color:white;">Subject Scores</th>
            </tr>
              <tr>
                <%  for(String a : ls)
                {
                	%>
                	  <td style="text-align:center;width:200px;height:40px;background-color:#433520;color:white;font-family:cursive;"><%=a %></td><br/>
                	  
                <% }
                   %>
              </tr>
                <tr>
                <%  for(Integer a : m)
                {
                	%>
                	  <td style="text-align:center;width:200px;height:40px;background-color:#f5c0c0;font-family:cursive;"><%=a %></td><br/>
                	  
                <% }
                   %>
              </tr>
           </table>
            </div>
    	 
    	   
    	   
    	   
    	   
      <%}
       else{
       %>
    	   <img src="sorry.jpg" style="position:absolute;left:150px;width:600px;height:400px;top:60px;">
  <% }%>
  
     

</body>
</html>