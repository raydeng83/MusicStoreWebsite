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
                    <h1>Customer</h1>

                    <p>Customer details</p>
                </div>
            </div>
        </section>
        <section class="container">
            <form:form commandName="order" class="form-horizontal">
                <fieldset>
                    <legend>Customer Details</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="name">Name</label>

                        <div class="col-lg-10">
                            <form:input id="name" path="cart.customer.customerName" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="email">Email</label>

                        <div class="col-lg-10">
                            <form:input id="email" path="cart.customer.customerEmail" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="phone">Phone</label>

                        <div class="col-lg-10">
                            <form:input id="phone" path="cart.customer.customerPhone" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="street">Street Name</label>

                        <div class="col-lg-10">
                            <form:input id="street" path="cart.customer.billingAddress.streetName" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="apartment">Apartment Number</label>

                        <div class="col-lg-10">
                            <form:input id="apartment" path="cart.customer.billingAddress.apartmentNumber" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="city">City</label>

                        <div class="col-lg-10">
                            <form:input id="city" path="cart.customer.billingAddress.city" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="state">State</label>

                        <div class="col-lg-10">
                            <form:input id="state" path="cart.customer.billingAddress.state" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="country">country</label>

                        <div class="col-lg-10">
                            <form:input id="country" path="cart.customer.billingAddress.country" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2" for="zipCode">Zip Code</label>

                        <div class="col-lg-10">
                            <form:input id="zipCode" path="cart.customer.billingAddress.zipCode" type="text"
                                        class="form:input-large"/>
                        </div>
                    </div>

                    <input type="hidden" name="_flowExecutionKey"/>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <input type="submit" id="btnAdd" class="btn btn-primary" value="Next"
                                   name="_eventId_customerInfoCollected"/>
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