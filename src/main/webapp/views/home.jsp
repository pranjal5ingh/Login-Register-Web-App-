<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>

   

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome 
            <c:choose>
                <c:when test="${not empty sessionScope.username}">
                    ${sessionScope.username} 👋
                </c:when>
                <c:otherwise>
                    Guest 👋
                </c:otherwise>
            </c:choose>
        </h1>
        <p>Today is: <%= new java.util.Date() %></p>
        
    </div>

    <div class="updates">
        <h2>Latest Updates</h2>
        <ul id="newsList"></ul>
    </div>

<script>
    // Example dynamic updates (can also be fetched from server via AJAX/Fetch API)
    const updates = [
        "🚀 New Course Launched: Java Spring Boot",
        "📅 Webinar on Web Security this Sunday",
        "🎉 Congratulations to our top students!"
    ];

    const newsList = document.getElementById("newsList");

    // Loop and add list items dynamically
    updates.forEach(update => {
        const li = document.createElement("li");
        li.textContent = update;
        newsList.appendChild(li);
    });
</script>

    

</body>
</html>
