package etsena

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import etsena.Categories

import static org.springframework.http.HttpStatus.*


class ProductController {

    ProductService productService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond productService.list(params), model: [productCount: productService.count()]

    }

    @Secured(['ROLE_ADMIN'])
    def browserLister() {
// Applies filters and sorting to return a list of desired employees

        println "Product browserLister params $params"
        println()
        def jqdtParams = [:]
        params.each { key, value ->
            def keyFields = key.replace(']', '').split(/\[/)
            def table = jqdtParams
            for (int f = 0; f < keyFields.size() - 1; f++) {
                def keyField = keyFields[f]
                if (!table.containsKey(keyField))
                    table[keyField] = [:]
                table = table[keyField]
            }
            table[keyFields[-1]] = value
        }
        println "Product dataTableParams $jqdtParams"
        println()
        def columnMap = jqdtParams.columns.collectEntries { k, v ->
            def whereTerm = null
            switch (v.data) {
                case 'prodName':
                    if (v.search.value ==~ /\d+(,\d+)*/)
                        whereTerm = v.search.value.split(',').collect { it as String }
                    break
                case 'prodCode':
                case 'categoryName':
                case 'prodDesc':
                case 'prodImageUrl':
                case 'prodStatus':
                case 'prodQuantity':
                case 'prodPrice':
                default:
                    break
            }
            [(v.data): [where: whereTerm]]
        }
        println "Product columnMap $columnMap"
        println()
        def allColumnList = columnMap.keySet() as List
        println "Product allColumnList $allColumnList"
        def orderList = jqdtParams.order.collect { k, v -> [allColumnList[v.column as Integer], v.dir] }
        println "Product orderList $orderList"
        def filterer = {
            createAlias 'categoryName', 'c'
            if (columnMap.prodName.where) ilike 'prodName', columnMap.prodName.where
            if (columnMap.prodCode.where) ilike 'prodCode', columnMap.prodCode.where
            if (columnMap.categoryName.where) ilike 'c.category', columnMap.categoryName.where
            if (columnMap.prodDesc.where) ilike 'prodDesc', columnMap.prodDesc.where
            if (columnMap.prodImageUrl.where) ilike 'prodImageUrl', columnMap.prodImageUrl.where
            if (columnMap.prodStatus.where) ilike 'prodStatus', columnMap.prodStatus.where
            if (columnMap.prodQuantity.where) ilike 'prodQuantity', columnMap.prodQuantity.where
            if (columnMap.prodPrice.where) ilike 'prodPrice', columnMap.prodPrice.where

        }
        def recordsTotal = Product.count()
        println "product recordsTotal $recordsTotal"
        def c = Product.createCriteria()
        def recordsFiltered = c.count {
            filterer.delegate = delegate
            filterer()
        }
        println "product recordsFiltered $recordsFiltered"
        def orderer = Product.withCriteria {
            filterer.delegate = delegate
            filterer()
            orderList.each { oi ->
                switch (oi[0]) {
                    case 'prodName':    order 'prodName',    oi[1]; break
                    case 'prodCode': order 'prodCode', oi[1]; break
                    case 'categoryName':   order 'c.category',     oi[1]; break
                    case 'prodDesc':     order 'prodDesc',     oi[1]; break
                    case 'prodImageUrl':  order 'prodImageUrl',  oi[1]; break
                    case 'prodStatus':      order 'prodStatus',      oi[1]; break
                    case 'prodQuantity':     order 'prodQuantity',     oi[1]; break
                    case 'prodPrice':     order 'prodPrice',     oi[1]; break
                }
            }
            maxResults (jqdtParams.length as Integer)
            firstResult (jqdtParams.start as Integer)
        }

        def product = orderer.collect { product ->
            ['prodName': "<span title=\"Click for show product\"><a href='${createLink(controller: 'product', action: 'edit', id: product.id)}'>${product.prodName}</a></span>",
             'prodCode': product.prodCode,
             'categoryName': product.categoryName?.category,
             'prodDesc': product.prodDesc,
             'prodImageUrl': "<img src='${product.prodImageUrl}' widht='100px' height='100px'/>",
             'prodStatus': product.prodStatus,
             'prodQuantity': product.prodQuantity,
             'prodPrice': product.prodPrice,
              'id': product.id
              ]
        }

        def result = [draw: jqdtParams.draw, recordsTotal: recordsTotal, recordsFiltered: recordsFiltered, data: product]
        render(result as JSON)
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def show(Long id) {
        respond productService.get(id)

    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Product(params)
    }

    @Secured(['ROLE_ADMIN'])
    def save(Product product) {
        if (product == null) {
            notFound()
            return
        }

        try {
            productService.save(product)
        } catch (ValidationException e) {
            respond product.errors, view: 'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), product.id])
                redirect product
            }
            '*' { respond product, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Long id) {
        respond productService.get(id)
    }

    @Secured(['ROLE_ADMIN'])
    def update(Product product) {
        if (product == null) {
            notFound()
            return
        }

        try {
            productService.save(product)
        } catch (ValidationException e) {
            respond product.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), product.id])
                redirect product
            }
            '*' { respond product, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        productService.delete(id)
        Map results = [
                status: 200
        ]
        render results as JSON
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def status (){
        if(productService.get().prodStatus == true)
        {
            
        }
    }


}

