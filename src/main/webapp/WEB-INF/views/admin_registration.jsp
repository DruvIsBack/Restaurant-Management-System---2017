<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>RMS | Admin Registration</title>

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
    <!-- Custom Page JS -->
    <script src="resources/js/common.js"></script>
    <script src="resources/js/admin_registration.js"></script>

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
    <!--Registration Form-->
			<form:form modelAttribute="adminRegForm" class="reg" action="/rms/adminRegisterFormSubmit" data-toggle="validator" method="post" enctype="multipart/form-data">
			<h2>ADMIN REGISTRATION</h2>
			<p  align="left">***Enter correct information</p>
	<!--Username-->
				<div class="form-group has-feedback">
					<form:input path="username" type="text" pattern="^[a-z0-9_\-@]{6,20}$" maxlength="20" class="form-control" placeholder="Enter new username" data-error="Invalid username, (Length 6 to 12) & No Caps Letter" required="true"/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Password-->
				<div class="form-group has-feedback">
					<form:input path="password" type="password" pattern="^[A-z0-9_\-@]{6,20}$" maxlength="20" class="form-control" id="password" placeholder="Enter new password" data-error="Invalid password, (Length 6 to 12)" required="true" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Verify Password-->
				<div class="form-group has-feedback">
					<input type="password" data-match="#password" pattern="^[A-z0-9_\-@]{6,20}$" maxlength="20" class="form-control" placeholder="Enter password again" data-error="Invalid password or not matched, (Length 6 to 12)" required/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>			
	<!--Email-->
				<div class="form-group has-feedback">
					<form:input path="email" type="text" pattern="^[A-z0-9_\.]{3,}@[A-z0-9]{3,}\.[A-z]{3,}$" maxlength="50" class="form-control" placeholder="Enter your office email id" data-error="Invalid email, (Length 11 to 50)" required="true" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Phone Number-->
				<div class="form-group has-feedback">
					<form:input path="phone" type="text" pattern="^[0-9]{10}$" maxlength="50" class="form-control" placeholder="Enter phone number (optional)" data-error="Invalid phone number, (length 10 digits)"/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Resturant Name-->
				<div class="form-group has-feedback">
					<input name="resturantname" type="text" pattern="^[A-z\s0-9]+$" maxlength="50" class="form-control" placeholder="Enter resturant name" data-error="Invalid resturant name, (length must 50 digits)"/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Resturant ESTD-->
				<div class="form-group has-feedback">
					<input id="estd" name="estd" type="text" pattern="^[0-9]{4}$" maxlength="4" class="form-control" placeholder="Enter estd year of resturant" data-error="Invalid resturant estd year, (length must = 4 digits)"/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
			  <script>
	              $("#body").hide();
	              NProgress.start();
					$('#estd').datepicker({
						autoclose: true,
						format: "yyyy", // Notice the Extra space at the beginning
					    viewMode: "years", 
					    minViewMode: "years"
					});
              </script>
	<!--First Name-->
				<div class="form-group has-feedback">
					<form:input path="firstname" type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" placeholder="Enter first name" data-error="Pattern not matched, (Length 3 to 12)" required="true" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Middle Name-->
				<div class="form-group has-feedback">
					<form:input path="middlename" type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" placeholder="Enter middle name (Optional)" data-error="Pattern not matched, (Length 3 to 12)" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Last Name-->
				<div class="form-group has-feedback">
					<form:input path="lastname" type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control" placeholder="Enter last name" data-error="Pattern not matched, (Length 3 to 12)" required="true" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Mailing Address-->
				<div class="form-group has-feedback">
					<form:input path="address" type="text" class="form-control" pattern="^[A-z0-9\.\s,()\-\+]+$" placeholder="Enter your home address (optional)" data-error="Invalid field, (Length 0 to 120)" />
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Date of Birth-->
              <div class="form-group has-feedback">
				<form:input path="dob" type="text" pattern="^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" maxlength="10" class="form-control" name="dob" id="dob" placeholder="Enter your dob, like 'MM-DD-YYYY'" data-error="Pattern not matched" required="true"/>
				<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
              </div>
              <script>
	              $("#body").hide();
	              NProgress.start();
					$('#dob').datepicker({
						autoclose: true,
						startView: 1,
						clearBtn: true,
						todayHighlight: true,
					});
              </script>
    <!--Upload Photo-->
                	<img id="photopreview" width="100" height="100" src="resources/images/photos/default.png"/>
				<div id="photo-control" class="form-group has-feedback">
					<input type="file" accept="image/jpg, image/jpeg, image/png, image/bmp" class="form-control" name="photo_data" id="photo_data" placeholder="Select your photo" data-error="Invalid field" required/>
					<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					<span class="help-block with-errors"></span>
				</div>
	<!--Submit-->
            <div class="form-group">
            	<button type="reset" class="btn btn-primary">Clear</button>
				<button type="submit" class="btn btn-success">Register Now</button>
			</div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Resturant Management System</h1>
                  <p>©2016 All Rights Reserved. Project RMS</p>
                </div>
              </div>
            </form:form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
