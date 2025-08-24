<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <!-- External CSS -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>

    <div class="profile-container">
        <div class="profile-header">
            <h2>Welcome, ${session_name} 🎉</h2>
        </div>

        <div class="profile-details">
            <div class="detail-card">
                <h3>Email</h3>
                <p>${session_email}</p>
            </div>

            <div class="detail-card">
                <h3>Gender</h3>
                <p>${session_gender}</p>
            </div>

            <div class="detail-card">
                <h3>City</h3>
                <p>${session_city}</p>
            </div>
        </div>

        <div class="actions">
            <a href="editProfile.jsp">Edit Profile</a>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
