<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/fev.png" type="image/png"/>
  <title>Home</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/bootstrap.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/liner/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/them-icons.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/css/flat.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/owl-carousel/owl.carousel.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/lightbox/simpleLightbox.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/nice-select/css/nice-select.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/animate-css/animate.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/vendors/jquery-ui/jquery-ui.css"/>">
  <!-- main css -->
  <link rel="stylesheet" href="<c:url value="/resources/css/css/style.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/css/responsive.css"/>"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/font-free-6.1.2-web/css/solid.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/hearder.css"/>">

</head>
<body>
  <header class="header_area">
    <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">

          <a class="navbar-brand logo_h" href="/project-final-main">
            <img src="<c:url value='/resources/css/img/logo/Logo1_tp_icon.png'/>"/>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

          <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
            <div class="row w-100 mr-2">
              <div class="col-lg-7 pr-0">
                <ul  class="nav navbar-nav center_nav pull-right">
                  <li class="nav-item active">
                    <a class="nav-link" href="/productphone">Trang Chủ</a>
                  </li>

                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">Danh mục</a>
                    <ul class="dropdown-menu">
                        <c:forEach var="category" items="${categoryList}" varStatus="index">
                          <li class="nav-item">
                            <a class="nav-link" href="product-list/categoryid=${category.id}page1">${category.name}</a>
                          </li>
                        </c:forEach>
                    </ul>
                  </li>
                   <li class="nav-item submenu dropdown">
                       <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                         aria-expanded="false">Lịch sử đơn hàng</a>
                       <ul class="dropdown-menu">
                       </ul>
                   </li>
                   <li class="nav-item submenu dropdown">
                     <a href="manager" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                          aria-expanded="false">Trang Quản Lý</a>
                        <ul class="dropdown-menu">
                        </ul>
                   </li>
                </ul>
                  <div class="search">
                    <form:form action="search" method="get">
                      <div class="input-group">
                          <input name="searchInput" type="text" class="form-control rounded" placeholder="Sản Phẩm Cần Tìm?" aria-label="Search"
                              aria-describedby="search-addon" />
                          <button type="submit" class="btn btn-outline-primary">Tìm Kiếm</button>
                      </div>
                    </form:form>
                  </div>
              </div>

              <div class="col-lg-5 pr-0">
                <ul class="nav navbar-nav navbar-right right_nav pull-right">
                  <li class="nav-item">
                    <a href="cart" class="icons">
                      <i class="ti-shopping-cart">Giỏ Hàng</i>
                    </a>
                  </li>
                  <li class="nav-items">
                      <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Nhập</a></li>
                  </li>

                  <li class="nav-items">
                      <li><a style="color: black;" href="#"><i class="fa fa-user"></i> Đăng Ký</a></li>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header>
</body>
</html>