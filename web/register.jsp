<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ar" dir="rtl" >
    <head>
        <title>التسجيل</title>
        <%@include  file="head.jsp" %>
    </head>
    <body>
        <%@include  file="top-navbar.jsp" %>

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">سجل الآن</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">الرئيسيه <i class="ion-ios-arrow-back"></i></a></span> <span>سجل الآن <i class="ion-ios-arrow-back"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section contact-section">
            <div class="container">
                <div class="row d-flex contact-info">
                    <div class="col-md-4 d-flex">
                        <div class="bg-light align-self-stretch box p-4 text-center">
                            <h3 class="mb-4">العنوان</h3>
                            <p>	مجمع الكليات النظريه، ش جمال عبد الناصر، شبين الكوم، المنوفيه</p>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex">
                        <div class="bg-light align-self-stretch box p-4 text-center">
                            <h3 class="mb-4">الرقم</h3>
                            <p><a href="tel://1234567920">048-2316189</a></p>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex">
                        <div class="bg-light align-self-stretch box p-4 text-center">
                            <h3 class="mb-4">الإيميل</h3>
                            <p><a href="mailto:info@yoursite.com">	Itunit@ci.menofia.edu.eg</a></p>
                        </div>
                    </div>
                    <!--
                              <div class="col-md-3 d-flex">
                                    <div class="bg-light align-self-stretch box p-4 text-center">
                                            <h3 class="mb-4">Website</h3>
                                        <p><a href="#">yoursite.com</a></p>
                                      </div>
                              </div>
                    -->
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
            <div class="container">
                <div class="row d-flex align-items-stretch no-gutters">
                    <div class="col-md-3 d-flex align-items-stretch"></div>
                    <div class="col-md-6 p-4 p-md-5  bg-light">
                        <form action="Registeration" enctype="multipart/form-data" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" name="name_ar" placeholder="الأسم بالكامل بالعربيه" required>
                                <input type="text" class="form-control" name="name_en" placeholder="الأسم بالكامل بالانجليزيه" required>
                            </div>
                            <div class="form-group">
                                <select class="form-control">
                                    <option>ذكر</option>
                                    <option>أنثي</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control" name="age" placeholder="السن" required>
                            </div>
                            <div class="form-group">
                                <input type="tel" class="form-control" name="phone" placeholder="رقم الهاتف" required>
                            </div>
                            <div class="form-group row" style="padding-left: 15px; padding-right: 15px;">
                                <label class="col-3" style="padding-top: 10px;">القسم</label>
                                <select class="form-control col-9" name="dept">
                                    <option>علوم الحاسب</option>
                                    <option>تكنولوجيا المعلومات</option>
                                </select>
                            </div>
                            <div class="form-group row" style="padding-left: 15px; padding-right: 15px;">
                                <input type="text" class="form-control" name="address" placeholder="العنوان" required>
                                <input type="text" class="form-control col-6" name="city" placeholder="مدينة" required>
                                <input type="text" class="form-control col-6" name="gov" placeholder="محافظة" required>
                            </div>  
                            <div class="form-group">
                                <input type="text" class="form-control" name="mail" placeholder="الإيميل" required>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control" name="username" placeholder="الرقم القومي" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="الباسوورد" required>
                            </div>
                            <div class="form-group row" style="padding-left: 15px; padding-right: 15px;">
                                <label class="col-3" style="padding-top: 10px;">صورة البطاقه</label>
                                <input type="file" class="form-control col-9" name="ssid_card_img" required>
                                <label class="col-3" style="padding-top: 0px;">صورة شهادة الميلاد</label>
                                <input type="file" class="form-control col-9" name="birthday_card_img" required>
                                <label class="col-3" style="padding-top: 0px;">صورة نتيجة الثانويه</label>
                                <input type="file" class="form-control col-9" name="result_card_img" required>
                                <label class="col-3" style="padding-top: 10px;">صورة بطاقة الترشح</label>
                                <input type="file" class="form-control col-9" name="filtration_card_img" required>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="تقديم طلب الالتحاق" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3 d-flex align-items-stretch"></div>
                    <!--
                                                            <div class="col-md-6 d-flex align-items-stretch">
                                                                    <div id="map"></div>
                                                            </div>
                    -->
                </div>
            </div>
        </section>

        <br>

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
                $("#register-link").addClass("active");
                console.log("output");
            });
        </script>
    </body>
</html>
