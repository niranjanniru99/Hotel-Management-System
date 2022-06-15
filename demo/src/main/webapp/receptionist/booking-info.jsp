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
<h3 class="text-center">Customer Booking Information</h3>
<div class="container">
<table class="table table-bordered table-striped text-center">
<tr>
<th>Room Number</th>
<th>Room Type</th>
<th>Customer Email</th>
<th>Customer Phone</th>
<th>Adults</th>
<th>Children</th>
<th>Check In</th>
<th>Check Out</th>
<th>Services</th>
<th>Comments</th>
</tr>
<%-- <td class="border">${user.getUserId()}</td>
<td class="border">${user.getUserName()}</td> --%>
<c:forEach items="${bookingInfo}" var="info" varStatus="status">
<tr>
<td>${info.roomNo }</td>
<td>${info.typeOfRoom }</td>
<td>${info.email }</td>
<td>${info.phoneNo }</td>
<td>${info.adults }</td>
<td>${info.children }</td>
<td>${info.checkInDate }</td>
<td>${info.checkOutDate }</td>
<td>${info.services }</td>
<td>${info.comments }</td>
</tr>
</c:forEach>
</table>
</div>
</section><br><br>
<!-- footer -->
<%@include file="../footer.jsp" %>
</body>
</html>