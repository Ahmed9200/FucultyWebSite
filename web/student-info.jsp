<%@page import="Model.Util.Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>Fox University - Free Bootstrap 4 Template by Colorlib</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="students-top-navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include  file="students-sidebar.jsp" %>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">معلوماتك</h1>
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

                        <h2>البيانات الرئيسيه</h2>

                        <div class="table-responsive">
                            <table class="table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>الأسم بالعربيه: </strong></td>
                                        <td><%=Helper.currentStudent.getName_ar()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>الأسم بالأنجليزيه: </strong></td>
                                        <td><%=Helper.currentStudent.getName_en()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>العمر: </strong></td>
                                        <td><%=Helper.currentStudent.getAge()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>النوع: </strong></td>
                                        <td>ذكر</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> 

                        <h2>بيانات محل الإقامه</h2>

                        <div class="table-responsive">
                            <table class="table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>العنوان: </strong></td>
                                        <td><%=Helper.currentStudent.getAddress()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>المدينه: </strong></td>
                                        <td><%=Helper.currentStudent.getCity()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>المحافظه: </strong></td>
                                        <td><%=Helper.currentStudent.getGovernorate()%></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <h2>بيانات التواصل </h2>

                        <div class="table-responsive">
                            <table class="table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>الموبال: </strong></td>
                                        <td><%=Helper.currentStudent.getPhone()%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>الإيميل: </strong></td>
                                        <td><%=Helper.currentStudent.getMail()%></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <h2>البيانات الدراسيه</h2>

                        <div class="table-responsive">
                            <table class="table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>السنه الدراسيه:  </strong></td>
                                        <td><%=Helper.currentStudent.getTotal_yearsNo() == 1 ? "الفرقه التانيه " : "الفرقه الاولى"%></td>
                                    </tr>
                                    <tr>
                                        <td><strong>القسم: </strong></td>
                                        <td><%=Helper.currentStudent.getDept().getName_ar()%></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <h2>المزيد</h2>

                        <div class="table-responsive">
                            <table class="table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>شهادة الميلاد المرفقه: </strong></td>
                                        <td>تحميل</td>
                                    </tr>
                                    <tr>
                                        <td><strong>صورة البطاقه المرفقه: </strong></td>
                                        <td>تحميل</td>
                                    </tr>
                                    <tr>
                                        <td><strong>شهادة الثانويه العامه: </strong></td>
                                        <td>تحميل</td>
                                    </tr>
                                    <tr>
                                        <td><strong>بطاقة الترشح: </strong></td>
                                        <td>تحميل</td>
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
        <script>
            $(document).ready(function () {
                $("#info-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
