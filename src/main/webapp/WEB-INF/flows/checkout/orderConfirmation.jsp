<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<jsp:useBean id="now" class="java.util.Date"/>


<body>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Order</h1>

                    <p>Order Confirmation</p>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="row">
                <form:form commandName="order" class="form-horizontal">
                    <input type="hidden" name="_flowExecutionKey"
                           value="${flowExecutionKey}"/>

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong> <br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city},${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country},${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>
                                    <em>Shipping Date: <fmt:formatDate type="date" value="${now}"/></em>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong> <br>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city},${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country},${order.cart.customer.billingAddress.zipCode}
                                </address>
                            </div>

                        </div>
                        <div class="row">

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">
                                                ${cartItem.quantity}</td>
                                        <td class="col-md-1 text-center">$${cartItem.product.productPrice}</td>
                                        <td class="col-md-1 text-center">$${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right"><h4>
                                        <strong>Grand Total: </strong>
                                    </h4></td>
                                    <td class="text-center text-danger"><h4>
                                        <strong>$${order.cart.grandTotal}</strong>
                                    </h4></td>
                                </tr>
                                </tbody>
                            </table>
                            <button id="back" class="btn btn-default"
                                    name="_eventId_backToCollectShippingDetail">back
                            </button>

                            <button type="submit" class="btn btn-success"
                                    name="_eventId_orderConfirmed">
                                Submit Order <span class="glyphicon glyphicon-chevron-right"></span>
                            </button>

                            <button id="btnCancel" class="btn btn-default" name="_eventId_cancel">Cancel</button>

                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp" %>