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
  <link rel="stylesheet" href="<c:url value="/resources/css/pageHome.css"/>">


</head>

<body>
<jsp:include page="hearder.jsp"/>

  <section class="feature-area section_gap_bottom_custom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img width="54px" src="<c:url value='/resources/css/img/logoDT.PNG'/>"/>
              <h3>Điện Thoại</h3>
            </a>
                <div class="select">
                  <select name="cars" id="cars">
                    <option value="volvo"></option>
                    <option value="saab">Iphone 15</option>
                    <option value="opel">Iphone 16</option>
                    <option value="audi">Iphone 17</option>
                  </select>
                </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img src="<c:url value='/resources/css/img/logotablet3.PNG'/>"/>
              <h3>Tablet</h3>
            </a>
              <div class="select">
                <select name="cars" id="cars">
                  <option value="volvo"></option>
                  <option value="saab">Saab</option>
                  <option value="opel">Opel</option>
                  <option value="audi">Audi</option>
                </select>
              </div>

          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img style="width: 82px;" src="<c:url value='/resources/css/img/logoLaptop.PNG'/>"/>
              <h3>LapTop&MAC</h3>
            </a>
            <div class="select">
               <select name="cars" id="cars">
                 <option value="volvo"></option>
                 <option value="saab">Saab</option>
                 <option value="opel">Opel</option>
                 <option value="audi">Audi</option>
               </select>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="single-feature">
            <a href="#">
            <img style="width: 37px;" src="<c:url value='/resources/css/img/logodongho.PNG'/>"/>
              <h3>Đồng Hồ</h3>
            </a>
            <div class="select">
               <select name="cars" id="cars">
                 <option value="volvo"></option>
                 <option value="saab">Saab</option>
                 <option value="opel">Opel</option>
                 <option value="audi">Audi</option>
               </select>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="new_product_area section_gap_top section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Sản Phẩm Mới</span></h2>
            <p>Bring called seed first of third give itself now ment</p>
          </div>
          <div class="main_title">
              <div class="img-logohome1">
                <div class="img-logo1">
                  <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
                </div>
              </div>
          </div>
        </div>
      </div>

        <div class="row">
          <c:forEach var="top1" items="${ListTop1}" varStatus="index">
            <div class="col-lg-6">
              <div class="new_product">
                <h3 class="text-uppercase">${top1.name}</h3>
                <div class="product-img">
                    <a href="product/${top1.id}">
                      <img class="img-fluid" src="getProductPhoto/<c:out value='${top1.id}'/>"/>
                    </a>
                </div>
                <h4><fmt:formatNumber value="${top1.price}" pattern="#,##0" /></h4>
                <a href="addToCart/${top1.id}" class="main_btn">Thêm Vào Giỏ</a>

              </div>
            </div>
          </c:forEach>
            <div class="col-lg-6 mt-5 mt-lg-0">

                  <div class="row">
                      <c:forEach var="top4" items="${ListTop4}" varStatus="index">
                        <div class="col-lg-6 col-md-6">
                          <div class="single-product">
                            <div class="product-img">
                              <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/new-product/n1.jpg'/>"/>
                              <div class="p_icon">
                                <a href="product/${top4.id}">
                                  <i class="ti-eye"></i>
                                </a>
                                <a href="addToCart/${top4.id}">
                                  <i class="ti-shopping-cart"></i>
                                </a>
                              </div>
                            </div>
                            <div class="product-btm">
                              <a href="product/${top4.id}" class="d-block">
                                <h4>${top4.name}</h4>
                              </a>
                              <div class="mt-3">
                                <span class="mr-4"><fmt:formatNumber value="${top4.price}" pattern="#,##0" /></span>
                                <del>$35.00</del>
                              </div>
                            </div>
                          </div>
                        </div>
                      </c:forEach>
                  </div>
            </div>

      </div>
    </div>
  </section>

  <section class="inspired_product_area section_gap_bottom_custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="main_title">
            <h2><span>Điện Thoại</span></h2>
          </div>
          <div class="main_title">
            <div class="img-logohome1">
              <div class="img-logo1">
                <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
          <c:forEach var="product" items="${productListTopPhone}" varStatus="index">
            <div class="col-lg-3 col-md-6">
              <div class="single-product">
                <div class="product-img">
                  <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                  <div class="p_icon">
                    <a href="product/${product.id}">
                      <i class="ti-eye"></i>
                    </a>
                    <a href="addToCart/${product.id}">
                      <i class="ti-shopping-cart"></i>
                    </a>
                  </div>
                </div>
                <div class="product-btm">
                  <a href="product/${product.id}" class="d-block">
                    <h4>${product.name}</h4>
                  </a>
                  <div class="mt-3">
                    <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                    <del>$35.00</del>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>
      </div>
    </div>
  </section>
  <div class="main_title">
      <a href="#" class="d-block">Xem Thêm</a>
  </div>

  <section class="inspired_product_area section_gap_bottom_custom">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="main_title">
              <h2><span>Tablet</span></h2>
            </div>
            <div class="main_title">
                <div class="img-logohome1">
                  <div class="img-logo1">
                    <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
                  </div>
                </div>
            </div>
          </div>
        </div>

            <div class="row">
                <c:forEach var="product" items="${showTopTapLet}" varStatus="index">
                  <div class="col-lg-3 col-md-6">
                    <div class="single-product">
                      <div class="product-img">
                        <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                        <div class="p_icon">
                          <a href="product/${product.id}">
                            <i class="ti-eye"></i>
                          </a>
                          <a href="addToCart/${product.id}">
                            <i class="ti-shopping-cart"></i>
                          </a>
                        </div>
                      </div>
                      <div class="product-btm">
                        <a href="product/${product.id}" class="d-block">
                          <h4>${product.name}</h4>
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                          <del>$35.00</del>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
            </div>
      </div>
    </section>
    <div class="main_title">
          <a href="#" class="d-block">Xem Thêm</a>
      </div>


    <section class="inspired_product_area section_gap_bottom_custom">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-12">
                <div class="main_title">
                  <h2><span>LapTop&Mac</span></h2>
                </div>
                <div class="main_title">
                  <div class="img-logohome1">
                    <div class="img-logo1">
                      <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
                    </div>
                  </div>
                 </div>
              </div>
            </div>

                <div class="row">
                    <c:forEach var="product" items="${productListTopLaptop}" varStatus="index">
                      <div class="col-lg-3 col-md-6">
                        <div class="single-product">
                          <div class="product-img">
                            <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                            <div class="p_icon">
                              <a href="product/${product.id}">
                                <i class="ti-eye"></i>
                              </a>
                              <a href="addToCart/${product.id}">
                                <i class="ti-shopping-cart"></i>
                              </a>
                            </div>
                          </div>
                          <div class="product-btm">
                            <a href="product/${product.id}" class="d-block">
                              <h4>${product.name}</h4>
                            </a>
                            <div class="mt-3">
                              <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                              <del>$35.00</del>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                </div>
          </div>
    </section>
    <div class="main_title">
          <a href="#" class="d-block">Xem Thêm</a>
      </div>


    <section class="inspired_product_area section_gap_bottom_custom">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-12">
                <div class="main_title">
                  <h2><span>Đồng Hồ</span></h2>
                </div>
                <div class="main_title">
                  <div class="img-logohome1">
                    <div class="img-logo1">
                      <img src="<c:url value='/resources/css/img/logohome1920x600-060323-min.png'/>"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>

                <div class="row">
                    <c:forEach var="product" items="${productListDH}" varStatus="index">
                      <div class="col-lg-3 col-md-6">
                        <div class="single-product">
                          <div class="product-img">
                            <img class="img-fluid w-100" src="<c:url value='/resources/css/img/product/inspired-product/i1.jpg'/>"/>
                            <div class="p_icon">
                              <a href="product/${product.id}">
                                <i class="ti-eye"></i>
                              </a>
                              <a href="addToCart/${product.id}">
                                <i class="ti-shopping-cart"></i>
                              </a>
                            </div>
                          </div>
                          <div class="product-btm">
                            <a href="product/${product.id}" class="d-block">
                              <h4>${product.name}</h4>
                            </a>
                            <div class="mt-3">
                              <span class="mr-4"><fmt:formatNumber value="${product.price}" pattern="#,##0" /></span>
                              <del>$35.00</del>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                </div>
          </div>
    </section>
    <div class="main_title">
          <a href="#" class="d-block">Xem Thêm</a>
    </div>


</body>
</html>