<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الأقسام</title>
        <%@include  file="head.jsp" %>

    </head>
    <body>
        <%@include  file="admin-top-navbar.jsp" %>

        <div class="container-fluid">
            <div class="row">
                <%@include  file="admin-sidebar.jsp" %>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">الأقسام</h1>
                        <!--
                                <div class="btn-toolbar mb-2 mb-md-0">
                                  <div class="btn-group mr-2">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                                  </div>
                                  <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                    This week
                                  </button>
                                </div>
                        -->
                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >

                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-1.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">قسم علوم الحاسب</h5>
                                        <p class="card-text"><small class="text-muted">د. أسامه عبد الرؤوف</small></p>
                                        <p class="card-text">عدد الطلاب: 348.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-2.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">أسم القسم</h5>
                                        <p class="card-text"><small class="text-muted">اسم دكتور رئيس القسم</small></p>
                                        <p class="card-text">عدد الطلاب: 555.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-5.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">أسم القسم</h5>
                                        <p class="card-text"><small class="text-muted">اسم دكتور رئيس القسم</small></p>
                                        <p class="card-text">عدد الطلاب: 555.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-6.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">أسم القسم</h5>
                                        <p class="card-text"><small class="text-muted">اسم دكتور رئيس القسم</small></p>
                                        <p class="card-text">عدد الطلاب: 555.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-6.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">أسم القسم</h5>
                                        <p class="card-text"><small class="text-muted">اسم دكتور رئيس القسم</small></p>
                                        <p class="card-text">عدد الطلاب: 555.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>


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
                $("#dept-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
