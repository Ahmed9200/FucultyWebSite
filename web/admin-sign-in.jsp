<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl" >
    <head>
        <title>الدخول كأدمن</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>

        <%@include  file="top-navbar.jsp" %>

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
                                <input type="text" class="form-control" name="username" placeholder="اسم المستخدم">
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

        <%@include  file="footer.jsp" %>

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
        <script>
            $(document).ready(function () {
                $("#signin-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
