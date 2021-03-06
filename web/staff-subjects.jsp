<%@page import="Model.projetcModels.Subjects"%>
<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Departments"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@page import="Model.projetcModels.Subjects"%>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>المواد</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="admin-top-navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include  file="admin-sidebar.jsp" %>

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

                        <div class="row">
                            
                            <%for (int j = 0; j < depts.get(i).getSubjects().size(); j++) {

                            %>

                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <div class="card">
                                    <img src="data:image/png;base64, <%=depts.get(i).getSubjects().get(j).getBase64_img()%>" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"><%=depts.get(i).getSubjects().get(j).getName_ar()%></h5>
                                        <p class="card-text">الفرقه: <small class="text-muted"><%=depts.get(i).getSubjects().get(j).getYear_no()%></small></p>
                                        <p class="card-text"><a href="staff-view-subject.jsp?id=<%=depts.get(i).getSubjects().get(j).getId()%>">
                                                <small class=""><i class="fa fa-folder-open"></i>  دخول </small>
                                            </a></p>
                                    </div>
                                </div>
                            </div>

                            <%}%>
                        </div>
                        <hr>

                        <%
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
        <script>
            $(document).ready(function () {
                $("#staff-subjects-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
