<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Danh sách khách hàng</title>
 rel="stylesheet">
<%@ page isELIgnored="false"%>
</head>
<body>
<div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h3 class="text-center">Spring MVC 5 + Spring Data JPA 2 + JSP +
    MySQL Example - Quản lý khách hàng</h3>
   <hr />

   <input type="button" value="Thêm mới"
    onclick="window.location.href='showForm'; return false;"
    class="btn btn-primary" /> <br />
   <br />
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Danh sách khách hàng</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">

      <!-- loop over and print our customers -->
      <c:forEach var="pd" items="${product}">

       <!-- construct an "update" link with customer id -->
       <c:url var="updateLink" value="/customer/updateForm">
        <c:param name="productId" value="${pd.id}" />
        <c:param name="productName" value="${pd.name}" />
       </c:url>

      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
</body>
</html>