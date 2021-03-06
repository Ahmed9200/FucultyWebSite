<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@page import="Model.projetcModels.Students"%>
<%@page import="java.util.ArrayList"%>

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

                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >

                        <h2>قيد المراجعه</h2>
                        <!--<input type="button" value="Print 1st Div" onclick="javascript:printProgress('progressTable')" />-->
                        <div class="table-responsive" >
                            <table class="table table-striped table-sm" id="progressTable">
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
                                            <%=waiting.get(i).getStatus()%>
                                        </td>
                                        <td><a onclick="showInfo(
                                               <%=waiting.get(i).getId()%>,
                                                        '<%=waiting.get(i).getName_ar()%>',
                                                        '<%=waiting.get(i).getName_en()%>',
                                               <%=waiting.get(i).getAge()%>,
                                                        '<%=waiting.get(i).getMail()%>',
                                               <%=waiting.get(i).getPhone()%>,
                                                        '<%=waiting.get(i).getAddress()%>',
                                                        '<%=waiting.get(i).getCity()%>',
                                                        '<%=waiting.get(i).getGovernorate()%>',
                                                        '<%=waiting.get(i).getStatus()%>',
                                                        '<%=waiting.get(i).getDept().getName_ar()%>',
                                                        '<%=waiting.get(i).getUsername()%>',
                                               <%=waiting.get(i).getTotalGPA()%>,
                                               <%=waiting.get(i).getTotalHours()%>,
                                               <%=waiting.get(i).getTotal_yearsNo()%>,
                                                        '<%=waiting.get(i).getYearName()%>',
                                                        0,
                                                        'data:image / jpg; base64,<%=waiting.get(i).getBase64_resultImg()%>',
                                                        'data:image / jpg; base64,<%=waiting.get(i).getBase64_fitrationImg()%>',
                                                        'data:image / jpg; base64,<%=waiting.get(i).getBase64_ssidImg()%>',
                                                        'data:image / jpg; base64,<%=waiting.get(i).getBase64_birthdayImg()%>'
                                                        )" style="cursor: pointer;"><i class="fa fa-external-link-square" aria-hidden="true"></i></a></td>
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
                                            <%=accepted.get(i).getStatus()%>
                                        </td>
                                        <td><a onclick="showInfo(
                                                        <%=accepted.get(i).getId()%>,
                                                        '<%=accepted.get(i).getName_ar()%>',
                                                        '<%=accepted.get(i).getName_en()%>',
                                                        <%=accepted.get(i).getAge()%>,
                                                        '<%=accepted.get(i).getMail()%>',
                                                        <%=accepted.get(i).getPhone()%>,
                                                        '<%=accepted.get(i).getAddress()%>',
                                                        '<%=accepted.get(i).getCity()%>',
                                                        '<%=accepted.get(i).getGovernorate()%>',
                                                        '<%=accepted.get(i).getStatus()%>',
                                                        '<%=accepted.get(i).getDept().getName_ar()%>',
                                                        '<%=accepted.get(i).getUsername()%>',
                                                        <%=accepted.get(i).getTotalGPA()%>,
                                                        <%=accepted.get(i).getTotalHours()%>,
                                                        <%=accepted.get(i).getTotal_yearsNo()%>,
                                                        '<%=accepted.get(i).getYearName()%>',
                                                        1,
                                                        'data:image / jpg; base64,<%=accepted.get(i).getBase64_resultImg()%>',
                                                        'data:image / jpg; base64,<%=accepted.get(i).getBase64_fitrationImg()%>',
                                                        'data:image / jpg; base64,<%=accepted.get(i).getBase64_ssidImg()%>',
                                                        'data:image / jpg; base64,<%=accepted.get(i).getBase64_birthdayImg()%>'
                                                        )" style="cursor: pointer;"><i class="fa fa-external-link-square" aria-hidden="true"></i></a></td>
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

        <!--        <button type="button" class="btn btn-primary" onclick="showInfo()" data-toggle="modal" data-target="#studentInfo">
                    اعرض
                </button>-->

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
                    <div class="modal-body table-responsive">
                        <table class="table table-sm">
                            <tbody>
                                <tr>
                                    <td><strong>الاسم بالعربيه: </strong></td>
                                    <td class="modal-name-ar"></td>
                                </tr>
                                <tr>
                                    <td><strong>الاسم بالانجليزيه: </strong></td>
                                    <td class="modal-name-en"></td>
                                </tr>
                                <tr>
                                    <td><strong>السن</strong></td>
                                    <td class="modal-age"></td>
                                </tr>
                                <tr>
                                    <td><strong>الإيميل</strong></td>
                                    <td class="modal-mail"></td>
                                </tr>
                                <tr>
                                    <td><strong>رقم الموبايل</strong></td>
                                    <td class="modal-phone"></td>
                                </tr>
                                <tr>
                                    <td><strong>العنوان</strong></td>
                                    <td class="modal-address"></td>
                                </tr>
                                <tr>
                                    <td><strong>المدينه</strong></td>
                                    <td class="modal-city"></td>
                                </tr>
                                <tr>
                                    <td><strong>المحافظه</strong></td>
                                    <td class="modal-gov"></td>
                                </tr>
                                <tr>
                                    <td><strong>حالة الطالب</strong></td>
                                    <td class="modal-status"></td>
                                </tr>
                                <tr>
                                    <td><strong>القسم</strong></td>
                                    <td class="modal-dept"></td>
                                </tr>
                                <tr>
                                    <td><strong>الرقم القومي</strong></td>
                                    <td class="modal-id"></td>
                                </tr>
                                <tr>
                                    <td><strong>GPA</strong></td>
                                    <td class="modal-gpa"></td>
                                </tr>
                                <tr>
                                    <td><strong>مجموع الساعات</strong></td>
                                    <td class="modal-hours"></td>
                                </tr>
                                <tr>
                                    <td><strong>السنه الدراسيه</strong></td>
                                    <td class="modal-years"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="row" style="margin: 5px">

                        <div class="col-6">
                            <div class="card">
                                <img class="card-img-top modal-img-result" src="images/course-2.jpg" alt="Card image cap">
                                <div class="card-footer">
                                    <small class="text-muted">شهادة الثانويه العامه</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <img class="card-img-top modal-img-filtaration" src="images/course-2.jpg" alt="Card image cap">
                                <div class="card-footer">
                                    <small class="text-muted">بطاقة الترشح</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <img class="card-img-top modal-img-id" src="images/course-2.jpg" alt="Card image cap">
                                <div class="card-footer">
                                    <small class="text-muted">صوره البطاقه</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <img class="card-img-top modal-img-birth" src="images/course-2.jpg" alt="Card image cap">
                                <div class="card-footer">
                                    <small class="text-muted">صورة شهادة الميلاد</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <form action="ChangeStudentStatus" method="POST">
                            <input class="idInput" type="text" name="id" value="0" hidden/>
                            <input class="oldStatus" type="text" name="oldStatus" value="pending" hidden/>
                            <input class="newStatus" type="text" name="newStatus" value="accepted" hidden/>
                            <input type="submit" class="btn btn-success submitStatus" value="قبول"/>
                        </form>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">اغلق</button>
                    </div>
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
                                                $("#admin-applications-link").addClass("active");
                                                console.log("output");
                                            });

                                            function showInfo($id, $nameAr, $nameEn, $age, $mail, $phone, $address, $city, $gov, $status, $dept, $cardID, $GPA, $hours, $years, $currentYear, $statusCode, $img1, $img2, $img3, $img4) {
                                                $('#studentInfo').modal('show');
//                console.log('id' , $id , 'nameAr' , $nameAr);
                                                $('.idInput').val($id);
                                                $('.modal-student-id').text($id);
                                                $('.modal-name-ar').text($nameAr);
                                                $('.modal-name-en').text($nameEn);
                                                $('.modal-age').text($age);
                                                $('.modal-mail').text($mail);
                                                $('.modal-phone').text('0' + $phone);
                                                $('.modal-address').text($address);
                                                $('.modal-city').text($city);
                                                $('.modal-gov').text($gov);
                                                $('.modal-status').text($status);
                                                $('.modal-dept').text($dept);
                                                $('.modal-id').text($cardID);
                                                $('.modal-gpa').text($GPA);
                                                $('.modal-hours').text($hours);
                                                $('.modal-years').text($currentYear);

                                                if ($statusCode == 0) {
                                                    $('.oldStatus').val('pending');
                                                    $('.newStatus').val('accepted');
                                                    $('.submitStatus').val('قبول');
                                                }
                                                else if ($statusCode == 1) {
                                                    $('.oldStatus').val('accepted');
                                                    $('.newStatus').val('pending');
                                                    $('.submitStatus').val('تحويل لقيد المراجعه ');
                                                }

                                                $(".modal-img-result").attr('src', $img1);
                                                $(".modal-img-filtaration").attr('src', $img2);
                                                $(".modal-img-id").attr('src', $img3);
                                                $(".modal-img-birth").attr('src', $img4);

                                            }
        </script>
        
        <script>
             function printProgress(divID) {
        //Get the HTML of div
        var divElements = document.getElementById(divID).innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;
        //Reset the page's HTML with div's HTML only
        document.body.innerHTML = 
          "<html><head><title></title><style>table th{background-color:black;color:white;width:100%;</style></head><body><table border='1px solid black'>" + 
          divElements + "</table></body>";
        //Print Page
        window.print();
        //Restore orignal HTML
        document.body.innerHTML = oldPage;

    }
        </script>
    </body>
</html>
