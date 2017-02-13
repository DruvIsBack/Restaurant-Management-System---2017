<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<li role="presentation" class="dropdown" data-toggle="tooltip" title="My chat">
   <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
     <i class="fa fa-comments-o"></i>
     <c:set var="total_msgs" value="${fn:length(msgs)}"/>
     <c:if test="${total_msgs != 0}">
     	<span class="badge bg-red">
     		<c:out value="${total_msgs}"/>
     	</span>
     </c:if>
   </a>
   <ul id="menu1" class="pchat dropdown-menu list-unstyled msg_list" role="menu" style="background-color:grey;">
   	 <%-- <c:forEach items="${msgs}" var="msg">
   	 	<li>
	       <a class="notify_message" id="${msg.sender.id}">
	         <span class="image"><img src="filemanager/getfile/userphoto/${msg.sender.photo}.jpg" alt="Profile Image" /></span>
	         <span>
	           <span>${msg.sender.firstname} ${msg.sender.middlename} ${msg.sender.lastname}</span>
	           <span class="time">${msg.time}</span>
	         </span>
	         <span class="message">
	           <c:out value="${msg.message}"/>...
	         </span>
	       </a>
	     </li>
   	 </c:forEach> --%>
     <li>
       <div class="text-center">
         <a id="showall_pchat">
           <strong>See All Messages</strong>
           <i class="fa fa-angle-right"></i>
         </a>
       </div>
     </li>
   </ul>
</li>