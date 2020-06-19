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
public class GPA {

    private int id;
    private int student_id;
    private int term_no;
    private double GPA_value;
    private Students student;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into GPA values(?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "GPA", "id")));
            ps.setInt(2, student_id);
            ps.setInt(3, term_no);
            ps.setDouble(4, GPA_value);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update GPA set student_id = ? , term_no = ? , GPA_value = ?   \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setInt(1, student_id);
            ps.setInt(2, term_no);
            ps.setDouble(3, GPA_value);
            ps.setInt(4, id);

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

    public int getTerm_no() {
        return term_no;
    }

    public void setTerm_no(int term_no) {
        this.term_no = term_no;
    }

    public double getGPA_value() {
        return GPA_value;
    }

    public void setGPA_value(double GPA_value) {
        this.GPA_value = GPA_value;
    }

    public Students getStudent() {
        return student;
    }

    public void setStudent(Students student) {
        this.student = student;
    }

}
