<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Payment Successful</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="success-container">
    <h1> Payment Successful!</h1>
    
    <div class="success-message">
        <p><c:out value='${message}'/></p>
        <p><strong>Payment Method:</strong> <c:out value='${paymentMethod}'/></p>
    </div>
    
    <div class="order-complete">
        <h2>Order Complete</h2>
        <p>Your order has been processed successfully. Thank you for shopping with us!</p>
        
        <div class="action-buttons">
            <form action="cart" method="post" style="display: inline-block; margin-right: 10px;">
                <input type="hidden" name="action" value="shop">
                <input type="submit" value="Continue Shopping" class="continue-button">
            </form>
            
            <form action="index.jsp" method="get" style="display: inline-block;">
                <input type="submit" value="Go to Home" class="home-button">
            </form>
        </div>
    </div>
</div>

<style>
.success-container {
    max-width: 600px;
    margin: 50px auto;
    padding: 30px;
    text-align: center;
    border: 2px solid #28a745;
    border-radius: 10px;
    background-color: #f8fff9;
}

.success-container h1 {
    color: #28a745;
    font-size: 2.5em;
    margin-bottom: 20px;
}

.success-message {
    background-color: #d4edda;
    border: 1px solid #c3e6cb;
    border-radius: 5px;
    padding: 15px;
    margin: 20px 0;
}

.success-message p {
    margin: 10px 0;
    color: #155724;
}

.order-complete {
    margin-top: 30px;
}

.order-complete h2 {
    color: #333;
    margin-bottom: 15px;
}

.action-buttons {
    margin-top: 25px;
}

.continue-button {
    background-color: #28a745;
    color: white;
    padding: 12px 25px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin: 5px;
}

.home-button {
    background-color: #007bff;
    color: white;
    padding: 12px 25px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin: 5px;
}

.continue-button:hover, .home-button:hover {
    opacity: 0.9;
    transform: translateY(-1px);
}

@media (max-width: 600px) {
    .success-container {
        margin: 20px;
        padding: 20px;
    }
    
    .continue-button, .home-button {
        display: block;
        width: 100%;
        margin: 10px 0;
    }
}
</style>

</body>
</html>