<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Staff"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>Fox University - Free Bootstrap 4 Template by Colorlib</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="top-navbar.jsp" %>

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">هيئة التدريس</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">الرئيسيه <i class="ion-ios-arrow-back"></i></a></span> <span>هيئة التدريس <i class="ion-ios-arrow-back"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="container-fluid px-4">

                <input class="form-control mb-4" id="staff-Search" type="text" placeholder="البحث عن عضو في هيئة التدريس">


                <div class="row" id="staff">

                    <%
                        try {

                            ArrayList<Staff> staffs = DealingWith_DB.getStaff(Helper.con, "select * from staff");
                            for (int i = 0; i < staffs.size(); i++) {
                    %>

                    <div class="col-md-6 col-lg-3">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(data:image/png;base64,<%=staffs.get(i).getBase64_img()%>);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3><%=staffs.get(i).getName_ar()%></h3>
                                <span class="position mb-2"><%=staffs.get(i).getEdu_status()%></span>
                                <div class="faded">
                                    <p>التخصص العام: <%=DealingWith_DB.getDepts(Helper.con, "select * from departments where id=" + staffs.get(i).getDept_id()).get(0).getName_ar()%></p>
                                    <p><%=staffs.get(i).getAbout()%></p>
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-envelope"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%
                            }
                        } catch (Exception e) {
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
                $("#staff-link").addClass("active");
                console.log("output");
                $("#staff-Search").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#staff h3").filter(function () {
                        $(this).parent().parent().parent().toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });


        </script>
    </body>
</html>
