<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="bg-top navbar-light">
    <div class="container">
        <div class="row no-gutters d-flex align-items-center align-items-stretch">
            <div class="col-md-4 d-flex align-items-center py-4">
                <!--<a class="navbar-brand" href="index.html">المنوفيه. <span>جامعة</span></a>-->
                <img src="images/fci.png">
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container d-flex align-items-center px-4">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> القائمه
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item" id="index-link"><a href="index.jsp" class="nav-link pl-0">الرئيسيه</a></li>
                <!--<li class="nav-item" id="about-link"><a href="about.html" class="nav-link">عن الكليه</a></li>-->
                <li class="nav-item" id="dept-link"><a href="departments.jsp" class="nav-link">الاقسام</a></li>
                <li class="nav-item" id="staff-link"><a href="staff.jsp" class="nav-link">هيئة التدريس</a></li>
                <li class="nav-item" id="register-link"><a href="register.jsp" class="nav-link">تقديم طلب التحاق</a></li>
            </ul>
            <ul class="navbar-nav order-lg-last">
                <li class="nav-item" id="signin-link"><a href="student-sign-in.jsp" class="nav-link">الدخول</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->
