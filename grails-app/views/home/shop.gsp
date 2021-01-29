<%--
  Created by IntelliJ IDEA.
  User: Dev
  Date: 12/01/2021
  Time: 11:30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="home" />
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
</head>

<body onload="myFunction()">
<div id="loader"></div>
<div class="page-holder">
<div class="container">
    <!-- HERO SECTION-->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                <div class="col-lg-6">
                    <h1 class="h2 text-uppercase mb-0">Shop</h1>
                </div>
                <div class="col-lg-6 text-lg-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                            <li class="breadcrumb-item"><a href="">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Shop</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5">
        <div class="container p-0">
            <div class="row">
                <!-- SHOP SIDEBAR-->
                <div class="col-lg-3 order-2 order-lg-1">
                    <h5 class="text-uppercase mb-4">Categories</h5>
                    <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold">All</strong></div>
                    <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
                        <li class="mb-2"><a class="reset-anchor" href="#">Smartphones</a></li>
                        <li class="mb-2"><a class="reset-anchor" href="#">Accesoires</a></li>
                        <li class="mb-2"><a class="reset-anchor" href="#">Laptop</a></li>
                        <li class="mb-2"><a class="reset-anchor" href="#">Laptop Gaming socks</a></li>

                    </ul>
                </div>
                <!-- SHOP LISTING-->
                <nav class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                    <div class="row mb-3 align-items-center">
                        <div class="col-lg-6 mb-2 mb-lg-0">
                            <p class="text-small text-muted mb-0"></p>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                                <li class="list-inline-item">
                                    <g:form action="results" class="form-outline">
                                    <div class="input-group">
                                        <div class="form-outline">
                                            <g:textField name="searchText" type="search" id="form1" class="form-control" />
                                        </div>
                                        <g:submitButton name="search" value="Search" type="button" class="btn btn-primary">
                                            <i class="fas fa-search"></i>
                                        </g:submitButton>
                                    </div>
                                    </g:form>
                                        <Br/><Br/>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row" >
                        <!-- PRODUCT-->
                    <g:each in="${productList}" status="i" var="productInstance">
                        <div class="col-lg-4 col-sm-6">
                            <div class="product text-center">
                                <div class="mb-3 position-relative">
                                    <div class="badge text-white badge-"></div><a class="d-block" href="${createLink(controller: 'home', action: 'showProductDetails', id: productInstance.id)}">
                                    <img src="${fieldValue(bean:  productInstance, field:"prodImageUrl")}" width="200px" height="200px"/></a>
                                    <div class="product-overlay">
                                        <ul class="mb-0 list-inline">
                                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="#">order</a></li>
                                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="${createLink(controller: 'home', action: 'showProductDetails', id: productInstance.id)}" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <h6> <a class="reset-anchor" href="detail.html">${fieldValue(bean: productInstance, field: "prodName")}</a></h6>
                                <p class="small text-muted">${fieldValue(bean: productInstance, field: "prodPrice")} €</p>
                            </div>
                        </div>

                    </g:each>
                    </div>
                <!-- PAGINATION-->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center justify-content-lg-end">
                        <g:paginate total="${productCount}" action="shop" controller="home" params="${params}"/>
                    </ul>
                </nav>

            </div>
            </div>
        </div>
    </section>
</div>
</div>
<script>
    var preload = document.getElementById('loader');

    function myFunction(){
        preload.style.display = 'none';
    }
</script>
</body>
</html>