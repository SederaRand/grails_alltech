<%--
  Created by IntelliJ IDEA.
  User: Dev
  Date: 14/12/2020
  Time: 10:05
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ETSENA</title>
    <meta name="layout" content="home" />
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
</head>

<body>

<section class="container">
    <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url('${resource(dir: "images", file: "hero-banner.jpg")}')">
        <div class="container py-5">
            <div class="row px-4 px-lg-5">
                <div class="col-lg-6">
                    <p class="text-muted small text-uppercase mb-2">New Inspiration 2020</p>
                    <h1 class="h2 text-uppercase mb-3">20% off on new season</h1><a class="btn btn-dark" href="#">Browse collections</a>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-5">
        <header class="text-center">
            <p class="small text-muted small text-uppercase mb-1">Carefully created collections</p>
            <h2 class="h5 text-uppercase mb-4">Browse our categories</h2>
        </header>
        <div class="row">
            <div class="col-md-4 mb-4 mb-md-0"><a class="category-item" href="#"><asset:image class="img-fluid" src="product/laptopCat.jfif" alt=""/><strong class="category-item-title">Laptop</strong></a></div>
            <div class="col-md-4 mb-4 mb-md-0"><a class="category-item mb-4" href="#"><asset:image class="img-fluid" src="product/smartphonesCat.jfif" alt=""/><strong class="category-item-title">Smartphones</strong></a><a class="category-item" href="#"><asset:image class="img-fluid" src="product/laptopCat.jfif" alt=""/><strong class="category-item-title">Laptop</strong></a></div>
            <div class="col-md-4"><a class="category-item" href="#"><asset:image class="img-fluid" src="product/cat-img-4.jpg" alt=""/><strong class="category-item-title">Accesoires</strong></a></div>

        </div>
    </section>

    <header>
        <p class="small text-muted small text-uppercase mb-1">Made the hard way</p>
        <h2 class="h5 text-uppercase mb-4">Top trending products</h2>
    </header>
    <div class="row">
    <!-- PRODUCT-->
        <g:each in="${productList}" status="i" var="productInstance">
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                    <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="#"><img src="${fieldValue(bean:  productInstance, field:"prodImageUrl")}" width="200px" height="200px"/></a>
                        <div class="product-overlay">
                            <ul class="mb-0 list-inline">
                                <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                                <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="#">Add to cart</a></li>
                                <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <h6> <a class="reset-anchor" href="#">${fieldValue(bean: productInstance, field: "prodName")}</a></h6>
                    <p class="small text-muted">${fieldValue(bean: productInstance, field: "prodPrice")}</p>
                </div>
            </div>
        </g:each>
    </div>
</section>

</div>
</body>
</html>