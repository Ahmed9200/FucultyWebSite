<%-- 
    Document   : admin-student-applications
    Created on : Jun 20, 2020, 7:15:52 PM
    Author     : 20102
--%>

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
                                <a class="nav-link active" href="admin-student-applications.html">
                                    <i class="fa fa-table" aria-hidden="true"></i> المتقدمين
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin-subjects.html">
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
                            <!--
                                      <li class="nav-item">
                                        <a class="nav-link" href="#">
                                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                          Last quarter
                                        </a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link" href="#">
                                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                          Social engagement
                                        </a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link" href="#">
                                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                          Year-end sale
                                        </a>
                                      </li>
                            -->
                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">طلبات الألتحاق</h1>
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

                        <h2>قيد المراجعه</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>الأسم</th>
                                        <th>رقم الموبايل</th>
                                        <th>النوع</th>
                                        <th>ألحالة</th>
                                        <th>المزيد</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1,001</td>
                                        <td>إسلام أحمد محمد سمير سلامه</td>
                                        <td>01099908132</td>
                                        <td>ذكر</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,002</td>
                                        <td>amet</td>
                                        <td>consectetur</td>
                                        <td>adipiscing</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>Integer</td>
                                        <td>nec</td>
                                        <td>odio</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>libero</td>
                                        <td>Sed</td>
                                        <td>cursus</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,004</td>
                                        <td>dapibus</td>
                                        <td>diam</td>
                                        <td>Sed</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,005</td>
                                        <td>Nulla</td>
                                        <td>quis</td>
                                        <td>sem</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>        

                        <h2>مقبولين</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>الأسم</th>
                                        <th>رقم الموبايل</th>
                                        <th>النوع</th>
                                        <th>الحاله</th>
                                        <th>المزيد</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1,001</td>
                                        <td>إسلام أحمد محمد سمير سلامه</td>
                                        <td>01099908132</td>
                                        <td>ذكر</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,002</td>
                                        <td>amet</td>
                                        <td>consectetur</td>
                                        <td>adipiscing</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>Integer</td>
                                        <td>nec</td>
                                        <td>odio</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>libero</td>
                                        <td>Sed</td>
                                        <td>cursus</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,004</td>
                                        <td>dapibus</td>
                                        <td>diam</td>
                                        <td>Sed</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1,005</td>
                                        <td>Nulla</td>
                                        <td>quis</td>
                                        <td>sem</td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                </tbody>
                            </table>
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

    </body>
</html>
