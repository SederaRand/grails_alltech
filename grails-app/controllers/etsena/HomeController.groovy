package etsena

class HomeController {

    ProductService productService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond productService.list(params),
                model   :[productCount: productService.count()],
                view    : "index"
    }

    def show(Long id) {
        respond productService.get(id)
    }
}
