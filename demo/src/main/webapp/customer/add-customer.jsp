<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- Font awesome -->
    <%@include file="fontawesome/fontawesome.jsp" %>
    <!-- Bootstrap css and JavaScript links -->
    <%@include file="bootstrap_links.jsp" %>
	
    <title>Document</title>

    <style>
        .gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>

      <section>
  <div class="mask d-flex bg-white align-items-center h-100">
    <div class="container h-100 mt-5 mb-5">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6 bg-secondary">
          <div class="card" style="border-radius: 15px;">
           <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Enter User Details</h2>
				<h5 class="text-success">${success}</h5>
				<h5 class="text-danger">${failed }</h5>
              <form action="/receptionist/addCustomer" method="post">

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">User Name</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="userName" required />
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3cg">User Email</label>
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" name="userEmail" required />
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cg">Password</label>
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="password" required />
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cdg">Confirm your password</label>
                  <input type="password" id="form3Example4cdg" class="form-control form-control-lg" name="cPassword" required />
                  
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cdg">Id Proof</label>
                    <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="idProof" required />
                    
                </div>
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cdg">Id Proof Number</label>
                    <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="idProofNumber" required />
                </div>
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cdg">Mobile Number</label>
                    <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="mobileNumber" required />
                </div>
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cdg">Address</label>
                    <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="address" required />
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                <div>
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
              
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                  </div>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register User</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="#!"
                    class="fw-bold text-body"><u>Login here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- footer -->
<%@include file="footer.jsp" %>
    
</body>
</html>