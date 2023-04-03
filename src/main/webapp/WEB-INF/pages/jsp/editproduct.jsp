<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false"%>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="images/shorcut.jpg">
	<title>Add Form</title>
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
          rel="stylesheet">

	<link rel="stylesheet" type="text/scss" href="<c:url value="/resources/css/css/styles.css"/>">
	<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"/>">
	<link rel='stylesheet' type='text/css' href="<c:url value="https://fonts.googleapis.com/css?family=Passion+One"/>">
	<link rel='stylesheet' type='text/css' href="<c:url value="https://fonts.googleapis.com/css?family=Oxygen"/>">

    <link rel="stylesheet" href="<c:url value="/resources/css/add.css"/>">

</head>
<body>
    <header class="header_area">
        <div class="main_menu">
          <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light w-100">
              <a class="navbar-brand logo_h" href="index.html">
                <img src="<c:url value='/resources/css/img/logo/Logo1_tp_icon.png'/>"/>
              </a>
              <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
                <div class="row w-100 mr-0">
                  <div class="col-lg-6 pr-0">
                    <ul class="nav navbar-nav center_nav pull-right">
                      <li class="nav-item active">
                        <a class="nav-link" href="index.html">Trang Chủ</a>
                      </li>

                      <li class="nav-item submenu dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                          aria-expanded="false">Danh Mục</a>
                        <ul class="dropdown-menu">
                          <li class="nav-item">
                            <a class="nav-link" href="blog.html">Điện Thoại</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="single-blog.html">Tablet</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="single-blog.html">LapTop</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="single-blog.html">Đồng Hồ</a>
                          </li>
                        </ul>
                      </li>
                      <li class="nav-item submenu dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                          aria-expanded="false">Pages</a>
                        <ul class="dropdown-menu">
                          <li class="nav-item">
                            <a class="nav-link" href="tracking.html">Tracking</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="elements.html">Elements</a>
                          </li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact</a>
                      </li>
                    </ul>
                  </div>

                </div>
              </div>
            </nav>
          </div>
        </div>
    </header>

    <div class="container">
        <div class="row main">
                <div class="panel-heading">
                    <div class="panel-title text-center">
                        <h1 class="title"><c:out value="${msg}" /></h1>
                    </div>
                </div>
                <div class="main-login main-center">
                    <form action="${action}" method="post" encType="multipart/form-data" modelAttribute="product">
                            <div class="form-group">
                                <c:if test="${type.equals('update')}">
                                    <label for="name" class="cols-sm-2 control-label">ID (*)</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                            <input name="id" value="${product.id}" class="form-control" readonly/>
                                        </div>
                                        <div class="message" id="message_name"></div>
                                    </div>
                                </c:if>
                            </div>
                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Tên sản phẩm (*)</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                        <input name="name" value="${product.name}" type="text" class="form-control" placeholder="Nhập tên sản phẩm"
                                                                            required="true" />
                                    </div>
                                    <div class="message" id="message_name">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Hình ảnh chính (*)</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                        <input name="photo" value="${product.image}" type="file" class="form-control"/>
                                    </div>
                                    <div class="message" id="message_name">
                                    </div>
                                </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Hình ảnh phụ 1 (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="photo1" value="${product.image1}" type="file" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                              <label for="name" class="cols-sm-2 control-label">Hình ảnh phụ 2 (*)</label>
                              <div class="cols-sm-10">
                                  <div class="input-group">
                                      <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                      <input name="photo2" value="${product.image2}" type="file" class="form-control"/>
                                  </div>
                                  <div class="message" id="message_name">
                                  </div>
                              </div>
                           </div>

                            <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Hình ảnh phụ 3 (*)</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                        <input name="photo3" value="${product.image3}" type="file" class="form-control"/>
                                    </div>
                                    <div class="message" id="message_name">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                 <label for="name" class="cols-sm-2 control-label">Ảnh bìa (*)</label>
                                 <div class="cols-sm-10">
                                     <div class="input-group">
                                         <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                         <input name="photo4" value="${product.banner}" type="file" class="form-control"/>
                                     </div>
                                     <div class="message" id="message_name">
                                     </div>
                                 </div>
                            </div>


                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Mô Tả (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="description" value="${product.description}" type="text" class="form-control" placeholder="mô tả sản phẩm"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                                 <label for="name" class="cols-sm-2 control-label">Giá (*)</label>
                                 <div class="cols-sm-10">
                                     <div class="input-group">
                                         <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                         <input name="price" value="${product.price}" type="number" min="0" class="form-control" placeholder="nhập giá"/>
                                     </div>
                                     <div class="message" id="message_name">
                                     </div>
                                 </div>
                           </div>

                           <div class="form-group">
                                <label for="name" class="cols-sm-2 control-label">Số lượng (*)</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                        <input name="quantity" value="${product.quantity}" type="number" min="0" class="form-control" placeholder="nhập số lượng"/>
                                    </div>
                                    <div class="message" id="message_name">
                                    </div>
                                </div>
                           </div>

                           <div class="form-group">
                              <label for="name" class="cols-sm-2 control-label">Thông tin sản phẩm (*)</label>
                              <div class="cols-sm-10">
                                  <div class="input-group">
                                      <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                      <input name="information" value="${product.productDetails.information}" type="text" class="form-control"/>
                                  </div>
                                  <div class="message" id="message_name">
                                  </div>
                              </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Dung lượng pin (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_batteries" value="${product.productDetails.product_batteries}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Chip set (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_chip" value="${product.productDetails.product_chip}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Camera Trước (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_frontCamera" value="${product.productDetails.product_frontCamera}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Camera Sau (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_rearCamera" value="${product.productDetails.product_rearCamera}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                              <label for="name" class="cols-sm-2 control-label">Ram (*)</label>
                              <div class="cols-sm-10">
                                  <div class="input-group">
                                      <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                      <input name="product_ram" value="${product.productDetails.product_ram}" type="text" class="form-control"/>
                                  </div>
                                  <div class="message" id="message_name">
                                  </div>
                              </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Kích thước Màn hình (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_screen" value="${product.productDetails.product_screen}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                               <label for="name" class="cols-sm-2 control-label">Hệ điều hành (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <input name="product_system" value="${product.productDetails.product_system}" type="text" class="form-control"/>
                                   </div>
                                   <div class="message" id="message_name">
                                   </div>
                               </div>
                           </div>

                           <div class="form-group">
                               <label for="confirm" class="cols-sm-2 control-label">Danh Mục (*)</label>
                               <div class="cols-sm-10">
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                                       <form:select path="product.category.id" class="form-control">
                                           <form:option value="0" label="--- Select ---" />
                                           <form:options items="${categoryList}"/>
                                       </form:select>
                                   </div>
                               </div>
                           </div>
                           <div class="form-group ">
                               <div class="add">
                                   <input type="submit" value="${change}"/>
                               </div>
                           </div>
                    </form>

                </div>
            <div class="panel-heading">
                <div class="panel-title text-center">
                    <h3 class="title">Design by Ty </h3>
                    <hr />
                </div>
            </div>
        </div>
    </div>

</body>
</html>