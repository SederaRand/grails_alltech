package etsena

class Categories {

    String category
    static hasMany = [Product]

    static constraints = {

    }

    String toString() {
        category
    }
}
