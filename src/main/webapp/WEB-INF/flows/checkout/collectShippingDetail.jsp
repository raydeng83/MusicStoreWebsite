<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<body>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Shipping</h1>

                    <p>Shipping details</p>
                </div>
            </div>
        </section>
        <section class="container">
            <form:form commandName="order" class="form-horizontal">
                <fieldset>
                    <legend>Shipping Details</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="street">Street Name</label>

                        <div class="col-lg-10">
                            <form:input id="street" path="cart.customer.shippingAddress.streetName" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="apartment">Apartment Number</label>

                        <div class="col-lg-10">
                            <form:input id="apartment" path="cart.customer.shippingAddress.apartmentNumber" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="city">City</label>

                        <div class="col-lg-10">
                            <form:input id="city" path="cart.customer.shippingAddress.city" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="state">State</label>

                        <div class="col-lg-10">
                            <form:input id="state" path="cart.customer.shippingAddress.state" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="country">country</label>

                        <div class="col-lg-10">
                            <form:input id="country" path="cart.customer.shippingAddress.country" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="zipCode">Zip Code</label>

                        <div class="col-lg-10">
                            <form:input id="zipCode" path="cart.customer.shippingAddress.zipCode" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button id="back" class="btn btn-default" name="_eventId_backToCollectCustomerInfo">back
                            </button>

                            <input type="submit" id="btnAdd" class="btn btn-primary"
                                   value="Next" name="_eventId_shippingDetailCollected"/>
                            <button id="btnCancel" class="btn btn-default" name="_eventId_cancel">Cancel</button>
                        </div>
                    </div>

                </fieldset>
            </form:form>
        </section>
    </div>
</div>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp" %>