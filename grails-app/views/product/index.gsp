<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="templates" />
        <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

    </head>
    <div>

    <div class="snack"></div>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">List Product </h3>
            <div class="panel-options" align="right">
                <div class="col-md-12">
                    <a href="#" data-rel="collapse"><g:link class="create" action="create"><i class="fas fa-plus"></i></g:link></a>
                </div>
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Code</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Status</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>

                </tbody>

            </table>
        </div>

        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
    </section>
    <div class="modal fade" id="btn-remove" data-id="">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    Vous-êtes sur de supprimer ce package?
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn btn-primary" id="delete">Supprimer</button>
                    <button type="button" data-dismiss="modal" class="btn">Annuler</button>
                </div>
            </div>
        </div>
    </div>


    </body>
</html>