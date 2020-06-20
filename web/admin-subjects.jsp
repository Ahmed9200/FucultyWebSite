<%-- 
    Document   : admin-subjects
    Created on : Jun 20, 2020, 7:16:24 PM
    Author     : 20102
--%>

<%@page import="Model.projetcModels.Subjects"%>
<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Departments"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>Fox University - Free Bootstrap 4 Template by Colorlib</title>
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
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Admin panel</a>
            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!--  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">-->
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="#">الخروج</a>
                </li>
            </ul>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style="">
                    <div class="sidebar-sticky pt-3">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="admin-panel.html">
                                    <i class="fa fa-home" aria-hidden="true"></i> الرئيسيه 
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin-student-applications.html">
                                    <i class="fa fa-table" aria-hidden="true"></i> المتقدمين
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="admin-subjects.html">
                                    <i class="fa fa-book" aria-hidden="true"></i> المواد
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin-departments.html">
                                    <i class="fa fa-briefcase" aria-hidden="true"></i> الأقسام
                                </a>
                            </li>
                        </ul>

                        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                            <span>المزيد</span>
                            <!--
                                      <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                                      </a>
                            -->
                        </h6>
                        <ul class="nav flex-column mb-2">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                    المزيد من الخيارات
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">المواد</h1>

                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >

                        <%
                            try {
                                ArrayList<Departments> depts = DealingWith_DB.getDepts(Helper.con, "select * from departments");
                                for (int i = 0; i < depts.size(); i++) {
                        %>


                        <h2><%=depts.get(i).getName_ar()%></h2>

                        <%for (int j = 0; j < depts.get(i).getSubjects().size(); j++) {

                        %>

                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="images/course-1.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"><%=depts.get(i).getSubjects().get(j).getName_ar()%></h5>
                                        <p class="card-text"><small class="text-muted"><%=depts.get(i).getSubjects().get(j).getYear_no()%></small></p>
                                        <p class="card-text">الساعات المعتمده: <%=depts.get(i).getSubjects().get(j).getHours_no()%> ساعات.</p>
                                        <p class="card-text"><a href="#">
                                                <small class="text-muted"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> تعديل</small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%}
                                }
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

    </body>
</html>
