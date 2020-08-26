<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Mall Register</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<link href="<c:url value="/resources/assets/images/favicon.png" />"
	rel="icon">
	
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/ionicons/css/ionicons.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/animate.css/animate.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/venobox/venobox.css" />"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
<link href="<c:url value="/resources/assets/css/style.css" />"
	rel="stylesheet">

</head>

<style>
.modal-content {
	background-color: darkcyan;
}

.btn-link {
	color: white;
}

.modal-heading h2 {
	color: #ffffff;
}
</style>

<body>

	<header id="header" class="header-transparent">
		<div class="container">

			<div id="logo" class="pull-left">
				<h1>
					<a href="/MallProject/" class="scrollto">ABC MAll</a>
				</h1>
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="/MallProject/">Home</a></li>

				</ul>
			</nav>
			
		</div>
	</header>
	
	<section id="intro">
		<br> <br> <br>

		<div class="modal-dialog-con">

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-heading">
						<h2 class="text-center">Register</h2>
					</div>
					<hr />
					<div class="modal-body">
						<p class="text-center" style="color: red">${msg}</p>
						<form:form id="registerId" action="registerAccess" role="form"
							modelAttribute="registerAttribute">
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-user"></span>
									</span>
									<form:input type="text" class="form-control"
										placeholder="Full Name" path="name" required="required"/>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-envelope"></span>
									</span>
									<form:input type="text" class="form-control"
										placeholder="Email Address" path="email" required="required"/>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-earphone"></span>
									</span>
									<form:input type="text" class="form-control"
										placeholder="Phone number" path="number" maxlength="10" required="required"/>

								</div>

							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-lock"></span>
									</span>
									<form:input type="password" class="form-control" id="password1"
										placeholder="Password" path="pass" required="required"/>

								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"> <span
										class="glyphicon glyphicon-lock"></span>
									</span>
									<form:input type="password" class="form-control" id="password2"
										placeholder="Confirm Password" path="pass2" required="required"/>

								</div>
							</div>


							<div class="form-group text-center">
								<button class="btn btn-success btn-lg" onclick="theform()">Register</button>
								<a href="login" class="btn btn-success btn-lg">Login</a>
							</div>

						</form:form>

					</div>
				</div>
			</div>
		</div>

	</section>
	
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 text-lg-left text-center">
					<div class="copyright">
						&copy; Copyright <strong>ABC Entertainment and Real
							Estate Pvt Ltd</strong>. All Rights Reserved
					</div>

				</div>

			</div>
		</div>
	</footer>
	
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<script
		src="<c:url value="/resources/assets/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/jquery.easing/jquery.easing.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/php-email-form/validate.js" />"></script>
	<script src="<c:url value="/resources/assets/vendor/wow/wow.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/venobox/venobox.min.js" />"></script>
	<script
		src="<c:url value="/resources/assets/vendor/superfish/superfish.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/hoverIntent/hoverIntent.js" />"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
	<script>
		baguetteBox.run('.tz-gallery');
	</script>

	<script src="<c:url value="/resources/assets/js/main.js" />"></script>

</body>

</html>