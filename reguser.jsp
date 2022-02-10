<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">
<style type="text/css">
.allButFooter {
	min-height: calc(100vh - 40px);
}

.gradient-custom-3 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 0.5),
		rgba(143, 211, 244, 0.5))
}

.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1))
}
</style>
</head>
<body>
<!--#################################Header here#################################  -->
	<jsp:include page="/WEB-INF/header/RegisterHeader.jsp"></jsp:include>

<!--#################################Code Starts here#################################  -->
	<section class="vh-99 mt-5 bg-image"
		style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
		<div class="mask d-flex align-items-center h-90 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">						
								<h2
									class="text-uppercase text-center mb-5">
									Create account	</h2>
									
											
								<form action="register" method="post">

									<div class="form-outline mb-4">
										<input type="text" id="form3Example1cg"
											class="form-control form-control-lg" placeholder="Your First name" name="firstname" required="required"/>
									</div>
									<div class="form-outline mb-4">
										<input type="text" id="form3Example1cg"
											class="form-control form-control-lg" placeholder="Your Last name" name="lastname" required="required"/>
									</div>
									<div class="form-outline mb-4">
										<input type="email" id="form3Example3cg"
											class="form-control form-control-lg" placeholder="Your Email" name="email" required="required"/>
									</div>
								

									<div class="form-outline mb-4">
										<input type="password" id="form3Example4cg"
											class="form-control form-control-lg"
											placeholder="Your Password" name="password" required="required"/>

									</div>

									<div class="form-outline mb-4">
										<input type="password" id="form3Example4cdg"
											class="form-control form-control-lg"
											placeholder="Repeat your password"required="required"/>
									</div>

									<div class="form-check  justify-content-center mb-5">
										<input class="form-check-input me-3" type="checkbox" value=""
											id="form2Example3cg" /> <label
											class="form-check-label" for="form2Example3g"> I
											agree all statements in <a href="#!" class="text-body"><u>Terms
													of service</u></a>
										</label>
									</div>

									<div class="d-flex justify-content-center">
										<button type="submit"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body btn-rounded">Register</button>
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										Have already an account? <a href="/jsp/login.jsp"
											class="fw-bold text-body"><u>Login here</u></a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<!--#################################Footer here#################################  -->
	<footer>
		<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript">
	
	document.addEventListener('DOMContentLoaded', function () {
	        let today = new Date().toLocaleDateString();
	        var options = {
	            defaultDate: new Date(today),
	            setDefaultDate: true
	        };
	        var elems = document.querySelector('#datepicker');
	        var instance = M.Datepicker.init(elems, options);
	        instance.setDate(new Date(today));
	        document.getElementById("datepicker").value = instance;
	});
	
	
	</script>
	<!-- JQuery -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</body>
</html>