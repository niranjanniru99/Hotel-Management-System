<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font awesome -->
<%@include file="../fontawesome/fontawesome.jsp" %> 
<!-- Bootstrap css and JavaScript links -->
<%@include file="../bootstrap_links.jsp" %>
<title>Insert title here</title>
</head>
<body class="align-items-center">
<!-- navbar -->
<%@include file="../navbar.jsp" %><br><br>
<section>
<div class="container">
<table class="table table-bordered table-striped text-center">
<tr>
<th>Customer Email</th>
<th>Customer Name</th>
<th>Room No</th>
<th>Service Name</th>
<th>Price</th>
</tr>
<%-- <td class="border">${user.getUserId()}</td>
<td class="border">${user.getUserName()}</td> --%>
<c:forEach items="${bill}" var="cBill" varStatus="status">
<tr>
<td>${cBill.customerEmail }</td>
<td>${cBill.customerName }</td>
<td>${cBill.roomBooking.getRoomNo() }</td>
<td>${cBill.servicesUsed }</td>
<td>${cBill.price }&#36</td>
</tr>
</c:forEach>
<div >
<tr >
<td><h5>Total</h5></td>
<td></td>
<td></td>
<td></td>
<td><h5>${total}&#36</h5></td>
</tr>
</div>
</table>
</div>
</section><br><br>
<!-- footer -->
<%@include file="../footer.jsp" %>
</body>
</html>