<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register / Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script src="${pageContext.request.contextPath}/js/script.js" defer></script>
</head>
<body>

<!-- Header Include -->
<jsp:include page="header.jsp"></jsp:include>
    
     
<div class="auth-container">
    <div class="form-box">
        <!-- Login Form -->
        <form id="loginForm" class="form active" action="login" method="post">
            <h2>Login</h2>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
            <p class="toggle-text">Don't have an account? 
                <a href="#" onclick="showRegister()">Register</a>
            </p>
        </form>

       <!-- Register Form -->
<form id="registerForm" class="form" action="register" method="post">
    <h2>Register</h2>

    <input type="text" name="name" placeholder="Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>

    <!-- Gender Field -->
    <div class="gender-container">
        <label>Gender:</label>
        <div class="gender-options">
            <label><input type="radio" name="gender" value="Male" required> Male</label>
            <label><input type="radio" name="gender" value="Female"> Female</label>
            <label><input type="radio" name="gender" value="Other"> Other</label>
        </div>
    </div>

    <!-- City Field -->
    <select name="city" required>
        <option value="">Select City</option>
        <option value="Noida">Noida</option>
        <option value="Delhi">Delhi</option>
        <option value="Gurgaon">Gurgaon</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Bangalore">Bangalore</option>
    </select>

    <button type="submit">Register</button>
    <p class="toggle-text">
        Already have an account? 
        <a href="#" onclick="showLogin()">Login</a>
    </p>
</form>

    </div>
</div>

<!-- Footer Include -->
s<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
