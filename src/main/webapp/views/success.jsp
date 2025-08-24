<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>

    
<div class="error-container">
    <div class="error-card">
                <div class="error-icon" style="color: green;">✔️</div>
                <h2>Success!</h2>
                <p class="error-message">${model_message}</p>
             
    </div>
</div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
