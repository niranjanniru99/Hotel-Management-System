<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font awesome -->
<%@include file="fontawesome/fontawesome.jsp" %> 
<!-- Bootstrap css and JavaScript links -->
<%@include file="bootstrap_links.jsp" %>
<title>Insert title here</title>
</head>
<body class="align-items-center">
<!-- navbar -->
<%@include file="navbar.jsp" %><br><br>
<section>
<h3 class="text-center">Customer Booking Information</h3>
<div class="container">
<table class="table table-bordered table-striped text-center">
<tr>
<th>Customer Name</th>
<th>Email</th>
<th>Mobile No.</th>
<th>Id Proof</th>
<th>Id Proof No.</th>
<th>Address</th>
</tr>
<%-- <td class="border">${user.getUserId()}</td>
<td class="border">${user.getUserName()}</td> --%>
<c:forEach items="${allCustomers}" var="customers" varStatus="status">
<tr>
<td>${customers.userName }</td>
<td>${customers.userEmail }</td>
<td>${customers.mobileNumber }</td>
<td>${customers.idProof }</td>
<td>${customers.idProofNumber }</td>
<td>${customers.address }</td>
</tr>
</c:forEach>
</table>
</div>
</section><br><br>
<!-- footer -->
<%@include file="footer.jsp" %>
</body>
</html>