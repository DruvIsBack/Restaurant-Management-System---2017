<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="" data-toggle="tooltip" title="My profile">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="filemanager/getfile/userphoto/${user.photo}.jpg" alt="">
						${user.firstname}
						<c:set var="middlename" value="${user.middlename}"/>
						<c:if test="${not empty middlename}">
							<c:out value="${middlename}"/>
						</c:if>
						${user.lastname}
						[${usertype}]
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
                    <li><a href="/rms/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
<!-- PERSONAL MESSAGES NOTIFICATION -->
                <jsp:include page="notification/personal.jsp"/>
<!-- /PERSONAL MESSAGES NOTIFICATION -->                
<!-- OFFICIAL MESSAGES NOTIFICATION -->
              	<jsp:include page="notification/official.jsp"/>
<!-- /OFFICIAL MESSAGES NOTIFICATION -->
<!-- SYSTEM MESSAGES NOTIFICATION -->
                <jsp:include page="notification/system.jsp"/>
<!-- /SYSTEM MESSAGES NOTIFICATION -->
              </ul>
            </nav>
          </div>
        </div>