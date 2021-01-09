<%@ page import="etsena.Categories" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="templates" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#"><g:link class="index" action="index">List</g:link></a></li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- left column -->
    <div class="col-md-12">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Edit Product</h3>
            </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.product}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.product}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
        <!-- form start -->
            <g:form resource="${this.product}" method="PUT" >
                <div class="card-body">
                    <g:hiddenField name="version" value="${this.product?.version}" />
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Name Product</label>
                        <div class="col-sm-10">
                            <g:textField name="prodName" value="${fieldValue(bean: product, field: "prodName")}" type="text" class="form-control" placeholder="${params?.prodName}"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Code Product</label>
                        <div class="col-sm-10">
                            <g:textField name="prodCode" value="${fieldValue(bean: product, field: "prodCode")}" type="text" class="form-control" placeholder="${params?.prodCode}"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Categories</label>
                        <div class="col-sm-10">
                            <g:select name="categoryName" optionKey="category" type="select" class="form-control" from="${etsena.Categories.list()}" value="${fieldValue(bean: product, field: "categoryName")}" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                            <g:textArea name="prodDesc" class="form-control" value="${fieldValue(bean: product, field: "prodDesc")}" type="text" placeholder="Description"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Lien Images</label>
                        <div class="col-sm-10">
                            <g:textArea name="prodDesc" class="form-control" value="${fieldValue(bean: product, field: "prodImageUrl")}" type="text" placeholder="Image"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Status(Publish or Not yet publish</label>
                        <div class="col-sm-10">
                            <g:checkBox name="prodStatus" value="${fieldValue(bean: product, field: "prodStatus")}" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Stock</label>
                        <div class="col-sm-10">
                            <g:textArea name="prodQuantity" class="form-control" value="${fieldValue(bean: product, field: "prodQuantity")}" type="number" placeholder="Stock"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Prix</label>
                        <div class="col-sm-10">
                            <g:textArea name="prodPrice" class="form-control" value="${fieldValue(bean: product, field: "prodPrice")}" type="text" placeholder="Price"  />
                        </div>
                    </div>
                </div>

                <!-- /.card-body -->
                <div class="card-footer">
                    <g:submitButton name="save" class="btn btn-warning" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                 </div>
                <!-- /.card-footer -->
            </g:form>
        </div>
        <!-- /.card -->

    </div>
    <!--/.col (left) -->
    </body>
    </body>
</html>
