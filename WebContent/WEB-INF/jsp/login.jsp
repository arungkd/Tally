
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Accounts</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet" href="/accounts/resources/css/font-awesome.min">
<!-- Ionicons -->
<link rel="stylesheet" href="/accounts/resources/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/accounts/resources/css/adminlte.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/accounts/resources/plugins/iCheck/square/blue.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>

<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a><b>Accounts</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign in</p>

				<form:form action="loginSubmit" method="post" modelAttribute="login">
					<div class="form-group has-feedback">
						<input type="text" name="username" class="form-control"
							placeholder="Username"> <span
							class="fa fa-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" name="password" class="form-control"
							placeholder="Password"> <span
							class="fa fa-lock form-control-feedback"></span>
					</div>
					<div class="row">

						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Sign
								In</button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>

				<p class="mb-1">
					<a href="#">I forgot my password</a>
				</p>
				<p class="mb-0">
					<a href="register.html" class="text-center">Register</a>
				</p>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script src="/accounts/resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="/accounts/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- iCheck -->
	<script src="/accounts/resources/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			})
		})
	</script>
</body>
</html>
