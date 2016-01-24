<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h1 class="alert alert-danger"> Thank you for your business!</h1>

                    <p>Your order will be delivered to you within three business days !</p>

                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <p>
                    <a href="<spring:url value="/" />" class="btn btn-primary">
                        <span class="glyphicon-hand-left glyphicon"></span> OK
                    </a>
                </p>
            </div>

        </section>
    </div>
</div>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
