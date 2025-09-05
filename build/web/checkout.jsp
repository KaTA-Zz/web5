<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Invoice</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="checkout-container">
  <h1>Order Invoice - Checkout</h1>

  <h2>Order Summary</h2>
  <div class="table-container">
    <table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
  </tr>
  
  <c:set var="total" value="0" />
  <c:forEach var="item" items="${cart.items}">
    <tr>
      <td><c:out value='${item.quantity}'/></td>
      <td><c:out value='${item.product.description}'/></td>
      <td>${item.product.priceCurrencyFormat}</td>
      <td>${item.totalCurrencyFormat}</td>
      <c:set var="total" value="${total + item.total}" />
    </tr>
  </c:forEach>
  
  <tr class="total-row">
    <td colspan="3"><strong>Total:</strong></td>
    <td><strong><fmt:formatNumber value="${total}" type="currency"/></strong></td>
  </tr>
    </table>
  </div>

  <h2>Payment Options</h2>
<div class="payment-buttons">
  <form action="cart" method="post">
    <input type="hidden" name="action" value="back">
    <input type="submit" value="Back to Cart" class="back-button">
  </form>
  
  <form action="cart" method="post">
    <input type="hidden" name="action" value="pay_cash">
    <input type="submit" value="Pay with Cash" class="cash-button">
  </form>
  
  <form action="cart" method="post">
    <input type="hidden" name="action" value="pay_visa">
    <input type="submit" value="Pay with Visa" class="visa-button">
  </form>
  </div>
</div>

<style>
.checkout-container {
  max-width: 800px;
  margin: 20px auto;
  padding: 20px;
  text-align: center;
}

.checkout-container h1, .checkout-container h2 {
  text-align: center;
  margin-bottom: 20px;
}

.table-container {
  display: flex;
  justify-content: center;
  margin: 20px 0;
}

table {
  margin: 0 auto;
  border-collapse: collapse;
  width: auto;
  min-width: 500px;
}
.total-row {
    border-top: 2px solid #333;
    font-weight: bold;
}
.payment-buttons {
    margin-top: 30px;
    text-align: center;
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}
.back-button {
    background-color: #6c757d;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin: 5px;
}
.cash-button {
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin: 5px;
}
.visa-button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin: 5px;
}
.back-button:hover, .cash-button:hover, .visa-button:hover {
    opacity: 0.8;
    transform: translateY(-1px);
}

@media (max-width: 600px) {
    .checkout-container {
        margin: 10px;
        padding: 15px;
    }
    
    table {
        min-width: auto;
        width: 100%;
        font-size: 14px;
    }
    
    .payment-buttons {
        flex-direction: column;
        align-items: center;
    }
    
    .payment-buttons form {
        width: 100%;
        max-width: 200px;
    }
    
    .back-button, .cash-button, .visa-button {
        width: 100%;
        margin: 5px 0;
    }
}
</style>

</body>
</html>