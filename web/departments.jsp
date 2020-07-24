<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Departments"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الأقسام</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>

        <%@include  file="top-navbar.jsp" %>

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">الأقسام</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">الرئيسيه <i class="ion-ios-arrow-back"></i></a></span> <span>الأقسام <i class="ion-ios-arrow-back"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container-fluid px-4">

                <div class="row">



                    <%
                        try {
                            ArrayList<Departments> depts = DealingWith_DB.getDepts(Helper.con, "select * from departments");
                            for (int j = 0; j < depts.size(); j++) {
                    %>

                    <div class="col-md-3 course ftco-animate">
                        <div class="img" style="background-image: url(data:image/png;base64,<%=depts.get(j).getBase64_image()%>);"></div>
                        <div class="text pt-4">
                            <p class="meta d-flex">
                                <span><i class="icon-user mr-2"></i>د./<%=depts.get(j).getDoctor().getName_ar()%></span>
                            </p>
                            <h3><a href="#"><%=depts.get(j).getName_ar()%></a></h3>
                            <p><a href="#" class="btn btn-primary">معلومات اكثر</a></p>
                        </div>
                    </div>

                    <%
                            }
                        } catch (Exception exx) {
                        }
                    %>

                </div>

            </div>
        </section>

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
                $("#dept-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
