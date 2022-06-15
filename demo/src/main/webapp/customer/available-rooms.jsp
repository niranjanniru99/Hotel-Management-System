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
<div class="container">
<table class="table table-bordered table-striped text-center">
<tr>
<th>Room Number</th>
<th>Room Type</th>
<th>Room Status</th>
</tr>
<%-- <td class="border">${user.getUserId()}</td>
<td class="border">${user.getUserName()}</td> --%>
<c:forEach items="${listOfAvailableRooms}" var="rooms" varStatus="status">
<tr>
<td>${rooms.roomNo }</td>
<td>${rooms.roomType }</td>
<td>${rooms.roomStatus }</td>
</tr>
</c:forEach>
</table>
</div>
</section><br><br>
<!-- footer -->
<%@include file="footer.jsp" %>
</body>
</html>