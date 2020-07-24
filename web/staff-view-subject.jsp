<%@page import="Model.projetcModels.Student_subjects"%>
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


                <%
                    try {
                        String sub_id = request.getParameter("id");
                        Subjects currentSub = DealingWith_DB.getSubjetcs(Helper.con, "select * from subjects where id =" + sub_id).get(0);
                        ArrayList<Student_subjects> studentsInfo = DealingWith_DB.getStudent_subjetcs(Helper.con, "select * from students_subjects where subject_id=" + sub_id);
                %>


                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2"><%=currentSub.getName_ar()%></h1>

                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >


                        <h2>الطلاب المُسجلون</h2>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>اسم الطالب</th>
                                        <th>الحاله</th>
                                        <th>GPA</th>
                                        <th>الدرجه</th>
                                        <th>عدد الساعات</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%for (int i = 0; i < studentsInfo.size(); i++) {%>

                                    <tr>
                                        <td><%=studentsInfo.get(i).getStudent_id()%></td>
                                        <td><%=studentsInfo.get(i).getStudent().getName_ar()%></td>
                                        <td><%=studentsInfo.get(i).getStudent().getStatus()%></td>
                                        <td><%=studentsInfo.get(i).getGPA()%></td>
                                        <td><%=studentsInfo.get(i).getGrade()%></td>
                                        <td><%=studentsInfo.get(i).getHour_no()%></td>
                                        <td><a onclick="showInfo(1,
                                                        '<%=studentsInfo.get(i).getStudent().getName_ar()%>',
                                                        '<%=studentsInfo.get(i).getStudent().getStatus()%>',
                                                        '<%=studentsInfo.get(i).getGPA()%>',
                                                        '<%=studentsInfo.get(i).getGrade()%>',
                                                        '<%=studentsInfo.get(i).getHour_no()%>'
                                                        )" 
                                               style="cursor: pointer;">
                                                تعديل
                                                <i class="fa fa-external-link-square" aria-hidden="true"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>        


                    </section>
                </main>
            </div>
        </div>

        <%
            } catch (Exception e) {
            }
        %>
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <!-- Modal -->
        <div class="modal fade" id="studentInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title modal-student-id" id="exampleModalLongTitle">1</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="ChangeStudentSubjetcInfo" method="POST">
                        <div class="modal-body table-responsive">
                            <table class="table table-sm">
                                <tbody>
                                    <tr>
                                        <td><strong>الاسم الطالب: </strong></td>
                                        <td class="modal-name">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>الحاله</strong></td>
                                        <td class="modal-status">
                                            <input id="modal-status" type="text" name="status" value="0"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>GPA</strong></td>
                                        <td class="modal-gpa">
                                            <input id="modal-gpa" type="text" name="gpa" value="0"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>الدرجه</strong></td>
                                        <td class="modal-grade">
                                            <input id="modal-grade" type="text" name="grade" value="0"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>عدد الساعات</strong></td>
                                        <td class="modal-hours">
                                            <input id="modal-hours" type="text" name="hours" value="0"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="modal-footer">


                            <input class="idInput" type="text" name="id" value="0" hidden/>
                            <input type="submit" class="btn btn-success" value="تحديث"/>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">اغلق</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

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


                                            function showInfo($id, $name, $status, $gpa, $grade, $hours) {
                                                $('#studentInfo').modal('show');
//                console.log('id' , $id , 'nameAr' , $nameAr);
                                                $('.idInput').val($id);
                                                $('.modal-student-id').text($id);
                                                $('.modal-name').text($name);
                                                $('#modal-status').val($status);
                                                $('#modal-gpa').val($gpa);
                                                $('#modal-grade').val($grade);
                                                $('#modal-hours').val($hours);

                                            }
        </script>
    </body>
</html>
