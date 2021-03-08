<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%
String sb = String.valueOf(request.getAttribute(MENU));
%>

<!-- Page Sidebar Start-->

<div class="page-sidebar iconcolor-sidebar">
	<div class="main-header-left d-none d-lg-block">
		<div class="logo-wrapper">
			<a href="index.html">
				<img src="/assets/images/creative-logo.png" alt="">
			</a>
		</div>
	</div>
	<div class="sidebar custom-scrollbar">
		<ul class="sidebar-menu">

			<li class="<%=renderSubmenuClass(sb, URL_ADMIN_HOME)%>">
				<a class="sidebar-header" href="<%=URL_ADMIN_HOME%>">
					<i data-feather="home"></i>
					<span>Dashboard</span>
				</a>
			</li>
			<c:if test="${user.level == 0}">
				<li class="<%=renderMenuClass(sb, URL_ADMIN_ADMIN)%>">
					<a class="sidebar-header" href="#">
						<i data-feather="airplay"></i>
						<span> Manager </span>
						<i class="fa fa-angle-right pull-right"></i>
					</a>
					<ul class="sidebar-submenu">
						<li class="<%=renderSubmenuClass(sb, URL_ADMIN_ADMIN)%>">
							<a href="<%=URL_ADMIN_ADMIN%>">
								<i class="fa fa-circle"></i>
								Views Manager
							</a>
						</li>
						<li class="<%=renderSubmenuClass(sb, URL_ADMIN_ADMIN_INSERT)%>">
							<a href="<%=URL_ADMIN_ADMIN_INSERT%>">
								<i class="fa fa-circle"></i>
								Insert Admin
							</a>
						</li>
					</ul>
				</li>
			</c:if>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_CUSTOMER)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="sidebar"></i>
					<span>Customers</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_CUSTOMER)%>">
						<a href="<%=URL_ADMIN_CUSTOMER%>">
							<i class="fa fa-circle"></i>
							Views Customer
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_CUSTOMER_INSERT)%>">
						<a href="<%=URL_ADMIN_CUSTOMER_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Customer
						</a>
					</li>
				</ul>
			</li>

			<%-- <li class="<%= sb.startsWith(URL_ADMIN_CATEGORY) ? "active" : "" %>">
				<a class="sidebar-header" href="#">
					<i data-feather="layout"></i>
					<span>Categories Manager</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%= sb.equals(URL_ADMIN_CATEGORY) ? "active" : "" %>">
						<a href="<%= URL_ADMIN_CATEGORY %>">
							<i class="fa fa-circle"></i>
							Table Category
						</a>
					</li>
					<li class="<%= sb.equals(URL_ADMIN_CATEGORY_INSERT) ? "active" : "" %>">
						<a href="<%= URL_ADMIN_CATEGORY_INSERT %>">
							<i class="fa fa-circle"></i>
							Insert Category
						</a>
					</li>
				</ul>
			</li> --%>
			<%-- <li class="<%= renderMenuClass(sb, URL_ADMIN_CATEGORY) %>">
				<a class="sidebar-header" href="#">
					<i data-feather="layout"></i>
					<span>Categories Manager</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%= renderSubmenuClass(sb, URL_ADMIN_CATEGORY) %>">
						<a href="<%= URL_ADMIN_CATEGORY %>">
							<i class="fa fa-circle"></i>
							Table Category
						</a>
					</li>
					<li class="<%= renderSubmenuClass(sb, URL_ADMIN_CUSTOMER_INSERT) %>">
						<a href="<%= URL_ADMIN_CUSTOMER_INSERT %>">
							<i class="fa fa-circle"></i>
							Insert Category
						</a>
					</li>
				</ul>
			</li>
			
			<li class="<%= sidebar.startsWith(URL_ADMIN_CATEGORY) ? "active" : "" %>">
				<a class="sidebar-header" href="#">
					<i data-feather="layout"></i>
					<span>Categories Manager</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%= sidebar.equals(URL_ADMIN_CATEGORY) ? "active" : "" %>">
						<a href="<%= URL_ADMIN_CATEGORY %>">
							<i class="fa fa-circle"></i>
							Table Category
						</a>
					</li>
					<li class="<%= sidebar.equals(URL_ADMIN_CUSTOMER_INSERT) ? "active" : "" %>">
						<a href="<%= URL_ADMIN_CUSTOMER_INSERT %>">
							<i class="fa fa-circle"></i>
							Insert Category
						</a>
					</li>
				</ul>
			</li> --%>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_CATEGORY)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="layout"></i>
					<span>Categories</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_CATEGORY)%>">
						<a href="<%=URL_ADMIN_CATEGORY%>">
							<i class="fa fa-circle"></i>
							Views Category
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_CATEGORY_INSERT)%>">
						<a href="<%=URL_ADMIN_CATEGORY_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Category
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_PRODUCER)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="align-justify"></i>
					<span>Producers</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_PRODUCER)%>">
						<a href="<%=URL_ADMIN_PRODUCER%>">
							<i class="fa fa-circle"></i>
							Views Producers
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_PRODUCER_INSERT)%>">
						<a href="<%=URL_ADMIN_PRODUCER_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Producers
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_PRODUCT)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Products</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_PRODUCT)%>">
						<a href="<%=URL_ADMIN_PRODUCT%>">
							<i class="fa fa-circle"></i>
							Views Products
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_PRODUCT_INSERT)%>">
						<a href="<%=URL_ADMIN_PRODUCT_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Products
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_IMAGE)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Images</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_IMAGE)%>">
						<a href="<%=URL_ADMIN_IMAGE%>">
							<i class="fa fa-circle"></i>
							View Images
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_IMAGE_INSERT)%>">
						<a href="<%=URL_ADMIN_IMAGE_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Images
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_STATUS)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Status</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_STATUS)%>">
						<a href="<%=URL_ADMIN_STATUS%>">
							<i class="fa fa-circle"></i>
							View Status
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_STATUS_INSERT)%>">
						<a href="<%=URL_ADMIN_STATUS_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Status
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_ORDER)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Order</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_ORDER)%>">
						<a href="<%=URL_ADMIN_ORDER%>">
							<i class="fa fa-circle"></i>
							Views Order
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_ORDER_INSERT)%>">
						<a href="<%=URL_ADMIN_ORDER_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Order
						</a>
					</li>
					<li>
						<a href="footer-dark.html">
							<i class="fa fa-circle"></i>
							History Order
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_STATUS_ORDER)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Status Order</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_STATUS_ORDER)%>">
						<a href="<%=URL_ADMIN_STATUS_ORDER%>">
							<i class="fa fa-circle"></i>
							View Status Order
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_STATUS_ORDER_INSERT)%>">
						<a href="<%=URL_ADMIN_STATUS_ORDER_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Status Order
						</a>
					</li>
				</ul>
			</li>

			<li class="<%=renderMenuClass(sb, URL_ADMIN_DISCOUNT)%>">
				<a class="sidebar-header" href="#">
					<i data-feather="cloud-lightning"></i>
					<span>Discount</span>
					<i class="fa fa-angle-right pull-right"></i>
				</a>
				<ul class="sidebar-submenu">
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_DISCOUNT)%>">
						<a href="<%=URL_ADMIN_DISCOUNT%>">
							<i class="fa fa-circle"></i>
							View Discount
						</a>
					</li>
					<li class="<%=renderSubmenuClass(sb, URL_ADMIN_DISCOUNT_INSERT)%>">
						<a href="<%=URL_ADMIN_DISCOUNT_INSERT%>">
							<i class="fa fa-circle"></i>
							Insert Discount
						</a>
					</li>
				</ul>
			</li>

			<c:if test="${user.level == 0}">
				<li class="<%=renderMenuClass(sb, URL_ADMIN_REPORT)%>">
					<a class="sidebar-header" href="<%=URL_ADMIN_REPORT%>">
						<i data-feather="bookmark"></i>
						<span>Report</span>
					</a>
				</li>
			</c:if>

			<li>
				<a class="sidebar-header" href="/ho-admin/report">
					<i data-feather="mail"></i>
					<span>Email</span>
				</a>
			</li>

			<li>
				<a class="sidebar-header" href="/ho-admin/report">
					<i data-feather="message-square"></i>
					<span>Chat</span>
				</a>
			</li>
		</ul>
	</div>
