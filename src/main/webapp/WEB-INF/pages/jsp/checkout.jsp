<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="images/shorcut.jpg">
	<title>Register Form</title>
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
          rel="stylesheet">

	<link rel="stylesheet" type="text/scss" href="css/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Passion+One'>
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Oxygen'>

</head>
<body>

	<div class="container" style="margin-top: 20px;  display: flex; justify-content: center;">
            <div class="col-md-4">
                <form:form action="checkout" method="POST" modelAttribute="order">
                    <fieldset class="scheduler-border">

                       <div class="form-group">
                             <label class="control-label">Tên khách hàng (*)</label>
                             <form:input path="customerName" type="text" class="form-control" placeholder="nhập tên" required="true" />
                       </div>


                        <div class="form-group">
                              <label class="control-label">Địa chỉ (*)</label>
                              <form:input path="customerAddress" type="text"  class="form-control"
                                  placeholder="nhập địa chỉ" required="true" />
                        </div>

                          <div class="form-group" name="paymentid">
                             <select name = "payment_method" class="form-control">
                                 <option value="0" label="--- Select ---" />
                                 <option value='CASH'>CASH</option>
                                 <option value='COD'>COD</option>
                             </select>
                            </div>

                        <br>
                        <button class="btn btn-primary btn-sm" type="submit" style="width: 350px; height: 38px; font-size: 110%;">Save</button>
                    </fieldset>
                </form:form>
            </div>
        </div>
</body>
</html>

