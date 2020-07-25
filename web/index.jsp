<%@page import="Model.projetcModels.Departments"%>
<%@page import="Model.projetcModels.Staff"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Util.Helper"%>
<%@page import="Model.Util.DealingWith_DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <title>الرئيسيه</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="top-navbar.jsp" %>
        <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-2 d-flex">
                    <div class="col-md-6 align-items-stretch d-flex">
                        <div class="img img-video d-flex align-items-center" style="background-image: url(images/about-2.jpg);">
                            <div class="video justify-content-center">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 heading-section heading-section-white ftco-animate pl-lg-5 pt-md-0 pt-5">
                        <h2 class="mb-4">كلية الحاسبات والمعلومات</h2>
                        <p>نشأة الكلية</p>
                        <p>
                            تتجه جامعة المنوفية إلى استكمال البنيةالأساسية للجامعة ومن هذا المنطلق اتجهت الجامعة إلى تدعيم دراسة الحاسباتوتكنولوجيا المعلومات بها من خلال إنشاء كلية الحاسبات والمعلومات لسد حاجة ملحةفي النطاق الجغرافي الذي يمتد إليه نشاط الكلية وخدماته , ولقد صدر القرارالجمهوري رقم 292 لسنة 2001 والمتضمن بند (18) إنشاء كلية الحاسبات والمعلومات –جامعة المنوفية على أن يكون مقرها مدينة شبين الكوم .
                        </p>
                        <p>رؤية الكلية</p>
                        <p>
                            تحقيق الريادة محلياً واقليمياً في مجالات علوم الحاسب ونظم وتكنولوجيا المعلومات ودعم القرار من خلال تقديم تعليم اكاديمي وبحث علمي متميز لخدمة وتنمية المجتمع معرفياً و مهارياً وأخلاقياً.
                        </p>
                        <p>رسالة الكلية</p>
                        <p>
                            تتلخص رسالة الكلية في إعداد خريج متميز في مجالات علوم الحاسب ونظم وتكنولوجيا
                            المعلومات ودعم القرار قادر على توظيف مكتسباته العلمية ومهاراته العملية لتلبية متطلبات
                            سوق العمل, كما تهدف الى إنتاج بحث علمي راقى والقيام بدورها المجتمعي من خلال تقديم
                            استشارات فنية ودعم تقنى.
                        </p>
                    </div>
                </div>	
                <div class="row d-md-flex align-items-center justify-content-center">
                    <div class="col-lg-12">
                        <div class="row d-md-flex align-items-center">
                            <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="icon"><span class="flaticon-doctor"></span></div>
                                    <div class="text">
                                        <strong class="number" data-number="<%=DealingWith_DB.getCoulmnData(Helper.con, "staff", "count(id)", "")[0]%>">0</strong>
                                        <span>هيئة التدريس</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="icon"><span class="flaticon-doctor"></span></div>
                                    <div class="text">
                                        <strong class="number" data-number="<%=DealingWith_DB.getCoulmnData(Helper.con, "students", "count(id)", "")[0]%>">0</strong>
                                        <span>الطلاب</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="icon"><span class="flaticon-doctor"></span></div>
                                    <div class="text">
                                        <strong class="number" data-number="<%=DealingWith_DB.getCoulmnData(Helper.con, "departments", "count(id)", "")[0]%>">0</strong>
                                        <span>الاقسام</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section">
            <div class="container-fluid px-4">
                <div class="row justify-content-center mb-5 pb-2">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <h2 class="mb-4">الأقسام</h2>
                    </div>
                </div>	
                <div class="row">

                    <%
                        try {
                            ArrayList<Departments> depts = DealingWith_DB.getDepts(Helper.con, "select * from departments");
                            for (int j = 0; j < depts.size(); j++) {
                    %>

                    <div class="col-md-3 course ftco-animate">
                        <div class="img" style="background-image: url(data:image/png;base64,<%=depts.get(j).getBase64_image()%>);"></div>
                        <div class="text pt-4">
                            <p class="meta d-flex">
                                <span><i class="icon-user mr-2"></i>د./<%=depts.get(j).getDoctor().getName_ar()%></span>
                            </p>
                            <h3><a href="#"><%=depts.get(j).getName_ar()%></a></h3>
                            <p><a href="#" class="btn btn-primary">معلومات اكثر</a></p>
                        </div>
                    </div>

                    <%
                            }
                        } catch (Exception exx) {
                        }
                    %>

                </div>




            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="container-fluid px-4">
                <div class="row justify-content-center mb-5 pb-2">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <h2 class="mb-4">أعضاء هيئة التدريس</h2>
                    </div>
                </div>	
                <div class="row">

                    <%
                        try {

                            ArrayList<Staff> staffs = DealingWith_DB.getStaff(Helper.con, "select * from staff");
                            for (int i = 0; i < staffs.size(); i++) {
                    %>

                    <div class="col-md-6 col-lg-3">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(data:image/png;base64,<%=staffs.get(i).getBase64_img()%>);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3><%=staffs.get(i).getName_ar()%></h3>
                                <span class="position mb-2"><%=staffs.get(i).getEdu_status()%></span>
                                <div class="faded">
                                    <p>التخصص العام: <%=DealingWith_DB.getDepts(Helper.con, "select * from departments where id=" + staffs.get(i).getDept_id()).get(0).getName_ar()%></p>
                <!--//                     <p><%=staffs.get(i).getAbout()%></p>-->
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-envelope"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                        }
                    %>


                </div>
            </div>
        </section>

        <%@include  file="footer.jsp" %>

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
                $("#index-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
