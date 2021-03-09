<%@page import="com.hitech.constraints.SessionConstraint"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.entities.Account"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%
Account user = (Account) session.getAttribute(SessionConstraint.USER);
%>

<div class="page-main-header">
	<div class="main-header-right row">
		<div class="main-header-left d-lg-none">
			<div class="logo-wrapper">
				<a href="index.html">
					<img src="/assets/images/creative-logo1.png" alt="">
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
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							Category
							<span class="mx-2 badge badge-pill badge-primary">2</span>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Admin</a>
							<a class="dropdown-item" href="#">Shopify</a>
							<a class="dropdown-item" href="#">Ecommerce</a>
							<a class="dropdown-item" href="#">Prestashop</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							Status
							<span class="mx-2 badge badge-pill badge-primary">7</span>
						</button>
						<div class="dropdown-menu p-0">
							<ul class="status-dropdown">
								<li>
									<h6 class="mb-0">Ongoing Projects</h6>
								</li>
								<li>
									<p class="mb-0">HTML5 Validation Report</p>
									<div class="progress sm-progress-bar">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</li>
								<li>
									<p class="mb-0">Bootstrap Admin Templates</p>
									<div class="progress sm-progress-bar">
										<div class="progress-bar bg-secondary" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</li>
								<li>
									<p class="mb-0">Goggle Crome Extension</p>
									<div class="progress sm-progress-bar">
										<div class="progress-bar bg-success" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</li>
								<li>
									<p class="mb-0">Clients Projects</p>
									<div class="progress sm-progress-bar">
										<div class="progress-bar bg-info" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							Order
							<span class="mx-2 badge badge-pill badge-primary">1</span>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Paypal</a>
							<a class="dropdown-item" href="#">Credit Card</a>
							<a class="dropdown-item" href="#">Visa</a>
							<a class="dropdown-item" href="#">Paytm</a>
						</div>
					</div>
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
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							<span class="media user-header">
								<img class="mr-2 rounded-circle img-35" src="/images/avatars/${acc.photo}" alt="">
								<span class="media-body">
									<span class="f-12 f-w-600"><%= user.getName() %></span>
									<span class="d-block">Admin</span>
								</span>
							</span>
						</button>
						<div class="dropdown-menu p-0">
							<ul class="profile-dropdown">
								<li class="gradient-primary-1">
									<h6 class="mb-0">Elana Saint</h6>
									<span>Web Designer</span>
								</li>
								<li>
									<i data-feather="user"> </i>
									Profile
								</li>
								<li>
									<i data-feather="message-square"> </i>
									Inbox
								</li>
								<li>
									<i data-feather="file-text"> </i>
									Taskboard
								</li>
								<li>
									<i data-feather="settings"> </i>
									Settings
								</li>
								<li>
									<a href="/ho-admin/logout"><i data-feather="file-text"> </i>
									Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							<i data-feather="bell"></i>
							<span class="notification badge badge-pill badge-danger f-10">2</span>
						</button>
						<div class="dropdown-menu p-0">
							<ul class="notification-dropdown">
								<li class="gradient-primary-1">
									<h6>Notifications</h6>
									<span>You have 6 unread messages</span>
								</li>
								<li>
									<div class="media">
										<div class="notification-icons bg-success mr-3">
											<i class="mt-0" data-feather="thumbs-up"></i>
										</div>
										<div class="media-body">
											<h6>Someone Likes Your Posts</h6>
											<p class="mb-0">2 Hours Ago</p>
										</div>
									</div>
								</li>
								<li class="pt-0">
									<div class="media">
										<div class="notification-icons bg-info mr-3">
											<i class="mt-0" data-feather="message-circle"></i>
										</div>
										<div class="media-body">
											<h6>3 New Comments</h6>
											<p class="mb-0">1 Hours Ago</p>
										</div>
									</div>
								</li>
								<li class="bg-light txt-dark">
									<a href="#">All </a>
									notification
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<a class="right_side_toggle" href="#">
						<i data-feather="message-square"></i>
					</a>
				</li>
				<li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
							<i data-feather="droplet"></i>
						</button>
						<div class="dropdown-menu p-0">
							<ul class="droplet-dropdown">
								<li class="gradient-primary-1 text-center">
									<h6>Grid Dashboard</h6>
									<span>Easy Grid inside dropdown</span>
								</li>
								<li>
									<div class="row">
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="file-text"></i>
											<span class="d-block">Content</span>
										</div>
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="activity"></i>
											<span class="d-block">Activity</span>
										</div>
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="users"></i>
											<span class="d-block">Contacts</span>
										</div>
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="clipboard"></i>
											<span class="d-block">Reports</span>
										</div>
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="anchor"></i>
											<span class="d-block">Automation</span>
										</div>
										<div class="col-sm-4 col-6 droplet-main">
											<i data-feather="settings"></i>
											<span class="d-block">Settings</span>
										</div>
									</div>
								</li>
								<li class="text-center">
									<button class="btn btn-primary btn-air-primary">Follows Up</button>
								</li>
							</ul>
						</div>
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