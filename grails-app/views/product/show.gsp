<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="templates" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Show</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#"><g:link class="index" action="index">List</g:link></a></li>
                        <li class="breadcrumb-item active">Details Product</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card card-solid">
        <div class="card-header">
            <h3 class="card-title"></h3>
            <div class="panel-options" align="right">
                <div class="col-md-12">
                    <a href="#" data-rel="collapse"><g:link class="edit" action="edit" resource="${this.product}"><i class="fas fa-edit"></i></g:link></a>
                </div>
            </div>
        </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-sm-6">
                        <h3 class="d-inline-block d-sm-none"><f:display bean="product" property="ProdName" /></h3>
                        <div class="col-12">
                            <img src="${fieldValue(bean:  product, field:"prodImageUrl")}" class="product-image" alt="Product Image">
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <h3 class="my-3"><f:display bean="product" property="ProdName" /></h3>
                        <p><f:display bean="product" property="categoryName"/></p>

                        <hr>
                        <div class="bg-gray py-2 px-3 mt-4">
                            <h2 class="mb-0">
                                <f:display bean="product" property="ProdPrice" /> €
                            </h2>
                            <h4 class="mt-0">
                                <small>Quantity Dispo: <f:display bean="product" property="prodQuantity" /> </small>
                                <small>Status : <f:display bean="product" property="ProdStatus" /> </small>
                            </h4>
                        </div>

                    </div>
                </div>
                <div class="row mt-4">
                    <nav class="w-100">
                        <div class="nav nav-tabs" id="product-tab" role="tablist">
                            <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#product-desc" role="tab" aria-controls="product-desc" aria-selected="true">Description</a>
                        </div>
                    </nav>
                    <div class="tab-content p-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="product-desc" role="tabpanel" aria-labelledby="product-desc-tab"><f:display bean="product" property="prodDesc"/></div>
                  </div>
                </div>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->

    </section>
    <!-- /.content -->
    </body>
</html>
