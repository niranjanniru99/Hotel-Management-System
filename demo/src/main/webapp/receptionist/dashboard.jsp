<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font awesome -->
    <%@include file="../fontawesome.jsp" %>
    <!-- BootStrap css and JavaScript links -->
    <%@include file="../bootstrap_links.jsp" %>
    <title>Document</title>
    <!-- custom stylesheet -->
    <link href="../css/dashboard.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid container">
      <button class="navbar-toggler-icon btn btn-default" id="menu-toggle"><a href="#menu-toggle"></a></button>
      <a class="navbar-brand pl-3" href="">Hotel RevaturePro</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/receptionist/availableRooms">Available Rooms</a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Features</a>
          </li> -->
          <li class="nav-item">
            <a class="nav-link" href="/receptionist/rpricing">Pricing</a>
          </li>
          <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownMenuLink"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Features
              </a>
              <ul
                class="dropdown-menu bg-dark text-white p-1"
                aria-labelledby="navbarDropdownMenuLink"
              >
                <li><i class="fa-solid fa-wifi"></i> Seamless Internet</li>
                <li><i class="fas fa-tv"></i> Tv</li>
                <li>
                  <i class="fa fa-cutlery" aria-hidden="true"></i> Restaurent
                </li>
                <li>
                 <i class='fas fa-swimmer'></i> Swimming Pool
                </li>
                <li>
                 <i class='fas fa-heartbeat'></i> Exercise Facilities
                </li>
                <li>
                  <i class="fa fa-plus" aria-hidden="true"></i> Many more
                </li>
              </ul>
            </li>
          <li>
            <div class="d-sm-flex pl-2">
              <div class="d-none d-md-block">
                <img src="http://randomuser.me/api/portraits/men/12.jpg" class="rounded-circle d-none d-md-block" alt="" style="overflow: hidden; width: 40px; height: 40px;">
              </div>
              <a class="nav-link" href="#">
                   ${rname}
              </a>
          </li>
          <li>
            <a href="/logout" class="nav-link">Logout</a>
<!--             <form name="logoutForm" action="/logout" method="post" hidden="true">
      				<input hidden type="submit" value="/Logout"/>
			</form>  -->
          </li>
        </ul>
      </div>
    </div>
  </nav>
<br><br>
    <div id="wrapper" class="toggled">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                  <!-- <div class="container"> -->
                    <div class="d-sm-flex">
                    <div class="d-none d-sm-block">
                      <i class="fa fa-user-circle-o text-warning pt-3" aria-hidden="true" style="font-size:30px;"></i>
                </div>
                    <a href="#">
                        ${rname}
                    </a>
                  </div>
                <!-- </div> -->
                </li>
                <li>
                    <a href="/receptionist/dashboard.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="javascript:document.bookRoomForm.submit()">Book Room</a>
                    
                </li>
                <li>
                    <a href="javascript:document.bookingInfoForm.submit()">Rooms Info</a>
                </li>
                <li>
                  <a href="javascript:document.checkBillForm.submit()">Check Customer Bill</a>
              </li>
                <li>
                    <a href="javascript:document.addServicesForm.submit()">Add Services</a>
                </li>
                <!-- <li>
                    <a href="#">Events</a>
                </li> -->
                <li>
                    <a href="#">About</a>
                </li>
                <!-- <li>
                    <a href="#">Contact</a>
                </li> -->
                <li>
                  <a href="/logout">Logout</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <!-- <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Simple Sidebar</h1>
                        <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- /#page-content-wrapper -->
        <!-- <span class="placeholder bg-primary col-md-12"></span> -->
        <br><br>
        <div class="container">
          <div class="row">
            <div class="d-md-flex justify-content-center pb-5">
              <div class="col-md-4 col-xl-4">
                <div class="card bg-info order-card">
                  <div class="card-block d-none d-md-block">
                    <i class="fa fa-user-plus p-5 pb-1 fa-3x text-center w-100"></i>
                  </div>
                  <a class="btn btn-info" href="javascript:document.addCustomerForm.submit()" role="button"><h3>Add Customer</h3></a>
                <form name="addCustomerForm" action="/receptionist/addCustomer" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/addCustomer"/></form>
                </div>
              </div>

              <div class="col-md-4 col-xl-4">
                <div class="card bg-warning order-card">
                  <div class="card-block d-none d-md-block">
                    <span><i class="fa-solid fa-hotel p-5 pb-1 fa-3x text-center w-100" style="font-size: 40px;"></i></span>
                  </div>
                  <a class="btn btn-warning" href="javascript:document.bookRoomForm.submit()" role="button"><h3>Book Room</h3></a>
                  <form name="bookRoomForm" action="/receptionist/bookRoom" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/bookRoom"/></form>
                </div>
              </div>

              <div class="col-md-4 col-xl-4">
                <div class="card bg-success order-card">
                  <div class="card-block d-none d-md-block">
                    <span><i class="fa fa-info-circle f-center p-5 pb-1 text-center w-100" style="font-size: 40px;"></i></span>
                  </div>
                  <a class="btn btn-success text-dark" href="javascript:document.bookingInfoForm.submit()" role="button"><h3>Booking Info</h3></a>
                  <form name="bookingInfoForm" action="/receptionist/bookingInfo" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/bookingInfo"/></form>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="d-md-flex justify-content-center pb-5">
              <div class="col-md-4 col-xl-4">
                <div class="card bg-secondary order-card">
                  <div class="card-block d-none d-md-block">
                    <span class="p-5"><img class="mx-auto d-block img-fluid"  src="images/fork-knife.png" style="width: 50px; height: 50px;"></span>
                  </div>
                  <a class="btn btn-secondary text-dark" href="javascript:document.addServicesForm.submit()" role="button"><h3>Add Services</h3></a>
                  <form name="addServicesForm" action="/receptionist/addServices" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/addServices"/></form>
                </div>
              </div>

              <div class="col-md-4 col-xl-4">
                <div class="card bg-danger order-card">
                  <div class="card-block d-none d-md-block">
                    <span class="p-5"><img class="mx-auto d-block img-fluid" src="images/check-out.png " style="width: 50px; height: 50px;"></img></span>
                  </div>
                  <a class="btn btn-danger text-dark" href="javascript:document.checkOutForm.submit()" role="button"><h3>CheckOut</h3></a>
                <form name="checkOutForm" action="/receptionist/checkOut" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/checkOut"/></form>
                </div>
              </div>

              <div class="col-md-4 col-xl-4">
                <div class="card bg-primary order-card">
                  <div class="card-block d-none d-md-block">
                    <span><i class="fa fa-money-bill-alt f-center p-5 pb-1 text-center w-100" style="font-size: 40px;"></i></span>
                  </div>
                  <a class="btn btn-primary text-dark" href="javascript:document.checkBillForm.submit()" role="button"><h3>Check Customer Bill</h3></a>
                  <form name="checkBillForm" action="/receptionist/checkBill" hidden="true" method="get">
      				<input hidden type="submit" value="/receptionist/checkBill"/></form>
                </div>
              </div>

            </div>
          </div>
        </div>
        
<!-- Footer -->
<%@include file="../footer.jsp" %>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>



</body>

</html>

</body>
</html>