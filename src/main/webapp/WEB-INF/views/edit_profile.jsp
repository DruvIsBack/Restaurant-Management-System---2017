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

    <title>RMS | Edit Profile</title>

	<!-- JQuery -->
	<script src="resources/libs/jquery.min.js"></script>
	<!-- Bootstrap -->
    <script src="resources/libs/input_validator.min.js"></script>
	<!-- Bootstrap DatePicker CSS-->
	<link href="resources/libs/bootstrap-datepicker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
	<!-- Bootstrap DatePicker JS-->
	<script type="text/javascript" src="resources/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <!-- Bootstrap -->
    <link href="resources/libs/bootstrap_lib/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/libs/nprogress/nprogress.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="resources/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="resources/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                      <li><a href="media_gallery.html">Media Gallery</a></li>
                      <li><a href="typography.html">Typography</a></li>
                      <li><a href="icons.html">Icons</a></li>
                      <li><a href="glyphicons.html">Glyphicons</a></li>
                      <li><a href="widgets.html">Widgets</a></li>
                      <li><a href="invoice.html">Invoice</a></li>
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                      <li><a href="fixed_footer.html">Fixed Footer</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="resources/images/img.jpg" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Edit Profile</h3>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Change Password<small>Change your credential every days or weeks to get safe from hacker</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
<!--CHANGE PASSWORD FORM-->		
					<form id="changePassword" role="form" data-toggle="validator" class="form-horizontal form-label-left">
	<!--Current Password-->
						<div class="item form-group has-feedback">
							<label for="currentPassword" class="control-label col-md-3 col-sm-3 col-xs-12">Current Password*</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password" pattern="^[A-z0-9_]{6,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="currentPassword" placeholder="Enter your current password" data-error="Invalid field, (Length 6 to 12)" required>
								<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
							</div>
							<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
						</div>
	<!--New Password-->
						<div class="item form-group has-feedback">
							<label for="newPassword1" class="control-label col-md-3 col-sm-3 col-xs-12">New Password*</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password" pattern="^[A-z0-9_]{6,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="newPassword1" placeholder="Enter your new password" data-error="Invalid field, (Length 6 to 12)" required>
								<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
							</div>
							<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
						</div>
	<!--Verify New Password-->
						  <div class="item form-group has-feedback">
							<label for="newPassword2" class="control-label col-md-3 col-sm-3 col-xs-12">Verify New Password*</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password" data-match="#newPassword1" pattern="^[A-z0-9_]{6,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="newPassword2" placeholder="Enter your new password again" data-error="Invalid field or not matched" required>
								<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
							</div>
							<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
						</div>
	<!--Submit Form-->
						  <div class="form-group">
							<div class="col-md-6 col-md-offset-3">
							  <button type="submit" class="btn btn-primary">Cancel</button>
							  <button id="send" type="submit" class="btn btn-success">Submit</button>
							</div>
						  </div>
					</form>
				</div>
				<div class="x_title">
                    <h2>Edit Profile<small>Always update your profile, other users want to see your profile</small></h2>
                    <div class="clearfix"></div>
                  </div>
				<div class="x_content">
<!--EDIT PROFILE FORM-->
                    <form id="editProfile" role="form" data-toggle="validator" class="form-horizontal form-label-left">
	<!--First Name-->
				<div class="form-group has-feedback">
					<label for="firstname" class="control-label col-md-3 col-sm-3 col-xs-12">First Name*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="firstname" placeholder="Enter your first name" data-error="Invalid field (Length 2 to 12)" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
	<!--Middle Name-->
				<div class="form-group has-feedback">
					<label for="middlename" class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name (Optional)</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="middlename" placeholder="Enter your middle name" data-error="Invalid field (Length 2 to 12)">
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
	<!--Last Name-->
				<div class="form-group has-feedback">
					<label for="lastname" class="control-label col-md-3 col-sm-3 col-xs-12">Last Name*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[A-Z][a-z]{2,12}$" maxlength="12" class="form-control col-md-7 col-xs-12" id="middlename" placeholder="Enter your middle name" data-error="Invalid field (Length 2 to 12)" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>				  
	<!--EMAIL-->
				<div class="form-group has-feedback">
					<label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">Email*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[A-z0-9_\.]{3,}@[A-z0-9]{3,}\.[A-z]{3,}$" maxlength="50" class="form-control col-md-7 col-xs-12" id="email" placeholder="Enter your email address" data-error="Invalid email, (Length 11 to 50)" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
	<!--PHONE NUMBER-->
                      <div class="form-group has-feedback">
					<label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">Phone Number*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[0-9]{10}$" maxlength="10" class="form-control col-md-7 col-xs-12" id="email" placeholder="Enter your phone number" data-error="Invalid phone number, (Length 10)" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
	<!--Date Of Birth-->
                      <div class="form-group has-feedback">
					<label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">DOB*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" maxlength="10" class="form-control col-md-7 col-xs-12" id="dob" placeholder="Enter your dob, like 'MM-DD-YYYY'" data-error="Pattern not matched" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
			  <script type="text/javascript">
				$('#dob').datepicker({
					startView: 1,
					clearBtn: true,
					todayHighlight: true
				});
			  </script>
	<!--Change photo-->				  
                      <div class="form-group has-feedback">
					<label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">Photo*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="file" class="form-control col-md-7 col-xs-12" id="photo" placeholder="Upload your photo" data-error="Invalid photo" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
    <!--Mailing Address-->      
                     <div class="form-group has-feedback">
					<label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">Mailing Address*</label>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<input type="text" pattern="^[A-z0-9\.\s\n]+$" class="form-control col-md-7 col-xs-12" id="address" placeholder="Enter your mailing address" data-error="Invalid address, pattern not matched" required>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
					</div>
					<span class="help-block with-errors col-md-3 col-sm-3 col-xs-12"></span>
				</div>
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            RMS - Resturant Management System
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="resources/libs/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/libs/bootstrap_lib/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/libs/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/libs/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="resources/libs/input_validator.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="resources/build/js/custom.min.js"></script>
  </body>
</html>