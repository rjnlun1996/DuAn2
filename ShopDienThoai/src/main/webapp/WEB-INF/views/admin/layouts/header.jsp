<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.entities.Account"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%
Account user = (Account) session.getAttribute(SessionConstraint.USER);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String sb = String.valueOf(request.getAttribute(MENU));
%>

<style type="text/css">
li {
	border-right: 0px solid !important
}
</style>

<div class="page-main-header">
	<div class="main-header-right row">
		<div class="main-header-left d-lg-none">
			<div class="logo-wrapper">
				<a href="/">
					<img src="/images/logos/logo2.png" alt="">
				</a>
			</div>
		</div>
		<div class="mobile-sidebar d-block">
			<div class="media-body text-right switch-sm">
				<label class="switch">
					<input id="sidebar-toggle" type="checkbox" checked="checked">
					<span class="switch-state"></span>
				</label>
			</div>
		</div>
		<div class="vertical-mobile-sidebar">
			<i class="fa fa-bars sidebar-bar"></i>
		</div>
		<div class="nav-right col left-menu-header">
			<ul class="nav-menus-left">
				<li>
					<a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()">
						<i data-feather="maximize"></i>
					</a>
				</li>

			</ul>
			<div class="d-xl-none mobile-toggle-left pull-right">
				<i data-feather="more-horizontal"></i>
			</div>
		</div>
		<div class="nav-right col pull-right right-menu">
			<ul class="nav-menus">
				<li>
					<form class="form-inline search-form">
						<span class="mobile-search search-icon">
							<i class="fa fa-search"></i>
						</span>
					</form>
				</li>
				<li>
					<div class="dropdown ">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							<span class="media user-header">
								<img class="mr-2 rounded-circle img-35" width="35" src="/images/avatars/<%=user.getPhoto()%>" alt="">
								<span class="media-body">
									<span class="f-12 f-w-600"><%=user.getName()%></span>
									<span class="d-block">
										<c:if test="${user.level == 0}">
											<span>Admin</span>
										</c:if>
										<c:if test="${user.level == 1}">
											<span>Manager</span>
										</c:if>
									</span>
								</span>
							</span>
						</button>
						<div class="dropdown-menu p-0">
							<ul class="profile-dropdown">
								<li class="gradient-primary-1">
									<h6 class="mb-0"><%=user.getUsername()%></h6>
									<span>
										<c:if test="${user.level == 0}">
											<span>Admin</span>
										</c:if>
										<c:if test="${user.level == 1}">
											<span>Manager</span>
										</c:if>
									</span>
								</li>
								<!-- <li>
									<a href="/ho-admin/profile">
										<i data-feather="user"> </i>
										Profile
									</a>
								</li> -->
								<li class="<%=renderSubmenuClass(sb, URL_ADMIN_PROFILE)%>">
									<a class="sidebar-header" href="<%=URL_ADMIN_PROFILE%>">
										<i data-feather="user"></i>
										<span>Profile</span>
									</a>
								</li>
								<li class="<%=renderSubmenuClass(sb, URL_ADMIN_CHANGE_PASSWORD)%>">
									<a class="sidebar-header" href="<%=URL_ADMIN_CHANGE_PASSWORD%>">
										<i data-feather="user"></i>
										<span>Change Password</span>
									</a>
								</li>


								<li>
									<a href="/ho-admin/logout">
										<i data-feather="file-text"> </i>
										Logout
									</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown"></button>
					</div>
				</li>
				<li>
					<a class="right_side_toggle" href="#"> </a>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown"></button>

					</div>
				</li>
			</ul>
		</div>
		<form class="form-inline search-full">
			<div class="form-group form-control-plaintext">
				<input type="search" placeholder="Search..">
				<i class="icon-close close-search"></i>
			</div>
		</form>
		<div class="d-lg-none mobile-toggle pull-right">
			<i data-feather="more-horizontal"></i>
		</div>
	</div>
</div>