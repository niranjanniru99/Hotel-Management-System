<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <!-- Font awesome -->
    <%@include file="fontawesome/fontawesome.jsp" %> 
    <!-- Bootstrap css and JavaScript links -->
    <%@include file="../bootstrap_links.jsp" %>
    <!-- custom css -->
    <link href="../css/index.css" rel="stylesheet"/>
    <link href="../css/dashboard.css" rel="stylesheet"/>
    

    <title>Document</title>
  </head>
 
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark pb-2">
        <div class="container-fluid container">
   <div class="dropdown p-0">
  <button class="btn btn-warning text-white dropdown-toggle navbar-dark bg-dark" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <a class="navbar-brand p-2" href="">Hotel RevaturePro</a>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>
          
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
    
    <!-- /#sidebar-wrapper -->

    <section class="bg-dark text-light pb-2 p-5 text-center text-sm-start">
      <div class="container">
        <div class="d-sm-flex">
          <div>
            <h2>
              Welcome to Hotel<span class="text-warning"> RevaturePro</span>
            </h2>
            <p class="lead my-4">A Best Place To Enjoy Your Life</p>
            <br />
            
            <!-- <img class="img-fluid w-50 ms-auto"   src="hotel.png" alt=""/> -->
          </div>
          <img
            class="img-fluid w-50 ms-auto d-none d-sm-block p-1"
            src="https://raw.githubusercontent.com/bradtraversy/bootstrap-bootcamp-website/main/img/showcase.svg"
            alt=""
          />
        </div>
      </div>

      <span class="placeholder bg-secondary col-12 ms-auto d-none d-md-block"></span>
    </section>


    <section class="bg-primary text-white p-5 text-center text-sm-start ms-auto d-none d-xl-block" >
      <div class="container">
        <div class="d-md-flex align-items-center">
          <h2 style="font-family:'Brush Script MT', cursive;" class="">Luxury is not a place, it's an experience. Let's Experience <span class="text-primary bg-light p-1">The Luxury</span></h2>
        </div>
      </div>

    </section>




    <section class="bg-white text-dark p-5 text-center text-sm-start ms-auto">
      <div class="container">
        <div class="d-sm-flex">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="ms-auto d-none d-lg-block" src="images/executive_room1.jpg" alt="First slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/executive_room2.jpg" alt="Second slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/executive_room3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <div class="text-lg-start p-4 ms-auto">
            <h3>Executive Suite</h3>
            <p class="lead my-4 ">
              Bringing new meaning to luxury and modern design, Il Sereno Hotel
              breathes fresh air into the iconic, bucket list item, that is Lake
              Como. The, award-winning designer, Patricia Urquiola has combined
              the natural ambiance of the surrounding environment with comfort
              and luxury, resulting in a design that embodies all spectrum’s of
              luxurious accommodation.
            </p>
            <br />
            <a href="#">
              <button type="button" class="btn btn-outline-success" onclick="javascript:document.loginform.submit()" name="submit">
                BOOK NOW
              </button>
            </a>
          </div>
        </div>
      </div>
    </section>


    <section class="bg-white text-dark p-5 text-center text-sm-start ms-auto">
      <div class="container">
        <div class="d-sm-flex">
          <div class="text-lg-start p-4 ms-auto">
            <h3>Super Deluxe</h3>
            <p class="lead my-4 ">
              Bringing new meaning to luxury and modern design, Il Sereno Hotel
              breathes fresh air into the iconic, bucket list item, that is Lake
              Como. The, award-winning designer, Patricia Urquiola has combined
              the natural ambiance of the surrounding environment with comfort
              and luxury, resulting in a design that embodies all spectrum’s of
              luxurious accommodation.
            </p>
            <br />
            <a href="#">
              <button type="button" class="btn btn-outline-success" onclick="javascript:document.loginform.submit()" name="submit">
                BOOK NOW
              </button>
            </a>
          </div>
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="ms-auto d-none d-lg-block" src="images/super_deluxe_room1.jpg" alt="First slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/super_deluxe_room2.jpg" alt="Second slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/super_deluxe_room2.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
    </section>



    <section class="bg-white text-dark text-center text-sm-start ms-auto p-5">
      <div class="container">
        <div class="d-sm-flex">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="ms-auto d-none d-lg-block" src="images/deluxe_room1.jpg" alt="First slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/deluxe_room2.jpg" alt="Second slide" >
              </div>
              <div class="carousel-item">
                <img class="ms-auto d-none d-lg-block" src="images/deluxe_room3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <div class="text-lg-start p-4 ms-auto">
            <h3>Deluxe</h3>
            <p class="lead my-4 ">
              Bringing new meaning to luxury and modern design, Il Sereno Hotel
              breathes fresh air into the iconic, bucket list item, that is Lake
              Como. The, award-winning designer, Patricia Urquiola has combined
              the natural ambiance of the surrounding environment with comfort
              and luxury, resulting in a design that embodies all spectrum’s of
              luxurious accommodation.
            </p>
            <br />
            <a href="#">
              <button type="button" class="btn btn-outline-success" onclick="javascript:document.loginform.submit()" name="submit">
                BOOK NOW
              </button>
            </a>
          </div>
      </div>
    </div>
    </section>
 



    
      
      <section class="p-5 bg-primary text-sm-start text-center">
        <div class="container ">
        <h2 class="text-center text-white">...Happy Customer Says...</h2>
        <div class="d-sm-flex">
          
          <div class="row">
            <div class="col-md-4 col-lg-4">
              <div class="card bg-light">
                <div class="card-body text-center">
                  <img src="http://randomuser.me/api/portraits/men/11.jpg" class="rounded-circle mb-3" alt="">
                  <h2 class="card-title">John Doe</h2>
                  <p class="card-text">
                    &ldquo;If you are looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
                  </p>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                </div>
                </div>
              </div>

              <div class="col-md-4 col-lg-4">
                <div class="card bg-light">
                  <div class="card-body text-center">
                    <img src="http://randomuser.me/api/portraits/men/12.jpg" class="rounded-circle mb-3" alt="">
                    <h2 class="card-title">Gorge</h2>
                    <p class="card-text">
                      &ldquo;If you are looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
                    </p>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                  </div>
                  </div>
                </div>

                <div class="col-md-4 col-lg-4">
                  <div class="card bg-light">
                    <div class="card-body text-center">
                      <img src="http://randomuser.me/api/portraits/women/11.jpg" class="rounded-circle mb-3" alt="">
                      <h2 class="card-title">Angelina</h2>
                      <p class="card-text">
                        &ldquo;If you are looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
                      </p>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    <span class="fa fa-star checked mx-1 text-warning"></span>
                    </div>
                    </div>
                  </div>
            </div>
          </div>
        </div>
        </div>
      </section>





    <section class="bg-white text-sm-start text-center">
    <div class="container">
      <h1 class="text-center p-3">Our Blog</h1>
      <div class="d-sm-flex">
    <div class="row">
      <div class="column p-3">
        <!-- <div class="top-left">13 May</div> -->
        <img src="images/blog1.jpg" alt="Snow" style="width:100%">
        <h5 class="text-center">Discover New Adventure</h5>
      </div>
      <div class="column p-3">
        <img src="images/blog2.jpg" alt="Snow" style="width:100%">
        <h5 class="text-center">Most Expensive Hotel</h5>
      </div>
      <div class="column p-3">
        <img src="images/blog3.jpg" alt="Forest" style="width:100%">
        <h5 class="text-center">1st Anniversary</h5>
      </div>
    </div>
  </div>
</div>
</section>

<!-- footer -->
<%@include file="footer.jsp" %>
  </body>
</html>
