<%@page import="Model.projetcModels.Subjects"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.Util.Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الرئيسيه</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="students-top-navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include  file="students-sidebar.jsp" %>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">الرئيسيه</h1>
                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >

                        <%
                            try {
                                if (Helper.currentStudent.getStatus().equals("pending")) {

                        %>

                        <div class="alert alert-primary" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="alert-heading">قيد المراجعه</h4>
                            <p>طلب الألتحاق الذي قمت بتقديمه مازال قيد المراجعه، يرجي التحقق مرة أخرى لاحقًا.</p>
                            <hr>
                            <p class="mb-0">إذا كانت هناك مشكله يرجي طلب المساعده من قسم الاي تي.</p>
                        </div>


                        <%} else if (Helper.currentStudent.getStatus().equals("accepted")) {

                            String[] subjects = DealingWith_DB.getCoulmnData(Helper.con, "students_subjects", "subject_id", " where student_id = " + Helper.currentStudent.getId());
                        %>

                        <h2>الأخبار</h2>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <img class="card-img-top" src="images/course-5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">عنوان الخبر 1 </h5>
                                        <p class="card-text"><small class="text-muted">عام -  د. حمدي موسي</small></p>
                                        <p class="card-text card-text-eclipsed-3">تم الاعلان عن مواعيد بدا العملي للمواد للفرقه الثالثه ليبدا من تاريخ كذا حتي تاريخ كذا برده وينقسم الجدول كالاتي ماده الاولانيه تاريخها كذا والماده التانيه تاريخها كذا والتالته تاريخها كذا .</p>
                                        <a href="news.jsp?id=0" class="card-link"><strong>المزيد</strong></a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        بتاريخ <small class="text-muted">17/7/2020</small> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <img class="card-img-top" src="images/course-5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">عنوان الخبر 2 </h5>
                                        <p class="card-text"><small class="text-muted">عام -  د. حمدي موسي</small></p>
                                        <p class="card-text card-text-eclipsed-3">تم الاعلان عن مواعيد بدا العملي للمواد للفرقه الثالثه ليبدا من تاريخ كذا حتي تاريخ كذا برده وينقسم الجدول كالاتي ماده الاولانيه تاريخها كذا والماده التانيه تاريخها كذا والتالته تاريخها كذا .</p>
                                        <a href="news.jsp?id=0" class="card-link"><strong>المزيد</strong></a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        بتاريخ <small class="text-muted">17/7/2020</small> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <img class="card-img-top" src="images/course-5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">عنوان الخبر 3 </h5>
                                        <p class="card-text"><small class="text-muted">عام -  د. حمدي موسي</small></p>
                                        <p class="card-text card-text-eclipsed-3">تم الاعلان عن مواعيد بدا العملي للمواد للفرقه الثالثه ليبدا من تاريخ كذا حتي تاريخ كذا برده وينقسم الجدول كالاتي ماده الاولانيه تاريخها كذا والماده التانيه تاريخها كذا والتالته تاريخها كذا .</p>
                                        <a href="news.jsp?id=0" class="card-link"><strong>المزيد</strong></a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        بتاريخ <small class="text-muted">17/7/2020</small> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <img class="card-img-top" src="images/course-5.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">عنوان الخبر 4 </h5>
                                        <p class="card-text"><small class="text-muted">عام -  د. حمدي موسي</small></p>
                                        <p class="card-text card-text-eclipsed-3">تم الاعلان عن مواعيد بدا العملي للمواد للفرقه الثالثه ليبدا من تاريخ كذا حتي تاريخ كذا برده وينقسم الجدول كالاتي ماده الاولانيه تاريخها كذا والماده التانيه تاريخها كذا والتالته تاريخها كذا .</p>
                                        <a href="news.jsp?id=0" class="card-link"><strong>المزيد</strong></a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        بتاريخ <small class="text-muted">17/7/2020</small> 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%} else if (Helper.currentStudent.getStatus().equals("refused")) {%>



                        <%}
                            } catch (Exception e) {
                            }
                        %>

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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script>
            $(document).ready(function () {
                $("#panel-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
