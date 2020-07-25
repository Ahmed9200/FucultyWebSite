<%@page import="Model.Util.Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style="">
    <div class="sidebar-sticky pt-3">

        <ul class="nav flex-column" id="staff">
            <li class="nav-item">
                <a class="nav-link" id="staff-panel-link" href="staff-panel.jsp">
                    <i class="fa fa-home" aria-hidden="true"></i> الرئيسيه 
                </a>
            </li>
        </ul>


        <%
            try {
                System.out.println("ccccccccccccccccc    " + Helper.currentUser.getPermession_level());
                if (Helper.currentUser.getPermession_level().equals("1")) {
        %>


        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>أدمن</span>
        </h6>

        <ul class="nav flex-column">

            <li class="nav-item">
                <a class="nav-link" id="admin-applications-link" href="admin-student-applications.jsp">
                    <i class="fa fa-table" aria-hidden="true"></i> المتقدمين
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="admin-subjects-link" href="admin-subjects.jsp">
                    <i class="fa fa-book" aria-hidden="true"></i> المواد
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="admin-dept-link" href="admin-departments.jsp">
                    <i class="fa fa-briefcase" aria-hidden="true"></i> الأقسام
                </a>
            </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>هيئة التدريس</span>
        </h6>

        <ul class="nav flex-column" id="staff">
            <li class="nav-item">
                <a class="nav-link" id="staff-subjects-link" href="staff-subjects.jsp">
                    <i class="fa fa-book" aria-hidden="true"></i> المواد
                </a>
            </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>المزيد</span>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link" id="reports-link" href="admin-reports.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                    التقارير
                </a>
            </li>
        </ul>

        <%
        } else if (Helper.currentUser.getPermession_level().equals("2")) {
        %>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>أدمن</span>
        </h6>

        <!--        <ul class="nav flex-column">
        
                    <li class="nav-item">
                        <a class="nav-link" id="admin-applications-link" href="admin-student-applications.jsp">
                            <i class="fa fa-table" aria-hidden="true"></i> المتقدمين
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="admin-subjects-link" href="admin-subjects.jsp">
                            <i class="fa fa-book" aria-hidden="true"></i> المواد
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="admin-dept-link" href="admin-departments.jsp">
                            <i class="fa fa-briefcase" aria-hidden="true"></i> الأقسام
                        </a>
                    </li>
                </ul>-->

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>هيئة التدريس</span>
        </h6>

        <ul class="nav flex-column" id="staff">
            <li class="nav-item">
                <a class="nav-link" id="staff-subjects-link" href="staff-subjects.jsp">
                    <i class="fa fa-book" aria-hidden="true"></i> المواد
                </a>
            </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>المزيد</span>
        </h6>
        <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link" id="reports-link" href="admin-reports.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                    التقارير
                </a>
            </li>
        </ul>


        <%
        } else if (Helper.currentUser.getPermession_level().equals("3")) {
        %>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>أدمن</span>
        </h6>

        <!--        <ul class="nav flex-column">
        
                    <li class="nav-item">
                        <a class="nav-link" id="admin-applications-link" href="admin-student-applications.jsp">
                            <i class="fa fa-table" aria-hidden="true"></i> المتقدمين
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="admin-subjects-link" href="admin-subjects.jsp">
                            <i class="fa fa-book" aria-hidden="true"></i> المواد
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="admin-dept-link" href="admin-departments.jsp">
                            <i class="fa fa-briefcase" aria-hidden="true"></i> الأقسام
                        </a>
                    </li>
                </ul>-->

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>هيئة التدريس</span>
        </h6>

        <!--        <ul class="nav flex-column" id="staff">
                    <li class="nav-item">
                        <a class="nav-link" id="staff-subjects-link" href="staff-subjects.jsp">
                            <i class="fa fa-book" aria-hidden="true"></i> المواد
                        </a>
                    </li>
                </ul>
        
                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>المزيد</span>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" id="reports-link" href="admin-reports.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                            التقارير
                        </a>
                    </li>
                </ul>-->

        <%
                }
            } catch (Exception e) {
            }
        %>

    </div>
</nav>
