package etsena

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/admin"(controller:'login', action:'auth')
        "/home/index"(view: '/home/index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
