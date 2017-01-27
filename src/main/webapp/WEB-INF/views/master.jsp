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

	<!-- JQuery -->
	<script src="resources/libs/jquery.min.js"></script>
	<!-- Bootstrap JS -->
    <script src="resources/libs/bootstrap_lib/js/bootstrap.min.js"></script>
	<!-- Bootstrap Input Validator -->
    <script src="resources/libs/input_validator.min.js"></script>
	<!-- Bootstrap DatePicker CSS-->
	<link href="resources/libs/bootstrap-datepicker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
	<!-- Bootstrap DatePicker JS-->
	<script type="text/javascript" src="resources/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <!-- Bootstrap CSS -->
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
              <a href="index.html" class="site_title">
              	<i class="glyphicon glyphicon-home"></i> <span>R.M.S. - Demo</span>
              </a>
            </div>
            <div class="clearfix"></div>
            	<!-- menu profile quick info --><jsp:include page="template/menu_profile.jsp"/>
            <br />
            	<!-- sidebar menu --><jsp:include page="template/sidebar_menu.jsp"/>
            	<!-- menu footer buttons --><jsp:include page="template/menu_footer_buttons.jsp"/>
          </div>
        </div>
            <!-- top navigation --><jsp:include page="template/top_navigation.jsp"/>
            <!-- page content --><jsp:include page="template/page_content.jsp"/>
            
            <!-- footer content --><jsp:include page="template/footer_content.jsp"/>
      </div>
    </div>
    <!-- jQuery -->
    <script src="resources/libs/jquery.min.js"></script>
    <!-- FastClick -->
    <script src="resources/libs/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/libs/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="resources/libs/input_validator.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="resources/build/js/custom.js"></script>
  </body>
</html>