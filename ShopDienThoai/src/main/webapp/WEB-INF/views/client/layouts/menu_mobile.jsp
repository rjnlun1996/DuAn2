<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- mobilemenu -->
<div class="mobilemenu">
	<div class="mobilemenu__backdrop"></div>
	<div class="mobilemenu__body">
		<div class="mobilemenu__header">
			<div class="mobilemenu__title">Menu</div>
			<button type="button" class="mobilemenu__close">
				<svg width="20px" height="20px">
                     <use xlink:href="images/sprite.svg#cross-20"></use>
                  </svg>
			</button>
		</div>
		<div class="mobilemenu__content">
			<ul class="mobile-links mobile-links--level--0" data-collapse="" data-collapse-opened-class="mobile-links__item--open">
				
				<li class="mobile-links__item" data-collapse-item="">
					<div class="mobile-links__item-title">
						<a href="" class="mobile-links__item-link">Categories</a>
						<button class="mobile-links__item-toggle" type="button" data-collapse-trigger="">
							<svg class="mobile-links__item-arrow" width="12px" height="7px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-down-12x7"></use>
                           </svg>
						</button>
					</div>
					<div class="mobile-links__item-sub-links" data-collapse-content="">
						<ul class="mobile-links mobile-links--level--1">
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="" class="mobile-links__item-link">Power Tools</a>
									<button class="mobile-links__item-toggle" type="button" data-collapse-trigger="">
										<svg class="mobile-links__item-arrow" width="12px" height="7px">
                                       <use xlink:href="images/sprite.svg#arrow-rounded-down-12x7"></use>
                                    </svg>
									</button>
								</div>
								<div class="mobile-links__item-sub-links" data-collapse-content="">
									<ul class="mobile-links mobile-links--level--2">
										<li class="mobile-links__item" data-collapse-item="">
											<div class="mobile-links__item-title">
												<a href="" class="mobile-links__item-link">Engravers</a>
											</div>
										</li>
										
									</ul>
								</div>
							</li>
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="" class="mobile-links__item-link">Machine Tools</a>
									<button class="mobile-links__item-toggle" type="button" data-collapse-trigger="">
										<svg class="mobile-links__item-arrow" width="12px" height="7px">
                                       <use xlink:href="images/sprite.svg#arrow-rounded-down-12x7"></use>
                                    </svg>
									</button>
								</div>
								<div class="mobile-links__item-sub-links" data-collapse-content="">
									<ul class="mobile-links mobile-links--level--2">
										<li class="mobile-links__item" data-collapse-item="">
											<div class="mobile-links__item-title">
												<a href="" class="mobile-links__item-link">Thread Cutting</a>
											</div>
										</li>
										
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
				
				<li class="mobile-links__item" data-collapse-item="">
					<div class="mobile-links__item-title">
						<a href="account-login.html" class="mobile-links__item-link">Account</a>
						<button class="mobile-links__item-toggle" type="button" data-collapse-trigger="">
							<svg class="mobile-links__item-arrow" width="12px" height="7px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-down-12x7"></use>
                           </svg>
						</button>
					</div>
					<div class="mobile-links__item-sub-links" data-collapse-content="">
						<ul class="mobile-links mobile-links--level--1">
							
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="account-profile.html" class="mobile-links__item-link">Edit Profile</a>
								</div>
							</li>
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="account-orders.html" class="mobile-links__item-link">Order History</a>
								</div>
							</li>
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="account-order-details.html" class="mobile-links__item-link">Order Details</a>
								</div>
							</li>
							
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="account-password.html" class="mobile-links__item-link">Change Password</a>
								</div>
							</li>
						</ul>
					</div>
				</li>
			
				<li class="mobile-links__item" data-collapse-item="">
					<div class="mobile-links__item-title">
						<a href="" class="mobile-links__item-link">Pages</a>
						<button class="mobile-links__item-toggle" type="button" data-collapse-trigger="">
							<svg class="mobile-links__item-arrow" width="12px" height="7px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-down-12x7"></use>
                           </svg>
						</button>
					</div>
					<div class="mobile-links__item-sub-links" data-collapse-content="">
						<ul class="mobile-links mobile-links--level--1">
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="about-us.html" class="mobile-links__item-link">About Us</a>
								</div>
							</li>
							<li class="mobile-links__item" data-collapse-item="">
								<div class="mobile-links__item-title">
									<a href="contact-us.html" class="mobile-links__item-link">Contact Us</a>
								</div>
							</li>
							
						</ul>
					</div>
				</li>
				
				
			</ul>
		</div>
	</div>
</div>
<!-- mobilemenu / end -->