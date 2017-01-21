<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="profile clearfix">
	<div class="profile_pic">
		<img src="resources/images/img.jpg" alt="..." class="img-circle profile_img">
	</div>
	<div class="profile_info">
		<span>Welcome,</span>
		<h2>
			${user.firstname}
			<c:set var="middlename" value="${user.middlename}"/>
			<c:if test="${not empty middlename}">
				<c:out value="${middlename}"/>
			</c:if>
			${user.lastname}
			<br>
			<c:choose>
				<c:when test="${user.usertype == 1}"> [ Administrator ] </c:when>
				<c:otherwise> [Visitor] </c:otherwise>
			</c:choose>
		</h2>
	</div>
</div>