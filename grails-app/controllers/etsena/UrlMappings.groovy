package etsena

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        // BackOffice Mapping
        "/admin"(controller:'login', action:'auth')

        //FrontOffice Mapping
        "/"(controller: 'home', view: '/home/index')

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
