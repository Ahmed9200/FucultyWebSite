<%-- 
    Document   : admin-student-applications
    Created on : Jun 20, 2020, 7:15:52 PM
    Author     : 20102
--%>

<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Students"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الطلاب</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="admin-top-navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include  file="admin-sidebar.jsp" %>
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
                                    <%
                                        ArrayList<Students> accepted = new ArrayList<Students>();
                                        ArrayList<Students> waiting = new ArrayList<Students>();
                                        try {
                                            ArrayList<Students> all = DealingWith_DB.getStudents(Helper.con, "select * from students");
                                            for (int i = 0; i < all.size(); i++) {
                                                if (all.get(i).getStatus().equals("pending")) {
                                                    waiting.add(all.get(i));
                                                } else if (all.get(i).getStatus().equals("accepted")) {
                                                    accepted.add(all.get(i));
                                                }
                                            }
                                            for (int i = 0; i < waiting.size(); i++) {
                                    %>

                                    <tr>
                                        <td><%=waiting.get(i).getId()%></td>
                                        <td><%=waiting.get(i).getName_ar()%></td>
                                        <td><%=waiting.get(i).getPhone()%></td>
                                        <td><%=waiting.get(i).getGender()%></td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>

                                    <%}
                                        } catch (Exception e) {
                                        }%>
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
                                    <%
                                        try {
                                            for (int i = 0; i < accepted.size(); i++) {
                                    %>

                                    <tr>
                                        <td><%=accepted.get(i).getId()%></td>
                                        <td><%=accepted.get(i).getName_ar()%></td>
                                        <td><%=accepted.get(i).getPhone()%></td>
                                        <td><%=accepted.get(i).getGender()%></td>
                                        <td>
                                            <select>
                                                <option>قيد المراجعه</option>
                                                <option selected>مقبول</option>
                                            </select>
                                        </td>
                                        <td><i class="fa fa-external-link-square" aria-hidden="true"></i></td>
                                    </tr>
                                    <%}
                                        } catch (Exception e) {
                                        }%>

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
                $("#applications-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
