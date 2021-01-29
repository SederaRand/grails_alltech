package etsena

class HomeController {

    ProductService productService

    def index(Integer max) {
        params.max = Math.min(max ?: 4, 100)
        respond productService.list(params),
                model   :[productCount: productService.count()],
                view    : "index"

    }


    def shop(Integer max){
        params.max = Math.min(max ?: 2, 100)
        respond productService.list(params),
                model   :[productCount: productService.count()],
                view    : "shop"

    }

    def showProductDetails(Long id) {
        respond productService.get(id)

    }

    def results(String searchText) {
            def Products_list = Product.where {
                prodName =~ "%${searchText}%"}.list()
            return [Products_list: Products_list, searchText:searchText]

    }



}
