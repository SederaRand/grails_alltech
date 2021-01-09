package etsena

class Product {

    String prodCode
    String prodName
    Categories categoryName
    String prodDesc
    String prodImageUrl
    Boolean prodStatus
    Integer prodQuantity
    String prodPrice
    static hasOne = [Categories]


    static constraints = {
        prodCode nullable: false, blank: false
        prodName nullable: false, blank: false
        categoryName nullable: false, blank:false
        prodDesc nullable: false, blank: false
        prodImageUrl nullable: true
        prodStatus nullable:false, blank:false
        prodQuantity nullable: false, blank:false
        prodPrice nullable: false, blank: false
    }

    String toString() {
        prodName
    }
}
