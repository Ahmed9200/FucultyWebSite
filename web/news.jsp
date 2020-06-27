<%@page import="Model.projetcModels.Subjects"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.Util.Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الأخبار</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="students-top-navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include  file="students-sidebar.jsp" %>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 border-bottom" style="margin-bottom: 0;">
                        <h1 class="h2">عنوان الخبر 1 </h1>
                    </div>

                    <section class="ftco-section row" style="padding: 5px 0px;" >

                        <p class="col-12"><small class="text-muted">عام -  د. حمدي موسي</small></p>
                        <img class="col-md-6" src="images/course-5.jpg"/>
                        <p class="col-12 font-weight-bold" style="margin-top: 15px">
                            تم الاعلان عن مواعيد بدا العملي للمواد للفرقه الثالثه ليبدا من تاريخ كذا حتي تاريخ كذا برده وينقسم الجدول كالاتي
                            <br>
                            ماده الاولانيه تاريخها كذا 
                            <br>
                            الماده التانيه تاريخها كذا 
                            <br>
                            التالته تاريخها كذا
                            <br>
                            الرابعه تاريخها كذا
                        </p>

                    </section>
                </main>
            </div>
        </div>


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
        <script src="js/main.js"></script>
    </body>
</html>
