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
                        <h1 class="h2">إضافة ماده جديد</h1>
                    </div>

                    <section class="ftco-section" style="padding: 5px 0px;" >
                        <div class="row">

                            <div class="col-3"></div>
                            <div class="col-6 p-4 p-md-5 bg-light">
                                <form action="#">
                                    <input type="number" class="form-control subjectDeptID" name="subjectDeptID" hidden>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subjectNameAr" placeholder="الأسم بالعربيه">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subjectNameEn" placeholder="الأسم بالإنجليزيه">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subjectCode" placeholder="كود الماده"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="subjectMinStudentNum" placeholder="الحد الأدني لعدد الطلاب">
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="subjectHoursNum" placeholder="عدد الساعات">
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="subjectTotalGrade" placeholder="درجة الماده">
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="subjectSuccessGrade" placeholder="درجة النجاح">
                                    </div>
                                    <label>فرقه</label>
                                    <div class="form-group">
                                        <select name="subjectYear">
                                            <option value="1">فرقه اولي</option>
                                            <option value="2">فرقه ثانيه</option>
                                            <option value="3">فرقه ثالثه</option>
                                            <option value="4">فرقه رابعه</option>
                                        </select>
                                    </div>
                                    <label>معتمده علي</label>
                                    <div class="form-group">
                                        <select name="subjetcDepends">
                                            <option value="1">لغات حاسب 1</option>
                                            <option value="2">قواعد بيانات 1</option>
                                        </select>
                                    </div>
                                    <label>استاذ الماده</label>
                                    <div class="form-group">
                                        <select name="subjetcDepends">
                                            <option value="1">حمدي موسي</option>
                                            <option value="2">كذا كذا</option>
                                        </select>
                                    </div>
                                    <label>صورة الماده</label>
                                    <div class="form-group">
                                        <input type="file" class="form-control" name="subjectImg" placeholder="صوره">
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
        <script>
            $(document).ready(function () {
                $searchParams = new URLSearchParams(window.location.search);
                $(".subjectDeptID").val($searchParams.get('deptID'));
                
                console.log($searchParams.get('deptID'));
                console.log("output");
            });
        </script>

    </body>
</html>
