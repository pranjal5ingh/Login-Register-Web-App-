<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

    <!-- Header Section -->
    <jsp:include page="header.jsp" />

    <div class="contact-container">
        <h1>Contact Us</h1>
        <p>If you have any queries, feel free to reach out to us using the form below or through our contact details.</p>

        <!-- Contact Form -->
        <form action="sendMessage" method="post" class="contact-form">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Your Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Send Message</button>
        </form>

        <!-- Static Contact Info -->
        <div class="contact-info">
            <h2>Our Office</h2>
            <p><strong>Address:</strong> 123 Tech Street, Noida, India</p>
            <p><strong>Email:</strong> support@example.com</p>
            <p><strong>Phone:</strong> +91-9876543210</p>
        </div>
    </div>

    <!-- Footer Section -->
    <jsp:include page="footer.jsp" />

</body>
</html>
