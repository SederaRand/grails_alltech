<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="home">
    <title>Search</title>
</head>
<body>
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
                                <g:if test="${Products_list.size > 0}">
                                <li class="breadcrumb-item"><a href="index.html">"${Products_list.size}" Products Found for "${searchText}":</a></li>
                                </g:if>
                                <g:else>
                                    <li class="breadcrumb-item"><a href="index.html">No Products Has Been Found</a></li>
                                </g:else>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5">
            <div class="container p-0">
                <div class="row">
                    <!-- SHOP LISTING-->
                    <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                    <div class="row mb-3 align-items-center">

                        <div class="col-lg-6 mb-2 mb-lg-0">
                            <p class="text-small text-muted mb-0"></p>
                        </div>
                    </div>
                    <div class="row" >
                        <!-- PRODUCT RESULT-->
                        <g:each in="${Products_list}" status="i" var="productInstance">
                        <div class="col-lg-4 col-sm-6">
                            <div class="product text-center">
                                <div class="mb-3 position-relative">
                                    <div class="badge text-white badge-"></div><a class="d-block" href="${createLink(controller: 'home', action: 'showProductDetails', id: productInstance.id)}">
                                    <img class="img-fluid w-100"  width="100px" height="100px" src="${fieldValue(bean: productInstance, field: "prodImageUrl")}" alt="..."></a>
                                    <div class="product-overlay">
                                        <ul class="mb-0 list-inline">
                                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="#">order</a></li>
                                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="${createLink(controller: 'home', action: 'showProductDetails', id: productInstance.id)}" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <h6><g:link controller="product" action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "prodName")}</g:link></h6>
                                <p class="small text-muted">${fieldValue(bean: productInstance, field: "prodPrice")} €</p>
                            </div>
                        </div>
                        </g:each>
                    </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
</html>







