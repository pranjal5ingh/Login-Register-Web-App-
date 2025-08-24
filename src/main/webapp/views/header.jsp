<%@page import="ch.qos.logback.core.joran.util.AggregationAssessor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%
       String name = (String) session.getAttribute("session_name");
    %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>   
    <div class="header">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/a.png" alt="Logo">
            <span class="site-title">Lost Boy</span>
        </div>
        
   
            <%
            
            if(name != null){
            	
            	%>
            	
            	  <!-- Menu Section -->
                 <div class="menubar">
                     <ul class="menu">
                         <li><a href="homepage">Home</a></li>
                         <li><a href="aboutus">About</a></li>
                         <li><a href="contactus">Contact</a></li>
                         <li><a href="profile"><%out.println(name);%></a></li>
                         <li><a href="logout">LogOut</a></li>
                     </ul>
                 </div> 
            	
            	<%
            }
            else{
            	 %>
            	 <!-- Menu Section -->
                 <div class="menubar">
                     <ul class="menu">
                         <li><a href="homepage">Home</a></li>
                         <li><a href="aboutus">About</a></li>
                         <li><a href="contactus">Contact</a></li>
                         <li><a href="reglogin">Register/Login</a></li>
                     </ul>
                 </div>
                 <% 
            }
         %>
       
    </div>
</body>
</html>
