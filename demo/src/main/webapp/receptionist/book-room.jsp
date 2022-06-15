<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font awesome -->
<%@include file="../fontawesome/fontawesome.jsp"%>
<!-- Bootstrap css and JavaScript links -->
<%@include file="../bootstrap_links.jsp"%>
<%@include file="../popup.jsp" %>
</head>
<body class="align-items-center">
	<!-- navbar -->
	<%@include file="../navbar.jsp"%><br>
	<br>
	<h3 class="text-center text-danger">${failed }</h3>
	<h3 class="text-center text-success">${success }</h3>
	<section>
		<div class="container bg-primary text-light w-50 p-5">
			<form action="/receptionist/bookRoom" method="post">
				<span class="text-center"><h1>Make Your Registration</h1></span>
				<div class="p-3">
					<span class="form-label"><h4>Email</h4></span> <input type="email"
						class="form-control" id="floatingInput"
						placeholder="name@example.com" name="email" required>
				</div>
				<div class="row p-3">
					<div class="col-md-6">
						<div class="form-group">
							<span class="form-label text-white"><h4>Check In</h4></span> <input
								class="form-control" type="date" required name="checkInDate"/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<span class="form-label"><h4>Check out</h4></span> 
							<input class="form-control" type="date" required name="checkOutDate"/>
						</div>
					</div>
				</div>
				<div class="row p-3">
                  <div class="col-md-4">
                    <div class="form-group">
                      <span class="form-label"><h4>Rooms</h4></span>
                      <select class="form-control" required name="typeOfRoom">
                        <option value="" selected hidden>Type Of Rooms</option>
                        <option>Executive Suite</option>
                        <option>Super Deluxe</option>
                        <option>Deluxe</option>
                      </select>
                      <span class="select-arrow"></span>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group">
                      <span class="form-label"><h4>Adults</h4></span>
                      <select class="form-control" required name="adults">
                        <option value="" selected hidden >No Of Adults</option>
                        <option>0</option>
                        <option>1</option>
                        <option>2</option>
                      </select>
                      <span class="select-arrow"> </span>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="form-group">
                      <span class="form-label"><h4>Children</h4></span>
                      <select class="form-control" required name="children">
                        <option value="" selected hidden>No Of Children</option>
                        <option>0</option>
                        <option>1</option>
                        <option>2</option>
                      </select>
                      <span class="select-arrow"></span>
                    </div>
                  </div>
                </div>
                <div class="row p-3">
                <div class="col-md-6">
                    <div class="form-group">
                      <span class="form-label"><h4>Phone</h4></span>
                      <input
                        class="form-control"
                        type="tel"
                        placeholder="Enter User's Mobile Number"
                        name="phoneNo"
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <span class="form-label"><h4>Services</h4></span>
                      <select class="form-control" required name="services">
                        <option value="" selected hidden>Add Services</option>
                        <option>Select</option>
                        <option>Food</option>
                        <option>Cab</option>
                        <option>Spa</option>
                      </select>
                      <span class="select-arrow"></span>
                    </div>
                  </div>
                </div>
                <div class="row p-3">
                <div class="col-md-6">
					<span class="form-label"><h4>Room No</h4></span> <input
						class="form-control" id="floatingInput"
						placeholder="Select Room Number" name="roomNo">
				</div>
                  <div class="col-md-6">
					<span class="form-label"><h4>Comments</h4></span> <input
						class="form-control" id="floatingInput"
						placeholder="Comments If Any" name="comments">
				</div>
				</div>
				<div class="p-3 pt-0 col-md-6 col-md-6">
				<a href="javascript: document.availableRoomsForm.submit()" class="btn btn-warning">Available Rooms</a>
                  </div>
                <div class="d-flex justify-content-center p-3">
                  <button type="submit" class="btn btn-light btn-block btn-lg">Book Now</button>
                </div>
			</form>
			<form name="availableRoomsForm" action="availableRooms" hidden="true" type="submit"></form>
			
		</div>
	</section>
	<br>
	<br>

	<!-- footer -->
	<%@include file="../footer.jsp"%>
</body>
</html>