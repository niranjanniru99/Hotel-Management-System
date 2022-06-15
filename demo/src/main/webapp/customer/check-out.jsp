<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap css and JavaScript links -->
    <%@include file="bootstrap_links.jsp" %>
    <%@include file="modalpopup.jsp" %>
</head>
<body class="align-items-ceter">
<script type="text/javascript">
    $(window).on('load', function() {
        $('#exampleModal').modal('show');
    });
</script>
<!-- navbar -->
<%@include file="navbar.jsp" %><br><br>
<h3 class="text-center text-danger">Check Out</h3>
<div class="container w-50 cjustify-content-center bg-primary text-white p-5">
<form action="/receptionist/checkOut" method="post">
<div class="p-3">
<span class="form-label"><h4>Enter Room Number</h4></span>
<input class="form-control w-50" type="text" name="roomNo" placeholder="Enter Customer Room No.">
</div>
<div class="p-3">
<span class="form-label"><h4>Enter Customer Email</h4></span>
<input class="form-control w-50" type="text" name="userEmail" placeholder="Enter Customer Email">
</div>
<div class="d-flex justify-content-center pt-3">
<button type="submit" class="btn btn-warning">Check Out</button>
</div>
</form>
</div><br><br>
<!-- footer -->
<%@include file="footer.jsp" %>
</body>
</html>