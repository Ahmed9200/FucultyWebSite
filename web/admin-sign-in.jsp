<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl" >
    <head>
        <title>Admin Sign In</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="index.html">المنوفيه. <span>جامعة</span></a>
                    </div>

                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container d-flex align-items-center px-4">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> القائمه
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link pl-0">الرئيسيه</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">عن الكليه</a></li>
                        <li class="nav-item"><a href="courses.html" class="nav-link">الاقسام</a></li>
                        <li class="nav-item"><a href="teacher.html" class="nav-link">هيئة التدريس</a></li>
                        <li class="nav-item"><a href="register.html" class="nav-link">التسجيل</a></li>
                    </ul>
                    <ul class="navbar-nav order-lg-last">
                        <li class="nav-item active"><a href="#" class="nav-link">الدخول</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">الدخول كادمن</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">الرئيسيه <i class="ion-ios-arrow-back"></i></a></span> <span> الدخول كادمن <i class="ion-ios-arrow-back"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <br>

        <section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
            <div class="container">
                <div class="row d-flex align-items-stretch no-gutters">

                    <%
                        try {
                            if ((boolean) (request.getAttribute("checked")) == false) {
                    %>
                    <div class="col-md-3 d-flex align-items-stretch"></div>
                    <div class="alert alert-danger col-md-6 text-center" role="alert">
                        البيانات غير صحيحه
                    </div>
                    <div class="col-md-3 d-flex align-items-stretch"></div>
                    <%}
                        } catch (Exception e) {
                        }
                    %>


                    <div class="col-md-3 d-flex align-items-stretch"></div>
                    <div class="col-md-6 p-4 p-md-5  bg-light">
                        <form action="AdminSignIn" method="POST">
                            <div class="form-group">
                                <input type="number" class="form-control" name="username" placeholder="اسم المستخدم">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="الباسوورد">
                            </div>
                            <div class="form-group">
                                <input type="submit" value="الدخول" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <br>

        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-8 col-lg-4">
                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2">قم بزيارتنا</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">مجمع الكليات النظريه، ش جمال عبد الناصر، شبين الكوم، المنوفيه</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">048-2316189</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">Itunit@ci.menofia.edu.eg</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 col-lg-4">
                        <div class="ftco-footer-widget mb-5 ml-md-4">
                            <h2 class="ftco-heading-2">الروابط</h2>
                            <ul class="list-unstyled">
                                <li><a href="#"><span class="ion-ios-arrow-round-back mr-2"></span>الرئيسيه</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-back mr-2"></span>عن الكليه</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-back mr-2"></span>الاقسام</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-back mr-2"></span>هيئه التدريس</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-back mr-2"></span>التسجيل</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-8 col-lg-4">

                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2 mb-0">تواصل معنا</h2>
                            <ul class="ftco-footer-social list-unstyled float-md-right float-right mt-3">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>

                </div>

            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

    </body>
</html>