</div>

<!-- Page Sidebar Ends-->


<!-- Right sidebar Start-->

<div class="right-sidebar" id="right_side_bar">
	<div>
		<div class="container p-0">
			<div class="modal-header p-l-20 p-r-20">
				<div class="col-sm-8 p-0">
					<h6 class="modal-title font-weight-bold">Contacts Status</h6>
				</div>
				<div class="col-sm-4 text-right p-0">
					<i class="mr-2" data-feather="settings"></i>
				</div>
			</div>
		</div>
		<div class="friend-list-search mt-0">
			<input type="text" placeholder="search friend">
			<i class="fa fa-search"></i>
		</div>
		<div class="p-l-30 p-r-30">
			<div class="chat-box">
				<div class="people-list friend-list custom-scrollbar">
					<ul class="list">
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/2.jpg" alt="">
							<div class="status-circle online"></div>
							<div class="about">
								<div class="name">Vincent Porter</div>
								<div class="status">Online</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/3.jpg" alt="">
							<div class="status-circle away"></div>
							<div class="about">
								<div class="name">Ain Chavez</div>
								<div class="status">28 minutes ago</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/10.jpg" alt="">
							<div class="status-circle online"></div>
							<div class="about">
								<div class="name">Kori Thomas</div>
								<div class="status">Online</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/11.jpg" alt="">
							<div class="status-circle online"></div>
							<div class="about">
								<div class="name">Erica Hughes</div>
								<div class="status">Online</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/11.png" alt="">
							<div class="status-circle offline"></div>
							<div class="about">
								<div class="name">Ginger Johnston</div>
								<div class="status">2 minutes ago</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/6.jpg" alt="">
							<div class="status-circle away"></div>
							<div class="about">
								<div class="name">Prasanth Anand</div>
								<div class="status">2 hour ago</div>
							</div>
						</li>
						<li class="clearfix">
							<img class="rounded-small user-image" src="/assets/images/user/7.jpg" alt="">
							<div class="status-circle online"></div>
							<div class="about">
								<div class="name">Hileri Jecno</div>
								<div class="status">Online</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Right sidebar Ends-->