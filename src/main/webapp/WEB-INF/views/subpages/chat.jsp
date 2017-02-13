<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Page Style -->
		<style type="text/css">
			#page_body .container .messages {
				padding-top: 5px;
				padding-right: 5px;
				padding-left: 15px;
				padding-bottom: 5px;
				background-color: #F7F7F7;
				font-family: Consolas, "Andale Mono", "Lucida Console", "Lucida Sans Typewriter", Monaco, "Courier New", monospace;
			}
			.container .messages .buddy {
				background-color: #FFCDCD;
				color: #000000;
				padding-left: 15px;
			}
			.container .messages .me {
				background-color: #C4FFD9;
				color: #000000;
				text-align: right;
				padding-right: 15px;
			}
			#page_body .container .chatbar {
				padding-top: 10px;
				padding-bottom: 10px;
				background-color: #EDFFAD;
			
			}
			.container .chatbar .chatsender {
				-webkit-box-shadow: inset -2px -2px 10px #000000;
				box-shadow: inset -2px -2px 10px #000000;
				font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", "DejaVu Sans", Verdana, sans-serif;
				color: #000000;
				padding-left: 5px;
				padding-top: 5px;
				padding-bottom: 5px;
				padding-right: 5px;
				font-weight: normal;
				font-size: medium;
				cursor: pointer;
				border-radius: 8px;
				text-align: center;
				margin-bottom: 10px;
				background-color: #C3FB6F;
			}
			.container .chatbar .chatsender:hover  {
				background-image: -webkit-linear-gradient(270deg,rgba(249,205,206,1.00) 0%,rgba(253,232,232,1.00) 20.73%,rgba(255,246,246,1.00) 51.30%,rgba(255,226,226,1.00) 80.83%,rgba(255,193,193,1.00) 100%);
				background-image: -moz-linear-gradient(270deg,rgba(249,205,206,1.00) 0%,rgba(253,232,232,1.00) 20.73%,rgba(255,246,246,1.00) 51.30%,rgba(255,226,226,1.00) 80.83%,rgba(255,193,193,1.00) 100%);
				background-image: -o-linear-gradient(270deg,rgba(249,205,206,1.00) 0%,rgba(253,232,232,1.00) 20.73%,rgba(255,246,246,1.00) 51.30%,rgba(255,226,226,1.00) 80.83%,rgba(255,193,193,1.00) 100%);
				background-image: linear-gradient(180deg,rgba(249,205,206,1.00) 0%,rgba(253,232,232,1.00) 20.73%,rgba(255,246,246,1.00) 51.30%,rgba(255,226,226,1.00) 80.83%,rgba(255,193,193,1.00) 100%);
			
			}
			.container .chatbar .chatsender.opened {
				-webkit-box-shadow: 1px 1px 5px #000000;
				box-shadow: 1px 1px 5px #000000;
				background-color: #DBFC8F;
			}
		</style>
<!-- /Page Style -->

<!-- Page Script -->		
		<script type="text/javascript">
			console.log("going to ready");
			$(document).ready(
				function(){
					console.log("WTF ????");
				}
			);
			console.log("going to ready 2");
		</script>
<!-- /Page Script -->		

<!-- Page XML -->
		<div class="container">
	    	<div class="chatbar col-md-3">
		      	<div>All Senders</div>
		      	<div class="chatsender">Anirban Sanyal (last 10/07/17 09:48:47)</div>
		        <div class="chatsender opened">Pritam Pal</div>
	       	</div>
			<div class="messages col-md-9">
					<div>Pritam Pal</div>
					<div class="buddy">Hello there</div>
			 	<div class="buddy">Wanna see me ?</div>
			 	<div class="me">Yeah</div>
			  <div class="form-group" style="padding-left: 50px; padding-right: 50px; padding-top: 5px;">
			   <input type="text" class="form-control" placeholder="Text to reply"/>
			   <input type="submit" class="form-control btn btn-dark" value="send it"/>
			  </div>
			</div>
	     </div>
<!-- /Page XML -->