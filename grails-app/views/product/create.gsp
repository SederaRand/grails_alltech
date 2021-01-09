<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="templates" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
                        <li class="breadcrumb-item active">Adding</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- left column -->
    <div class="col-md-12">
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Add Product</h3>
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
            <g:form resource="${this.product}" method="POST" >
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Name Product</label>
                        <div class="col-sm-10">
                            <g:textField name="prodName" value="${params?.prodName}" type="text" class="form-control" placeholder="Name" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Code Product</label>
                        <div class="col-sm-10">
                            <g:textField name="prodCode" value="${params?.prodCode}" type="text" class="form-control" placeholder="Code" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Categories</label>
                        <div class="col-sm-10">
                            <g:select name="categoryName" value="${params?.categoryName}" optionKey="id" type="select" class="form-control" from="${etsena.Categories.list()}" noSelection="['':'-Choose Categorie-']" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                            <g:textArea name="prodDesc" class="form-control" value="${params?.prodDesc}" type="text" placeholder="Description"  />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Lien Images</label>
                        <div class="col-sm-10">
                            <g:textField name="prodImageUrl" class="form-control" value="${params?.prodImageUrl}" type="text" placeholder="Image"/>
                       </div>
                    </div>
                    <div class="form-group row">
                         <label class="col-sm-2 control-label">Status(Publish or Not yet publish</label>
                         <div class="col-sm-10">
                             <g:checkBox name="prodStatus" value="${params?.prodStatus}" />
                         </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Stock</label>
                        <div class="col-sm-10">
                            <g:textField name="prodQuantity" class="form-control" value="${params?.prodQuantity}" type="number" placeholder="Stck"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label">Prix</label>
                        <div class="col-sm-10">
                            <g:textField name="prodPrice" class="form-control" value="${params?.prodPrice}" type="text" placeholder="Prix"/>
                        </div>
                    </div>
                </div>

                <!-- /.card-body -->
                <div class="card-footer">
                    <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    <button type="submit" class="btn btn-default float-right">Cancel</button>
                </div>
                <!-- /.card-footer -->
            </g:form>
        </div>
        <!-- /.card -->

    </div>
    <!--/.col (left) -->
    </body>
</html>
