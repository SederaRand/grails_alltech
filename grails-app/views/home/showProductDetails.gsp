<%--
  Created by IntelliJ IDEA.
  User: Dev
  Date: 11/01/2021
  Time: 17:25
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="home" />
  <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
</head>
<body>

<section class="py-5">
  <div class="container">
    <div class="row mb-5">  
      <div class="col-lg-6">
        <!-- PRODUCT SLIDER-->
        <div class="row m-sm-0">
          <div class="col-sm-10 order-1 order-sm-2">
            <div class="owl-carousel product-slider" data-slider-id="1">
              <a class="d-block" href="${fieldValue(bean:  product, field:"prodImageUrl")}" data-lightbox="product" title="Product item 1">
                <img class="img-fluid" src="${fieldValue(bean:  product, field:"prodImageUrl")}" alt="...">
              </a>
            </div>
          </div>
        </div>
      </div>
      <!-- PRODUCT DETAILS-->
      <div class="col-lg-6">
        <ul class="list-inline mb-2">
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
        </ul>
        <h1><f:display bean="product" property="ProdName" /></h1>
        <p class="text-muted lead"><f:display bean="product" property="ProdPrice"/> €</p>
        <p class="text-small mb-4">
          <f:display bean="product" property="ProdDesc" />
        </p>
        <div class="row align-items-stretch mb-4">
          <div class="col-sm-5 pr-sm-0">
            <div class="border d-flex align-items-center justify-content-between py-1 px-3 bg-white border-white"><span class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
              <div class="quantity">
                <button class="dec-btn p-0"><i class="fas fa-caret-left"></i></button>
                <input class="form-control border-0 shadow-0 p-0" type="text" value="1">
                <button class="inc-btn p-0"><i class="fas fa-caret-right"></i></button>
              </div>
            </div>
          </div>
          <div class="col-sm-3 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="cart.html">Add to cart</a></div>
        </div><a class="btn btn-link text-dark p-0 mb-4" href="#"><i class="far fa-heart mr-2"></i>Add to wish list</a><br>
        <ul class="list-unstyled small d-inline-block">
          <li class="px-3 py-2 mb-1 bg-white text-muted"><strong class="text-uppercase text-dark">Category:</strong><a class="reset-anchor ml-2" href="#"><f:display bean="product" property="categoryName"/></a></li>
        </ul>
      </div>
    </div>
    <!-- DETAILS TABS-->
    <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
      <li class="nav-item"><a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a></li>
    </ul>
    <div class="tab-content mb-5" id="myTabContent">
      <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
        <div class="p-4 p-lg-5 bg-white">
          <h6 class="text-uppercase">Product description </h6>
          <p class="text-muted text-small mb-0">
            <f:display bean="product" property="prodDesc"/>
          </p>
        </div>
      </div>
    </div>
   </div>
</section>
</body>
</html>