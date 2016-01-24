<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<body>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger"> Invalid Cart</h1>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <p>
                    <a href="<spring:url value="/productList" />" class="btn btn-primary">
                        <span class="glyphicon-hand-left glyphicon"></span> products
                    </a>
                </p>
            </div>

        </section>
    </div>
</div>
</body>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
