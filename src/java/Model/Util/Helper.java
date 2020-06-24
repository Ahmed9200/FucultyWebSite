/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Util;

import Model.projetcModels.Admins;
import Model.projetcModels.Departments;
import Model.projetcModels.Students;
import Model.projetcModels.Staff;
import Model.projetcModels.Student_subjects;
import Model.projetcModels.Subjects;
import java.io.InputStream;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

/**
 *
 * @author 20102
 */
public class Helper {

    public static Connection con;
    public static Students currentStudent = new Students();
    public static Staff currentUser = new Staff();
    public static Admins currentAdmin = new Admins();

    public static boolean studentSignToSubject(HttpServletRequest request) {

        try {
            Student_subjects student_subjects = new Student_subjects();
            student_subjects.setStudent_id(currentStudent.getId());
            student_subjects.setSubject_id(Integer.parseInt(request.getParameter("sub_id")));

            return student_subjects.add(con);
        } catch (Exception e) {
            return false;
        }
    }

    public static Students getStudentFromRegistrationForm(HttpServletRequest request) {
        try {
            request.setCharacterEncoding("UTF-8");

            Students newStudent = new Students();
            newStudent.setAddress(request.getParameter("address"));
            newStudent.setAge(Integer.parseInt(request.getParameter("age")));
            newStudent.setCity(request.getParameter("city"));
            newStudent.setGovernorate(request.getParameter("gov"));
            newStudent.setMail(request.getParameter("mail"));
            newStudent.setUsername(request.getParameter("username"));
            newStudent.setPassword(request.getParameter("password"));
            newStudent.setName_ar(request.getParameter("name_ar"));
            newStudent.setName_en(request.getParameter("name_en"));
            newStudent.setPhone(request.getParameter("phone"));
            newStudent.setGender(request.getParameter("gender"));
            newStudent.setStatus("pending");
            newStudent.setTotal_yearsNo(0);
            newStudent.setTotalHours(0);
            newStudent.setTotalGPA(0);
            String dept_name = request.getParameter("dept");
            System.out.println("dept name = " + dept_name);
            newStudent.setDept_id(Integer.parseInt(DealingWith_DB.getCoulmnData(con, "departments", "id", "where name_ar='" + dept_name + "';")[0]));

            Part f_part = request.getPart("filtration_card_img");
            Part s_part = request.getPart("ssid_card_img");
            Part b_part = request.getPart("birthday_card_img");
            Part r_part = request.getPart("result_card_img");

            InputStream inputStream_f = null, inputStream_b = null, inputStream_r = null, inputStream_s = null;

            if (f_part != null & s_part != null & b_part != null & r_part != null) {
                inputStream_b = b_part.getInputStream();
                inputStream_s = s_part.getInputStream();
                inputStream_r = r_part.getInputStream();
                inputStream_f = f_part.getInputStream();
            } else {

                return null;
            }

            newStudent.setBirthday_card_img(inputStream_b);
            newStudent.setResult_card_img(inputStream_r);
            newStudent.setFiltration_card_img(inputStream_f);
            newStudent.setSsid_card_img(inputStream_s);

            return newStudent;
        } catch (Exception e) {
            System.out.println("error " + e.getMessage());
            return null;
        }
    }

    public static boolean changeStudentStatusInDB(HttpServletRequest request) {
        try {
            String oldStatus = request.getParameter("oldStatus");
            String newStatus = request.getParameter("newStatus");
            int id = Integer.parseInt(request.getParameter("id"));
            if (!oldStatus.equals(newStatus)) {
                if (DealingWith_DB.excuteQuery(con, "UPDATE students SET status = '" + newStatus + "' WHERE id=" + id)) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (Exception e) {
            System.out.println("error " + e.getMessage());
            return false;
        }
    }

    public static boolean checkStudentAuthentication(HttpServletRequest request) {

        try {

            return DealingWith_DB.checkStudentAuthentications(con, request.getParameter("username"), request.getParameter("password"));

        } catch (Exception e) {
            return false;
        }

    }

    public static boolean checkAdminAuthentication(HttpServletRequest request) {

        try {
            return DealingWith_DB.checkAdminAuthentications(con, request.getParameter("username"), request.getParameter("password"));
        } catch (Exception e) {
            return false;
        }

    }

    public static boolean checkStuffAuthentication(HttpServletRequest request) {

        try {
            return DealingWith_DB.checkStuffAuthentications(con, request.getParameter("username"), request.getParameter("password"));
        } catch (Exception e) {
            return false;
        }

    }

    public static boolean addSubjectToDB(HttpServletRequest request) {
        try {
            Subjects sub = new Subjects();
            sub.setCode(request.getParameter("code"));
            sub.setName_ar(request.getParameter("name_ar"));
            sub.setName_en(request.getParameter("name_en"));
            sub.setYear_no(request.getParameter("year_no"));
            sub.setMin_students_no(Integer.parseInt(request.getParameter("min_students_no")));
            sub.setDept_id(Integer.parseInt(request.getParameter("dept_id")));
            sub.setHours_no(Integer.parseInt(request.getParameter("hours_no")));
            sub.setTotal_grade(Integer.parseInt(request.getParameter("total_grade")));
            sub.setSuccess_grade(Integer.parseInt(request.getParameter("success_grade")));
            sub.setDoctor_id(Integer.parseInt(request.getParameter("doctor_name")));
            sub.setDepends_on(Integer.parseInt(request.getParameter("depends_on")));
            Part part = request.getPart("img");
            InputStream inputStream = null;
            if (part != null) {
                inputStream = part.getInputStream();
            }
            sub.setImg(inputStream);
            return sub.add(con);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean addDeptToDB(HttpServletRequest request) {
        try {
            Departments dept = new Departments();
            dept.setName_ar(request.getParameter("name_ar"));
            dept.setName_en(request.getParameter("name_en"));
            dept.setDescription(request.getParameter("description"));
            dept.setPrice(Integer.parseInt(request.getParameter("price")));
            dept.setManager_id(Integer.parseInt(request.getParameter("doctor_name")));
            Part part = request.getPart("img");
            InputStream inputStream = null;
            if (part != null) {
                inputStream = part.getInputStream();
            }
            dept.setImg(inputStream);
            return dept.add(con);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
