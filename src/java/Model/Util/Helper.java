/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Util;

import Model.projetcModels.Admins;
import Model.projetcModels.Students;
import Model.projetcModels.Stuff;
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
    public static Students currentStudent;
    public static Stuff currentUser;
    public static Admins currentAdmin;

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
            newStudent.setStatus("pending");
            newStudent.setTotal_yearsNo(0);
            newStudent.setTotalHours(0);
            newStudent.setTotalGPA(0);
            String dept_name = request.getParameter("dept");
            System.out.println("dept name = " + dept_name);
            newStudent.setDept_id(Integer.parseInt(DealingWith_DB.getCoulmnData(con, "departments", "id", "where name_ar='" + dept_name+"';")[0]));

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

}
