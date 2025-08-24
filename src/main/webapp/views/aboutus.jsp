<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

    <!-- Header Include -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- About Section -->
    <div class="about-container">
        <h1>About Us</h1>
        <p>
            Welcome to <b>MyWebsite</b>! We are passionate about delivering high-quality 
            services and products to our customers. Our mission is to provide 
            innovative solutions with a focus on customer satisfaction, trust, 
            and excellence.
        </p>

        <h2>Our Mission</h2>
        <p>
            To empower businesses and individuals by delivering top-notch 
            technology-driven solutions that make a difference.
        </p>

        <h2>Our Vision</h2>
        <p>
            To be recognized as a leader in the industry by constantly innovating, 
            adapting, and exceeding customer expectations.
        </p>

        <h2>Meet Our Team</h2>
        <div class="team">
            <div class="team-member">
                
                <h3>John Doe</h3>
                <p>CEO & Founder</p>
            </div>
            <div class="team-member">
               
                <h3>Jane Smith</h3>
                <p>Lead Developer</p>
            </div>
            <div class="team-member">
               
                <h3>Mike Johnson</h3>
                <p>Marketing Head</p>
            </div>
        </div>
    </div>

    <!-- Footer Include -->
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
