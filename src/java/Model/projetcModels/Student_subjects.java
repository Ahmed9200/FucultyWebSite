/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.projetcModels;

import Model.Util.DealingWith_DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author 20102
 */
public class Student_subjects {

    private int id;
    private int student_id;
    private int subject_id;
    private String status;
    private double GPA;
    private int hour_no;
    private String status_info;
    private String grade;
    private String grade_info;
    private Students student;
    private Subjects sub;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into students_subjects values(?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "students_subjects", "id")));
            ps.setInt(2, student_id);
            ps.setInt(3, subject_id);
            ps.setString(4, " ");
            ps.setDouble(5, GPA);
            ps.setInt(6, hour_no);
            ps.setString(7, " ");
            ps.setString(8, "-");
            ps.setString(9, " ");

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update students_subjects set status=? , GPA=? ,hour_no=? ,"
                    + "status_info=? , grade=? , grade_info=? \n where student_id=? and subject_id=? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setString(1, status);
            ps.setDouble(2, GPA);
            ps.setInt(3, hour_no);
            ps.setString(4, status_info);
            ps.setString(5, grade);
            ps.setString(6, grade_info);

            ps.setInt(7, student_id);
            ps.setInt(8, subject_id);

            System.out.println("update students_subjects set status = " + status + " , GPA = " + GPA + " ,hour_no = " + hour_no + " ,"
                    + "status_info = " + status_info + " , grade=" + grade + " , grade_info=" + grade_info + " \n where student_id = " + student_id + " and subject_id = " + subject_id + " ;");
            int isUpdated = ps.executeUpdate();
            return isUpdated > 0;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

            return false;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getGPA() {
        return GPA;
    }

    public void setGPA(double GPA) {
        this.GPA = GPA;
    }

    public int getHour_no() {
        return hour_no;
    }

    public void setHour_no(int hour_no) {
        this.hour_no = hour_no;
    }

    public String getStatus_info() {
        return status_info;
    }

    public void setStatus_info(String status_info) {
        this.status_info = status_info;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getGrade_info() {
        return grade_info;
    }

    public void setGrade_info(String grade_info) {
        this.grade_info = grade_info;
    }

    public Students getStudent() {
        return student;
    }

    public void setStudent(Students student) {
        this.student = student;
    }

    public Subjects getSub() {
        return sub;
    }

    public void setSub(Subjects sub) {
        this.sub = sub;
    }

}
