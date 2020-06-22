/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.projetcModels;

import Model.Util.DealingWith_DB;
import Model.Util.Helper;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author 20102
 */
public class Subjects {

    private int id;
    private String name_ar;
    private String name_en;
    private String code;
    private int min_students_no;
    private int hours_no;
    private int depends_on;
    private double success_grade;
    private double total_grade;
    private int dept_id;
    private InputStream img;
    private String base64_img;
    private String year_no;
    private int doctor_id;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into subjects values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "subjects", "id")));
            ps.setString(2, name_ar);
            ps.setString(3, name_en);
            ps.setString(4, code);
            ps.setInt(5, min_students_no);
            ps.setInt(6, hours_no);
            ps.setInt(7, depends_on);
            ps.setDouble(8, success_grade);
            ps.setDouble(9, total_grade);
            ps.setInt(10, dept_id);
            ps.setBlob(11, img);
            ps.setString(12, year_no);
            ps.setInt(13, doctor_id);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update subjects set name_ar = ? , name_en = ? , code = ? , min_students_no = ? ,hours_no = ? "
                    + "depends_on = ? , success_grade=? , total_grade=? , dept_id=?,img =? , year_no=? ,doctor_id=? \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setString(1, name_ar);
            ps.setString(2, name_en);
            ps.setString(3, code);
            ps.setInt(4, min_students_no);
            ps.setInt(5, hours_no);
            ps.setInt(6, depends_on);
            ps.setDouble(7, success_grade);
            ps.setDouble(8, total_grade);
            ps.setInt(9, dept_id);
            ps.setBlob(10, img);
            ps.setString(11, year_no);
            ps.setInt(12, doctor_id);

            ps.setInt(13, id);

            int isUpdated = ps.executeUpdate();
            return isUpdated > 0;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

            return false;
        }
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_ar() {
        return name_ar;
    }

    public void setName_ar(String name_ar) {
        this.name_ar = name_ar;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getMin_students_no() {
        return min_students_no;
    }

    public void setMin_students_no(int min_students_no) {
        this.min_students_no = min_students_no;
    }

    public int getHours_no() {
        return hours_no;
    }

    public void setHours_no(int hours_no) {
        this.hours_no = hours_no;
    }

    public int getDepends_on() {
        return depends_on;
    }

    public void setDepends_on(int depends_on) {
        this.depends_on = depends_on;
    }

    public double getSuccess_grade() {
        return success_grade;
    }

    public void setSuccess_grade(double success_grade) {
        this.success_grade = success_grade;
    }

    public double getTotal_grade() {
        return total_grade;
    }

    public void setTotal_grade(double total_grade) {
        this.total_grade = total_grade;
    }

    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream img) {
        this.img = img;
    }

    public String getBase64_img() {
        return base64_img;
    }

    public void setBase64_img(String base64_img) {
        this.base64_img = base64_img;
    }

    public String getYear_no() {
        return year_no;
    }

    public void setYear_no(String year_no) {
        this.year_no = year_no;
    }

    public int getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }
//
//    public int getDocIdFromName_ar(String name) {
//
//        int id = Integer.parseInt(DealingWith_DB.getCoulmnData(Helper.con, "staff", "id", " where name_ar='" + name + "';")[0]);
//        return id;
//    }
//
//    public int getDeptIdFromName_ar(String name) {
//
//        int id = Integer.parseInt(DealingWith_DB.getCoulmnData(Helper.con, "departments", "id", " where name_ar='" + name + "';")[0]);
//        return id;
//    }
//    public int getSubIdFromName_ar(String name) {
//
//        int id = Integer.parseInt(DealingWith_DB.getCoulmnData(Helper.con, "subjects", "id", " where name_ar='" + name + "';")[0]);
//        return id;
//    }

}
