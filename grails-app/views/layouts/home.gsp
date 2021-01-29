<%--
  Created by IntelliJ IDEA.
  User: Dev
  Date: 08/01/2021
  Time: 17:20
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ETSENA</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <asset:link rel="icon" href="AdminLTELogo.png" type="image/x-ico"/>
    <!-- Bootstrap CSS-->
    <asset:stylesheet rel="stylesheet" src="bootstrap.min.css"/>
    <!-- Lightbox-->
    <asset:stylesheet rel="stylesheet" src="home/lightbox.min.css"/>
    <!-- Range slider-->
    <asset:stylesheet rel="stylesheet" src="home/nouislider.min.css"/>
    <!-- Bootstrap select-->
    <asset:stylesheet rel="stylesheet" src="home/bootstrap-select.min.css"/>
    <!-- Owl Carousel-->
    <asset:stylesheet rel="stylesheet" src="home/owl.carousel.min.css"/>
    <asset:stylesheet rel="stylesheet" src="home/owl.theme.default.css"/>
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <asset:stylesheet rel="stylesheet" src="home/style.default.css" id="theme-stylesheet"/>
    <!-- Custom stylesheet - for your changes-->
    <asset:stylesheet rel="stylesheet" href="home/custom.css"/>
</head>

<body>
<div class="page-holder">
    <header class="header bg-white">
        <div class="container px-0 px-lg-3">
            <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span class="font-weight-bold text-uppercase text-dark">Boutique</span></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <!-- Link--><a class="nav-link active" href="${createLink(controller: 'home', action: 'index')}">Home</a>
                        </li>
                        <li class="nav-item">
                            <!-- Link--><a class="nav-link" href="${createLink(controller: 'home', action: 'shop')}">Shop</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
<g:layoutBody/>

<footer class="bg-dark text-white">
    <div class="container py-4">
        <div class="row py-5">
            <div class="col-md-4 mb-3 mb-md-0">
                <h6 class="text-uppercase mb-3">Customer services</h6>
                <ul class="list-unstyled mb-0">
                    <li><a class="footer-link" href="#">Help &amp; Contact Us</a></li>
                    <li><a class="footer-link" href="#">Returns &amp; Refunds</a></li>
                    <li><a class="footer-link" href="#">Online Stores</a></li>
                    <li><a class="footer-link" href="#">Terms &amp; Conditions</a></li>
                </ul>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
                <h6 class="text-uppercase mb-3">Company</h6>
                <ul class="list-unstyled mb-0">
                    <li><a class="footer-link" href="#">What We Do</a></li>
                    <li><a class="footer-link" href="#">Available Services</a></li>
                    <li><a class="footer-link" href="#">Latest Posts</a></li>
                    <li><a class="footer-link" href="#">FAQs</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h6 class="text-uppercase mb-3">Social media</h6>
                <ul class="list-unstyled mb-0">
                    <li><a class="footer-link" href="#">Twitter</a></li>
                    <li><a class="footer-link" href="#">Instagram</a></li>
                    <li><a class="footer-link" href="#">Tumblr</a></li>
                    <li><a class="footer-link" href="#">Pinterest</a></li>
                </ul>
            </div>
        </div>
        <div class="border-top pt-4" style="border-color: #1d1d1d !important">
            <div class="row">
                <div class="col-lg-6">
                    <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
                </div>
                <div class="col-lg-6 text-lg-right">
                    <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- JavaScript files-->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="bootstrap.bundle.min.js"/>
<asset:javascript src="home/lightbox.min.js"/>
<asset:javascript src="home/nouislider.min.js"/>
<asset:javascript src="home/bootstrap-select.min.js"/>
<asset:javascript src="home/owl.carousel.min.js"/>
<asset:javascript src="home/owl.carousel2.thumbs.min.js"/>
<asset:javascript src="home/front.js"/>
<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {

        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to BootstrapTemple website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');

</script>

<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</div>
</body>

</html>