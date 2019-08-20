<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>Musik | Web Application</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="static/css/jplayer.flat.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="static/css/animate.css" type="text/css" />
<link rel="stylesheet" href="static/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/simple-line-icons.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/font.css" type="text/css" />
<link rel="stylesheet" href="static/css/app.css" type="text/css" />
<!--[if lt IE 9]>
    <script src="static/js/html5shiv.js"></script>
    <script src="static/js/respond.min.js"></script>
    <script src="static/js/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
	<!-- <div class="adcenter"><script src="static/js/ggad2_728x90.js"></script></div> -->
	<section class="vbox">
		<header
			class="bg-white-only header header-md navbar navbar-fixed-top-xs">
			<div class="navbar-header aside bg-info nav-xs">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>
				</a> <a href="${pageContext.request.contextPath}/index.jsp"
					class="navbar-brand text-lt"> <i class="icon-earphones"></i> <img
					src="static/picture/logo.png" alt="." class="hide"> <span
					class="hidden-nav-xs m-l-sm">Musik</span>
				</a> <a class="btn btn-link visible-xs" data-toggle="dropdown"
					data-target=".user"> <i class="icon-settings"></i>
				</a>
			</div>
			<ul class="nav navbar-nav hidden-xs">
				<li><a href="#nav,.navbar-header"
					data-toggle="class:nav-xs,nav-xs" class="text-muted"> <i
						class="fa fa-indent text"></i> <i class="fa fa-dedent text-active"></i>
				</a></li>
			</ul>
			<form
				class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs"
				role="search">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-btn">
							<button type="submit"
								class="btn btn-sm bg-white btn-icon rounded">
								<i class="fa fa-search"></i>
							</button>
						</span> <input type="text"
							class="form-control input-sm no-border rounded"
							placeholder="Search songs, albums...">
					</div>
				</div>
			</form>
			<div class="navbar-right ">
				<ul class="nav navbar-nav m-n hidden-xs nav-user user">
					<li class="hidden-xs"><a href="#" class="dropdown-toggle lt"
						data-toggle="dropdown"> <i class="icon-bell"></i> <span
							class="badge badge-sm up bg-danger count">2</span>
					</a>
						<section class="dropdown-menu aside-xl animated fadeInUp">
							<section class="panel bg-white">
								<div class="panel-heading b-light bg-light">
									<strong>You have <span class="count">2</span>
										notifications
									</strong>
								</div>
								<div class="list-group list-group-alt">
									<a href="#" class="media list-group-item"> <span
										class="pull-left thumb-sm"> <img
											src="static/picture/a0.png" alt="..." class="img-circle">
									</span> <span class="media-body block m-b-none"> Use awesome
											animate.css<br> <small class="text-muted">10
												minutes ago</small>
									</span>
									</a> <a href="#" class="media list-group-item"> <span
										class="media-body block m-b-none"> 1.0 initial released<br>
											<small class="text-muted">1 hour ago</small>
									</span>
									</a>
								</div>
								<div class="panel-footer text-sm">
									<a href="#" class="pull-right"><i class="fa fa-cog"></i></a> <a
										href="#notes" data-toggle="class:show animated fadeInRight">See
										all the notifications</a>
								</div>
							</section>
						</section></li>
					<c:if test="${empty user}">
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/register.jsp"> <span>登录</span>
						</a></li>
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/register.jsp"> <span>注册</span>
						</a></li>
					</c:if>
					<c:if test="${!empty user}">
						<li class="hidden-xs"><a href="#"> <span>${user.username}</span>
						</a></li>
						<li class="hidden-xs"><a href="#"> <span>欢迎您</span>
						</a></li>
					</c:if>
					<%--<li class="dropdown">
            <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
              <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                <img src="static/picture/a0.png" alt="...">
              </span>
              John.Smith <b class="caret"></b>
            </a>
            <ul class="dropdown-menu animated fadeInRight">
              <li>
                <span class="arrow top"></span>
                <a href="#">Settings</a>
              </li>
              <li>
                <a href="profile.html">Profile</a>
              </li>
              <li>
                <a href="#">
                  <span class="badge bg-danger pull-right">3</span>
                  Notifications
                </a>
              </li>
              <li>
                <a href="docs.html">Help</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="register.html"  >Logout</a>
              </li>
            </ul>
          </li>--%>
				</ul>
			</div>
		</header>
		<div class="copyrights">
			Collect from <a href="http://www.cssmoban.com/">免费模板</a>
		</div>
		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<aside class="bg-black dk nav-xs aside hidden-print" id="nav">
					<section class="vbox">
						<section class="w-f-md scrollable">
							<div class="slim-scroll" data-height="auto"
								data-disable-fade-out="true" data-distance="0" data-size="10px"
								data-railOpacity="0.2">



								<!-- nav -->
								<nav class="nav-primary hidden-xs">
									<ul class="nav bg clearfix">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											Discover</li>
										<li><a
											href="${pageContext.request.contextPath}/index.jsp"> <i
												class="icon-disc icon text-success"></i> <span
												class="font-bold">What's new</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/genres.jsp"> <i
												class="icon-music-tone-alt icon text-info"></i> <span
												class="font-bold">Genres</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/events.jsp"> <i
												class="icon-drawer icon text-primary-lter"></i> <b
												class="badge bg-primary pull-right"></b> <span
												class="font-bold">Events</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/listen.jsp"> <i
												class="icon-list icon  text-info-dker"></i> <span
												class="font-bold">Listen</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/video.jsp"
											data-target="#content" data-el="#bjax-el" data-replace="true">
												<i class="icon-social-youtube icon  text-primary"></i> <span
												class="font-bold">Video</span>
										</a></li>
										<li class="m-b hidden-nav-xs"></li>
									</ul>
									<ul class="nav" data-ride="collapse">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											Interface</li>
										<!-- <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-screen-desktop icon">
                        </i>
                        <span>Layouts</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="layout-color.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Color option</span>
                          </a>
                        </li>
                        <li >
                          <a href="layout-boxed.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Boxed layout</span>
                          </a>
                        </li>
                        <li >
                          <a href="layout-fluid.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Fluid layout</span>
                          </a>
                        </li>
                      </ul>
                    </li> -->
										<!-- <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-chemistry icon">
                        </i>
                        <span>UI Kit</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="buttons.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Buttons</span>
                          </a>
                        </li>
                        <li >
                          <a href="icons.html" class="auto">                            
                            <b class="badge bg-info pull-right">369</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Icons</span>
                          </a>
                        </li><li >
                          <a href="http://www.cssmoban.com" class="auto">                            
                            <b class="badge bg-info pull-right">369</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>More</span>
                          </a>
                        </li>
                        <li >
                          <a href="grid.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Grid</span>
                          </a>
                        </li>
                        <li >
                          <a href="widgets.html" class="auto">                            
                            <b class="badge bg-dark pull-right">8</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Widgets</span>
                          </a>
                        </li>
                        <li >
                          <a href="components.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Components</span>
                          </a>
                        </li>
                        <li >
                          <a href="list.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>List group</span>
                          </a>
                        </li>
                        <li >
                          <a href="#table" class="auto">                            
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>                            
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Table</span>
                          </a>
                          <ul class="nav dker">
                            <li >
                              <a href="table-static.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Table static</span>
                              </a>
                            </li>
                            <li >
                              <a href="table-datatable.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Datatable</span>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li >
                          <a href="#form" class="auto">                            
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>                            
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Form</span>
                          </a>
                          <ul class="nav dker">
                            <li >
                              <a href="form-elements.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form elements</span>
                              </a>
                            </li>
                            <li >
                              <a href="form-validation.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form validation</span>
                              </a>
                            </li>
                            <li >
                              <a href="form-wizard.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form wizard</span>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li >
                          <a href="chart.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Chart</span>
                          </a>
                        </li>
                        <li >
                          <a href="portlet.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Portlet</span>
                          </a>
                        </li>
                        <li >
                          <a href="timeline.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Timeline</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-grid icon">
                        </i>
                        <span>Pages</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="profile.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Profile</span>
                          </a>
                        </li>
                        <li >
                          <a href="blog.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Blog</span>
                          </a>
                        </li>
                        <li >
                          <a href="invoice.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Invoice</span>
                          </a>
                        </li>
                        <li >
                          <a href="gmap.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Google Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="jvectormap.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Vector Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="signin.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signin</span>
                          </a>
                        </li>
                        <li >
                          <a href="signup.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signup</span>
                          </a>
                        </li>
                        <li >
                          <a href="404.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>404</span>
                          </a>
                        </li>
                      </ul>
                    </li> -->
									</ul>
									<ul class="nav text-sm">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											<span class="pull-right"><a href="#"><i
													class="icon-plus i-lg"></i></a></span> Playlist
										</li>
										<!-- <li>
                      <a href="#">
                        <i class="icon-music-tone icon"></i>
                        <span>Hip-Pop</span>
                      </a>
                    </li> -->
										<!-- <li>
                      <a href="#">
                        <i class="icon-playlist icon text-success-lter"></i>
                        <b class="badge bg-success dker pull-right">9</b>
                        <span>Jazz</span>
                      </a>
                    </li> -->
									</ul>
								</nav>
								<!-- / nav -->
							</div>
						</section>

						<footer class="footer hidden-xs no-padder text-center-nav-xs">
							<div class="bg hidden-xs ">
								<div class="dropdown dropup wrapper-sm clearfix">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										<span class="thumb-sm avatar pull-left m-l-xs"> <img
											src="static/picture/a3.png" class="dker" alt="..."> <i
											class="on b-black"></i>
									</span> <span class="hidden-nav-xs clear"> <span
											class="block m-l"> <strong class="font-bold text-lt">John.Smith</strong>
												<b class="caret"></b>
										</span> <span class="text-muted text-xs block m-l">Art
												Director</span>
									</span>
									</a>
									<ul class="dropdown-menu animated fadeInRight aside text-left">
										<li><span class="arrow bottom hidden-nav-xs"></span> <a
											href="#">Settings</a></li>
										<li><a href="profile.html">Profile</a></li>
										<li><a href="#"> <span
												class="badge bg-danger pull-right">3</span> Notifications
										</a></li>
										<li><a href="docs.html">Help</a></li>
										<li class="divider"></li>
										<li><a href="register.html">Logout</a> <!-- <a href="register.html" data-toggle="ajaxModal" >Logout</a> -->
										</li>
									</ul>
								</div>
							</div>
						</footer>
					</section>
				</aside>
				<!-- /.aside -->
				<section id="content">
					<section class="hbox stretch">
						<section>
							<section class="vbox">
								<section class="scrollable padder-lg w-f-md" id="bjax-target">
									<a href="#" class="pull-right text-muted m-t-lg"
										data-toggle="class:fa-spin"><i
										class="icon-refresh i-lg  inline" id="refresh"></i></a>
									<h2 class="font-thin m-b">
										发现音乐 <span class="musicbar animate inline m-l-sm"
											style="width: 20px; height: 20px"> <span
											class="bar1 a1 bg-primary lter"></span> <span
											class="bar2 a2 bg-info lt"></span> <span
											class="bar3 a3 bg-success"></span> <span
											class="bar4 a4 bg-warning dk"></span> <span
											class="bar5 a5 bg-danger dker"></span>
										</span>
									</h2>
									<div class="row row-sm">
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="bottom">
														<span class="badge bg-info m-l-sm m-b-sm">03:20</span>
													</div>
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p1.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Tempered Song</a> <a
														href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"> <i class="icon-control-play i-2x"></i>
															</a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p2.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Vivamus vel tincidunt
														libero</a> <a href="#"
														class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
												</div>
											</div>
										</div>
										<div class="clearfix visible-xs"></div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p3.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Morbi id neque quam
														liquam sollicitudin</a> <a href="#"
														class="text-ellipsis text-xs text-muted">Allen JH</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<div class="top">
														<span class="pull-right m-t-n-xs m-r-sm text-white">
															<i class="fa fa-bookmark i-lg"></i>
														</span>
													</div>
													<a href="#"><img src="static/picture/p4.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Tincidunt libero</a> <a
														href="#" class="text-ellipsis text-xs text-muted">Amanda
														Conlan</a>
												</div>
											</div>
										</div>
										<div class="clearfix visible-xs"></div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p5.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Fermentum diam</a> <a
														href="#" class="text-ellipsis text-xs text-muted">Nisa
														Colen</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="top">
														<span class="pull-right m-t-sm m-r-sm badge bg-info">6</span>
													</div>
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p6.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Habitant</a> <a href="#"
														class="text-ellipsis text-xs text-muted">Dan Doorack</a>
												</div>
											</div>
										</div>
										<div class="clearfix visible-xs"></div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<div class="top">
														<span class="pull-right m-t-sm m-r-sm badge bg-white">12</span>
													</div>
													<a href="#"><img src="static/picture/p7.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Vivamus vel tincidunt
														libero</a> <a href="#"
														class="text-ellipsis text-xs text-muted">Ligula H</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p8.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Aliquam sollicitudin
														venenati</a> <a href="#"
														class="text-ellipsis text-xs text-muted">James East</a>
												</div>
											</div>
										</div>
										<div class="clearfix visible-xs"></div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p9.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Lementum ligula vitae</a>
													<a href="#" class="text-ellipsis text-xs text-muted">Lauren
														Taylor</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay r r-2x bg-light dker ">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"> <i class="icon-control-play i-2x"></i>
															</a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p10.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Egestas dui nec
														fermentum </a> <a href="#"
														class="text-ellipsis text-xs text-muted">Chris Fox</a>
												</div>
											</div>
										</div>
										<div class="clearfix visible-xs"></div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p11.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Aliquam sollicitudin
														venenatis ipsum</a> <a href="#"
														class="text-ellipsis text-xs text-muted">Jack Jason</a>
												</div>
											</div>
										</div>
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="#"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="static/picture/p12.jpg" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">Vestibulum
														ullamcorper</a> <a href="#"
														class="text-ellipsis text-xs text-muted">MM &amp; DD</a>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-7">
											<h3 class="font-thin">新歌速递</h3>
											<div class="row row-sm">
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a2.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Spring rain</a> <a
																href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a3.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Hope</a> <a href="#"
																class="text-ellipsis text-xs text-muted">Miya</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a8.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Listen wind</a> <a
																href="#" class="text-ellipsis text-xs text-muted">Soyia
																Jess</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a9.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Breaking me</a> <a
																href="#" class="text-ellipsis text-xs text-muted">Pett
																JA</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a1.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Nothing</a> <a href="#"
																class="text-ellipsis text-xs text-muted">Willion</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a6.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Panda Style</a> <a
																href="#" class="text-ellipsis text-xs text-muted">Lionie</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a7.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Hook Me</a> <a href="#"
																class="text-ellipsis text-xs text-muted">Gossi</a>
														</div>
													</div>
												</div>
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="#"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="static/picture/a5.png" alt=""
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">Tempered Song</a> <a
																href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-5">
											<h3 class="font-thin">最热歌曲</h3>
											<div class="list-group bg-white list-group-lg no-bg auto">
												<a href="#" class="list-group-item clearfix"> <span
													class="pull-right h2 text-muted m-l">1</span> <span
													class="pull-left thumb-sm avatar m-r"> <img
														src="static/picture/a4.png" alt="...">
												</span> <span class="clear"> <span>Little Town</span> <small
														class="text-muted clear text-ellipsis">by Chris
															Fox</small>
												</span>
												</a> <a href="#" class="list-group-item clearfix"> <span
													class="pull-right h2 text-muted m-l">2</span> <span
													class="pull-left thumb-sm avatar m-r"> <img
														src="static/picture/a5.png" alt="...">
												</span> <span class="clear"> <span>Lementum ligula
															vitae</span> <small class="text-muted clear text-ellipsis">by
															Amanda Conlan</small>
												</span>
												</a> <a href="#" class="list-group-item clearfix"> <span
													class="pull-right h2 text-muted m-l">3</span> <span
													class="pull-left thumb-sm avatar m-r"> <img
														src="static/picture/a6.png" alt="...">
												</span> <span class="clear"> <span>Aliquam
															sollicitudin venenatis</span> <small
														class="text-muted clear text-ellipsis">by Dan
															Doorack</small>
												</span>
												</a> <a href="#" class="list-group-item clearfix"> <span
													class="pull-right h2 text-muted m-l">4</span> <span
													class="pull-left thumb-sm avatar m-r"> <img
														src="static/picture/a7.png" alt="...">
												</span> <span class="clear"> <span>Aliquam
															sollicitudin venenatis ipsum</span> <small
														class="text-muted clear text-ellipsis">by Lauren
															Taylor</small>
												</span>
												</a> <a href="#" class="list-group-item clearfix"> <span
													class="pull-right h2 text-muted m-l">5</span> <span
													class="pull-left thumb-sm avatar m-r"> <img
														src="static/picture/a8.png" alt="...">
												</span> <span class="clear"> <span>Vestibulum
															ullamcorper</span> <small class="text-muted clear text-ellipsis">by
															Dan Doorack</small>
												</span>
												</a>
											</div>
										</div>
									</div>
									<!-- <div class="row m-t-lg m-b-lg">
                    <div class="col-sm-6">
                      <div class="bg-primary wrapper-md r">
                        <a href="#">
                          <span class="h4 m-b-xs block"><i class=" icon-user-follow i-lg"></i> Login or Create account</span>
                          <span class="text-muted">Save and share your playlist with your friends when you log in or create an account.</span>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="bg-black wrapper-md r">
                        <a href="#">
                          <span class="h4 m-b-xs block"><i class="icon-cloud-download i-lg"></i> Download our app</span>
                          <span class="text-muted">More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>.</span>
                        </a>
                      </div>
                    </div>
                  </div> -->
								</section>
								<footer class="footer bg-dark">
									<div id="jp_container_N">
										<div class="jp-type-playlist">
											<div id="jplayer_N" class="jp-jplayer hide"></div>
											<div class="jp-gui">
												<div class="jp-video-play hide">
													<a class="jp-video-play-icon">play</a>
												</div>
												<div class="jp-interface">
													<div class="jp-controls">
														<div>
															<a class="jp-previous"><i
																class="icon-control-rewind i-lg"></i></a>
														</div>
														<div>
															<a class="jp-play"><i class="icon-control-play i-2x"></i></a>
															<a class="jp-pause hid"><i
																class="icon-control-pause i-2x"></i></a>
														</div>
														<div>
															<a class="jp-next"><i
																class="icon-control-forward i-lg"></i></a>
														</div>
														<div class="hide">
															<a class="jp-stop"><i class="fa fa-stop"></i></a>
														</div>
														<div>
															<a class="" data-toggle="dropdown"
																data-target="#playlist"><i class="icon-list"></i></a>
														</div>
														<div class="jp-progress hidden-xs">
															<div class="jp-seek-bar dk">
																<div class="jp-play-bar bg-info"></div>
																<div class="jp-title text-lt">
																	<ul>
																		<li></li>
																	</ul>
																</div>
															</div>
														</div>
														<div
															class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
														<div
															class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
														<div class="hidden-xs hidden-sm">
															<a class="jp-mute" title="mute"><i
																class="icon-volume-2"></i></a> <a class="jp-unmute hid"
																title="unmute"><i class="icon-volume-off"></i></a>
														</div>
														<div class="hidden-xs hidden-sm jp-volume">
															<div class="jp-volume-bar dk">
																<div class="jp-volume-bar-value lter"></div>
															</div>
														</div>
														<div>
															<a class="jp-shuffle" title="shuffle"><i
																class="icon-shuffle text-muted"></i></a> <a
																class="jp-shuffle-off hid" title="shuffle off"><i
																class="icon-shuffle text-lt"></i></a>
														</div>
														<div>
															<a class="jp-repeat" title="repeat"><i
																class="icon-loop text-muted"></i></a> <a
																class="jp-repeat-off hid" title="repeat off"><i
																class="icon-loop text-lt"></i></a>
														</div>
														<div class="hide">
															<a class="jp-full-screen" title="full screen"><i
																class="fa fa-expand"></i></a> <a class="jp-restore-screen"
																title="restore screen"><i
																class="fa fa-compress text-lt"></i></a>
														</div>
													</div>
												</div>
											</div>
											<div class="jp-playlist dropup" id="playlist">
												<ul class="dropdown-menu aside-xl dker">
													<!-- The method Playlist.displayPlaylist() uses this unordered list -->
													<li class="list-group-item"></li>
												</ul>
											</div>
											<div class="jp-no-solution hide">
												<span>Update Required</span> To play the media you will need
												to either update your browser to a recent version or update
												your <a href="http://get.adobe.com/flashplayer/"
													target="_blank">Flash plugin</a>.
											</div>
										</div>
									</div>
								</footer>
							</section>
						</section>
						<!-- side content -->
						<aside class="aside-md bg-light dk" id="sidebar">
							<section class="vbox animated fadeInRight">
								<section class="w-f-md scrollable hover">
									<h4 class="font-thin m-l-md m-t">Connected</h4>
									<ul class="list-group no-bg no-borders auto m-t-n-xxs">
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a1.png" alt="..."
												class="img-circle"> <i class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Chris Fox</a>
												</div>
												<small class="text-muted">New York</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a2.png" alt="..."> <i
												class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Amanda Conlan</a>
												</div>
												<small class="text-muted">France</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a3.png" alt="..."> <i
												class="busy b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Dan Doorack</a>
												</div>
												<small class="text-muted">Hamburg</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a4.png" alt="..."> <i
												class="away b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Lauren Taylor</a>
												</div>
												<small class="text-muted">London</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a5.png" alt="..."
												class="img-circle"> <i class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Chris Fox</a>
												</div>
												<small class="text-muted">Milan</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a6.png" alt="..."> <i
												class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Amanda Conlan</a>
												</div>
												<small class="text-muted">Copenhagen</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a7.png" alt="..."> <i
												class="busy b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Dan Doorack</a>
												</div>
												<small class="text-muted">Barcelona</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a8.png" alt="..."> <i
												class="away b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Lauren Taylor</a>
												</div>
												<small class="text-muted">Tokyo</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a9.png" alt="..."
												class="img-circle"> <i class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Chris Fox</a>
												</div>
												<small class="text-muted">UK</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a1.png" alt="..."> <i
												class="on b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Amanda Conlan</a>
												</div>
												<small class="text-muted">Africa</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a2.png" alt="..."> <i
												class="busy b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Dan Doorack</a>
												</div>
												<small class="text-muted">Paris</small>
											</div></li>
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="static/picture/a3.png" alt="..."> <i
												class="away b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">Lauren Taylor</a>
												</div>
												<small class="text-muted">Brussels</small>
											</div></li>
									</ul>
								</section>
								<footer class="footer footer-md bg-black">
									<form class="" role="search">
										<div class="form-group clearfix m-b-none">
											<div class="input-group m-t m-b">
												<span class="input-group-btn">
													<button type="submit"
														class="btn btn-sm bg-empty text-muted btn-icon">
														<i class="fa fa-search"></i>
													</button>
												</span> <input type="text"
													class="form-control input-sm text-white bg-empty b-b b-dark no-border"
													placeholder="Search members">
											</div>
										</div>
									</form>
								</footer>
							</section>
						</aside>
						<!-- / side content -->
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
				</section>
			</section>
		</section>
	</section>
	<script src="static/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="static/js/bootstrap.js"></script>
	<!-- App -->
	<script src="static/js/app.js"></script>
	<script src="static/js/jquery.slimscroll.min.js"></script>
	<script src="static/js/app.plugin.js"></script>
	<script type="text/javascript" src="static/js/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="static/js/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="static/js/demo.js"></script>
</body>
</html>