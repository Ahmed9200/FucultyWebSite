<%@page import="Model.projetcModels.Staff"%>
<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="java.util.ArrayList"%>
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
                        <h1 class="h2">إضافة قسم جديد</h1>
                    </div>

                    <%
                        ArrayList<Staff> currentStaff = null;
                        try {
                            currentStaff = DealingWith_DB.getStaff(Helper.con, "select * from staff");
                        } catch (Exception e) {
                            e.printStackTrace();
                            currentStaff = new ArrayList<Staff>();
                        }
                    %>

                    <section class="ftco-section" style="padding: 5px 0px;" >
                        <div class="row">

                            <div class="col-3"></div>
                            <div class="col-6 p-4 p-md-5 bg-light">
                                <form action="AddDepartment" method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name_ar" placeholder="الأسم بالعربيه">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name_en" placeholder="الأسم بالإنجليزيه">
                                    </div>
                                    <div class="form-group">
                                        <textarea type="text" class="form-control" name="description" placeholder="الوصف"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="price" placeholder="السعر">
                                    </div>
                                    <label>صورة القسم</label>
                                    <div class="form-group">
                                        <input type="file" class="form-control" name="img" placeholder="صوره">
                                    </div>
                                    <label>رئيس القسم</label>
                                    <div class="form-group">
                                        <select name="doctor_name">
                                            <%for (int i = 0; i < currentStaff.size(); i++) {%>
                                            <option value="<%=currentStaff.get(i).getId()%>"><%=currentStaff.get(i).getName_ar()%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="إضافه" class="btn btn-primary py-3 px-5">
                                    </div>
                                </form>
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

    </body>
</html>
