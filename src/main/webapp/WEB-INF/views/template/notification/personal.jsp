<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<li role="presentation" class="dropdown" data-toggle="tooltip" title="Instant transposable chat">
   <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
     <i class="fa fa-comments-o"></i>
     <c:set var="total_msgs" value="${fn:length(msgs)}"/>
     <c:if test="${total_msgs != 0}">
     <span class="badge bg-red"><c:out value="${total_msgs}"/></span>
     </c:if>
   </a>
   <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu" style="background-color:grey;">
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