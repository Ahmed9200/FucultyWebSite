<%@page import="Model.projetcModels.Student_subjects"%>
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
                        <h1>اسم الماده</h1>
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
                            Student_subjects s = DealingWith_DB.getStudent_subjetcs(Helper.con, "select * from students_subjects where student_id="
                                    + Helper.currentStudent.getId() + " and subject_id=" + request.getParameter("sub_id")).get(0);
                            Subjects sub = DealingWith_DB.getSubjetcs(Helper.con, "select * from subjects where id="
                                    + request.getParameter("sub_id")).get(0);
                        %>

                        <h2>الحاله</h2>
                        <p><%=s.getStatus()%></p>

                        <hr>

                        <h2>تفاصيل الحاله</h2>
                        <p>حصول الطالب علي 20 درجه في الميد تيرم</p>

                        <hr>

                        <h2>عدد الساعات</h2>
                        <p><%=s.getHour_no()%> من  <%=sub.getHours_no()%></p>
                        <% 
                            String hourBgColor = "bg-primary";
                            if ( s.getHour_no() > (sub.getHours_no()/2) ) {
                                hourBgColor = "bg-success";
                            }
                            else {
                                hourBgColor = "bg-danger";
                            }
                        %>
                        <div class="progress" style="width: 50%">
                            <div class="progress-bar progress-bar-striped <%=hourBgColor%>" role="progressbar" style="width: calc(<%=s.getHour_no()%>/<%=sub.getHours_no()%>*100%);" aria-valuenow="<%=s.getHour_no()%>" aria-valuemin="0" aria-valuemax="<%=sub.getHours_no()%>"><%=s.getHour_no()%> ساعات</div>
                        </div>

                        <hr>

                        <h2>الدرجه</h2>
                        <p><%=s.getGrade()%> من <%=sub.getTotal_grade()%></p>
                        <% 
                            String gradeBgColor = "bg-primary";
                            int gradeCompare = 0;
                            try {
                                gradeCompare = Integer.parseInt(s.getGrade());
                            }
                            catch (Exception e){
                                
                            }
                            if ( gradeCompare > (sub.getTotal_grade()/2) ) {
                                gradeBgColor = "bg-success";
                            }
                            else {
                                gradeBgColor = "bg-danger";
                            }
                        %>
                        <div class="progress" style="width: 50%">
                            <div class="progress-bar progress-bar-striped <%=gradeBgColor%>" role="progressbar" style="width: calc(<%=gradeCompare%>/<%=sub.getTotal_grade()%>*100%);" aria-valuenow="<%=gradeCompare%>" aria-valuemin="0" aria-valuemax="<%=sub.getTotal_grade()%>"><%=gradeCompare%> درجه</div>
                        </div>

                        <hr>

                        <h2>التقدير</h2>
                        <p><%=s.getGrade()%></p>

                        <hr>

                        <h2>تفاصيل التقدير</h2>
                        <p><%=s.getGrade_info()%></p>
                        <hr>

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
    </body>
</html>
