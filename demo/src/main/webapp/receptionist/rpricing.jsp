<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- BootStrap css and JavaScript links -->
    <%@include file="bootstrap_links.jsp" %>
<!-- Font awesome -->
    <%@include file="fontawesome/fontawesome.jsp" %>
<style>
* {
  box-sizing: border-box;
}

.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: #111;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 1px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey {
  background-color: #eee;
  font-size: 20px;
}

.button {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}

@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
}
</style>
</head>
<body>
<%@include file="navbar.jsp"%>
<h2 style="text-align:center" class="p-5 pb-0">Welcome To RevaturePro</h2>
<p><h5 style="text-align:center" class="text-danger">...Checkout our Price List Here...</h5></p>
<div class="row p-5 pt-1">
<div class="columns">
  <ul class="price">
    <li class="header bg-primary">Executive Suite</li>
    <li class="grey">$ 199.99 / day</li>
    <li>King Sized Bed</li>
    <li>Separate Living & Dining Area</li>
    <li>Private Sitting Area</li>
    <li>Private Restaurant</li>
    <li>Private Swimming Pool</li>
    <li>Mini Bar</li>
    <li>Air Conditioner</li>
    <li>Television</li>
    <li>Refrigerator</li>
    <li>Microwave</li>
    <li>Washing Machine & Dryer</li>
    <li>WiFi</li>
    <li>Exercise Facilities</li>
    <li class="grey"><button onclick="javascript:document.bookRoomForm.submit()" class="button">Book Now</button></li>
    <form name="bookRoomForm" action="/receptionist/bookRoom" method="get" hidden="true">
      				<input hidden type="submit" value="/receptionist/bookRoom" />
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:#04AA6D">Super Deluxe</li>
    <li class="grey">$ 149.99 / day</li>
    <li>King Sized Bed</li>
    <li>Separate Living & Dining Area</li>
    <li>Private Sitting Area</li>
    <!-- <li>Private Restaurant</li> -->
    <!-- <li>Mini Bar</li> -->
    <li>Air Conditioner</li>
    <li>Television</li>
    <li>Refrigerator</li>
    <li>Microwave</li>
    <li>Washing Machine & Dryer</li>
    <li>WiFi</li>
    <li>Swimming Pool</li>
    <li>Exercise Facilities</li>
    <li class="grey"><button onclick="javascript:document.bookRoomForm.submit()" class="button">Book Now</button></li>
  </ul>
</div>


<div class="columns">
  <ul class="price">
    <li class="header bg-black">Deluxe</li>
    <li class="grey">$ 99.99 / day</li>
    <li>Queen Sized Bed</li>
    <li>Separate Living & Dining Area</li>
    <!-- <li>Private Sitting Area</li> -->
    <!-- <li>Private Restaurant</li> -->
    <!-- <li>Mini Bar</li> -->
    <li>Air Conditioner</li>
    <li>Television</li>
    <li>Refrigerator</li>
    <li>Microwave</li>
    <li>Washing Machine & Dryer</li>
    <li>WiFi</li>
    <li class="grey"><button onclick="javascript:document.bookRoomForm.submit()" class="button">Book Now</button></li>
  </ul>
</div>
</div>
<!-- footer -->
<%@include file="footer.jsp" %>

</body>
</html>