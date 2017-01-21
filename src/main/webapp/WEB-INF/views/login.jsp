<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>RMS | Login &amp; Singup</title>

	<!-- JQuery -->
	<script src="resources/libs/jquery.min.js"></script>
	<!-- Bootstrap -->
    <script src="resources/libs/input_validator.min.js"></script>
    <!-- Bootstrap -->
    <link href="resources/libs/bootstrap_lib/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap DatePicker CSS-->
	<link href="resources/libs/bootstrap-datepicker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
	<!-- Bootstrap DatePicker JS-->
	<script type="text/javascript" src="resources/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <!-- Font Awesome -->
    <link href="resources/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/libs/nprogress/nprogress.css" rel="stylesheet">
    <script type="text/javascript" src="resources/libs/nprogress/nprogress.js"></script>
    <!-- Animate.css -->
    <link href="resources/libs/animate.min.css" rel="stylesheet">
    <!-- checkBox.css -->
    <link href="resources/libs/checkBox.css" rel="stylesheet">
    <!-- Custom Page JS -->
    <script src="resources/js/common.js"></script>
    <script src="resources/js/login.js"></script>

    <!-- Custom Theme Style -->
    <link href="resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
<!--LOGIN FORM-->
            <form name="formLogin" action="/rms/formLoginSubmit" method="post" role="form" data-toggle="validator">
              <h1>LOGIN</h1>
              <c:if test="${blnAuthFailed}">
              		<div class="alert alert-danger fade in">
				     	<p>Error! You may be blocked or wrong authentication, any problem please contact your own branch Manager or System Admin</p>
				  	</div>
              </c:if>
              <p style="text-align:left;">Please enter your credential</p>
  					
	<!--Username-->
				<div class="form-group has-feedback">
                    <input type="text" pattern="^[A-z0-9_\-@]{6,20}$" maxlength="20" class="form-control" name="username" placeholder="Username" required/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
				</div>
	<!--Password-->
				<div class="form-group has-feedback">
					<input type="password" pattern="^[A-z0-9_\-@]{6,20}$" maxlength="20" class="form-control" name="password" placeholder="Password" required/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
				</div>
	<!--Checkbox-->
				<div class="form-group">
					<div class="material-switch">
						Store my credential
						&nbsp;
	                    <input id="rememberme" name="rememberme" type="checkbox"/>
	                	<label for="rememberme" class="label-primary"></label>
	                </div>
                </div>
	<!--Submit-->
    			<div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                      <button type="reset" class="btn btn-primary">Clear</button>
                      <button type="submit" class="btn btn-success">Login</button>
                    </div>
				</div>
              <div>
                
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Want to get work with us ?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Resturant Management System</h1>
                  <p>©2016 All Rights Reserved. Project RMS</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
<!--REGISTRATION FORM-->
            <form class="formReg" action="/rms/formRegSubmit" method="post" data-toggle="validator">
			<h1>REGISTER</h1>
			<p  align="left">***Fill correctly or will get block by us</p>
	<!--Pass Code-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-z0-9_]{6,20}$" maxlength="20" class="form-control" id="passcode" placeholder="Enter your refer passcode" data-error="Invalid passcode, (Length 6 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Username-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-z0-9_]{6,20}$" maxlength="20" class="form-control" id="username" placeholder="Enter new username" data-error="Invalid username, (Length 6 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Password-->
				<div class="form-group has-feedback">
					<input type="password" pattern="^[A-z0-9_]{6,20}$" maxlength="20" class="form-control" id="password1" placeholder="Enter new password" data-error="Invalid password, (Length 6 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Verify Password-->
				<div class="form-group has-feedback">
					<input type="password" data-match="password1" pattern="^[A-z0-9_]{6,12}$" maxlength="12" class="form-control" id="password2" placeholder="Enter password again" data-error="Invalid password or not matched, (Length 6 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>			
	<!--Email-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-z0-9_\.]{3,}@[A-z0-9]{3,}\.[A-z]{3,}$" maxlength="50" class="form-control" id="email" placeholder="Enter your email id" data-error="Invalid email, (Length 11 to 50)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Phone Number-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[0-9]{10}$" maxlength="50" class="form-control" id="phone" placeholder="Enter phone number" data-error="Invalid phone number, (length 10 digits)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--First Name-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" id="name1" placeholder="Enter first name" data-error="Pattern not matched, (Length 3 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Middle Name-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" id="name2" placeholder="Enter middle name (Optional)" data-error="Pattern not matched, (Length 3 to 12)">
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Last Name-->
				<div class="form-group has-feedback">
					<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" id="name3" placeholder="Enter last name" data-error="Pattern not matched, (Length 3 to 12)" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Mailing Address-->
				<div class="form-group has-feedback">
					<input type="text" class="form-control" pattern="^[A-z0-9\.\s\n]+$" id="address" placeholder="Enter your home address (optional)" data-error="Invalid field, (Length 0 to 120)">
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Date of Birth-->
              <div class="form-group has-feedback">
				<input type="text" pattern="^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" maxlength="10" class="form-control" id="dob" placeholder="Enter your dob, like 'MM-DD-YYYY'" data-error="Pattern not matched" required>
				<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
              </div>
              <script>
			  		$("#body").hide();
					NProgress.start();
									
					$('#dob').datepicker({
						startView: 1,
						clearBtn: true,
						todayHighlight: true
					});
              </script>
    <!--Upload Photo-->
    			
                	<img id="photopreview" width="100" height="100" src="resources/images/photos/default.png"/>
				<div id="photo-control" class="form-group has-feedback">
					<input type="file" accept="image/jpg, image/jpeg, image/png" class="form-control" id="photo" placeholder="Select your photo" data-error="Invalid field" required>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Submit-->
            <div class="form-group">
				<div class="col-md-6 col-md-offset-3">
					<button type="submit" class="btn btn-primary">Cancel</button>
					<button id="send" type="submit" class="btn btn-success">Submit</button>
				</div>
			</div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Resturant Management System</h1>
                  <p>©2016 All Rights Reserved. Project RMS</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
