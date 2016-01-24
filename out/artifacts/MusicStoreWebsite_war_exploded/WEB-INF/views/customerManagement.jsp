<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Table CSS -->
<link href="<c:url value="/resources/css/table.css" />" rel="stylesheet">

<div class="container-wrapper">
  <div class="container">
    <div class="page-header">
      <h1>Customer Management Page</h1>

      <p class="lead">This is the customer management page!</p>
    </div>

    <table class="table table-striped table-hover">
      <thead>
      <tr class="bg-success">
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Username</th>
        <th>Password</th>
        <th>Enabled</th>
        <th></th>
      </tr>
      </thead>
      <c:forEach items="${customerList}" var="customer">
        <tr>
          <td>${customer.customerName}</td>
          <td>${customer.customerEmail}</td>
          <td>${customer.customerPhone}</td>
          <td>${customer.username}</td>
          <td>${customer.password}</td>
          <td>${customer.enabled}</td>


        </tr>
      </c:forEach>
    </table>


    <%@include file="/WEB-INF/views/template/footer.jsp" %>
