<%@page import="tienganhchobe.webmvc.model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>header page</title>
</head>
<body>
	<%
		Users u=null;
		if(session.getAttribute("student")!=null){
			u=(Users) session.getAttribute("student");
		}
		else if(session.getAttribute("admin")!=null)
		{
			u=(Users) session.getAttribute("admin");
		}
		else if(session.getAttribute("teacher")!=null)
		{
			u=(Users) session.getAttribute("teacher");
		}
	%>
	
	<!-- Preloader -->
    <div id="preloader">
        <div class="spinner"></div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area d-flex justify-content-between align-items-center">
            <!-- Contact Info -->
            <div class="contact-info">
                <a href="#"><span>Phone:</span>0965 439 069</a>
                <a href="#"><span>Email:</span>hongsonflute@gmail.com</a>
            </div>
            <!-- Follow Us -->
            <div class="follow-us">
                <span>Follow us</span>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="clever-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="cleverNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="/tienganhchobe/view/home.jsp">TIẾNG ANH CHO BÉ</a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul>
                                <li><a href="/tienganhchobe/view/home.jsp">Trang Chủ</a></li>
                                <li><a href="/tienganhchobe/view/courses.jsp">Khóa Học</a></li>
                                <li><a href="/tienganhchobe/view/contact.jsp">Liên Hệ</a></li>
                            </ul>

                            <!-- Search Button -->
                            <div class="search-area">
                                <form action="#" method="post">
                                    <input type="search" name="search" id="search" placeholder="Tìm kiếm">
                                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>

                            <!-- Register / Login -->
                            
                            <%if(u!=null){%>
                            <div class="login-state d-flex align-items-center">
                                <div class="user-name mr-30">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" id="userName" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <% if(u!=null){%> <%=u.getUser_name()%> <%} %>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userName">
                                          <%if(session.getAttribute("student")!=null) 
                                          {%>
                                            <a class="dropdown-item" href="/tienganhchobe/view/member/member-page.jsp">Góc Học Tập</a>
                                            <a class="dropdown-item" href="/tienganhchobe/view/member/member-profile.jsp">Thông Tin Cá Nhân</a>
                                            <%}
                                          %>
                                          <%if(session.getAttribute("admin")!=null ||session.getAttribute("teacher")!=null) 
                                          {%>
                                            <a class="dropdown-item" href="/tienganhchobe/view/admin/admin-home.jsp">Trang Quản Trị</a>
                                       
                                            <%}
                                          %>
                                            <a class="dropdown-item" href="/tienganhchobe/dangxuatcontroller">Đăng Xuất</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="userthumb">
                                    <img src="/tienganhchobe/img/bg-img/t1.png" alt="">
                                </div>
                            </div>
                             <% }
                            else{%>
                            <div class="register-login-area">
                                <a href="/tienganhchobe/view/register.jsp" class="btn">Đăng Ký</a>
                                <a href="/tienganhchobe/view/login.jsp" class="btn">Đăng Nhập</a>
                            </div>
                            
                            <%}
                             %>
                            

                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
	
</body>
</html>