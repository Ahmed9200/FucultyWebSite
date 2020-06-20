/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.projetcModels;

import Model.Util.DealingWith_DB;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author 20102
 */
public class Departments {

    private int id;
    private String name_ar;
    private String name_en;
    private String description;
    private InputStream img;
    private double price;
    private int manager_id;
    private int current_no;
    private Staff doctor;
    private String base64_image;
    private ArrayList<Subjects> subjects;

    public boolean add(Connection con) {
        try {
            PreparedStatement ps = con.prepareStatement("insert into departments values(?,?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(DealingWith_DB.AutoIncrementCoulmn(con, "departments", "id")));
            ps.setString(2, name_ar);
            ps.setString(3, name_en);
            ps.setString(4, description);
            ps.setBlob(5, img);
            ps.setDouble(6, price);
            ps.setInt(7, manager_id);
            ps.setInt(8, current_no);

            int isAdded = ps.executeUpdate();

            return isAdded > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean update(Connection con) {

        try {
            String strUpdate = "update departments set name_ar = ? , name_en = ? , description = ? , image = ? ,price = ? "
                    + "manager_id = ?,current_no=?  \n where id = ? ;";
            PreparedStatement ps = con.prepareStatement(strUpdate);

            // add prepared statement data 
            ps.setString(1, name_ar);
            ps.setString(2, name_en);
            ps.setString(3, description);
            ps.setBlob(4, img);
            ps.setDouble(5, price);
            ps.setInt(6, manager_id);
            ps.setInt(7, current_no);
            ps.setInt(8, id);

            int isUpdated = ps.executeUpdate();
            return isUpdated > 0;
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

            return false;
        }
    }

    public int getCurrent_no() {
        return current_no;
    }

    public void setCurrent_no(int current_no) {
        this.current_no = current_no;
    }

    public ArrayList<Subjects> getSubjects() {
        return subjects;
    }

    public void setSubjects(ArrayList<Subjects> subjects) {
        this.subjects = subjects;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getManager_id() {
        return manager_id;
    }

    public void setManager_id(int manager_id) {
        this.manager_id = manager_id;
    }

    public String getBase64_image() {
        return base64_image;
    }

    public void setBase64_image(String base64_image) {
        this.base64_image = base64_image;
    }

    public Staff getDoctor() {
        return doctor;
    }

    public void setDoctor(Staff doctor) {
        this.doctor = doctor;
    }

}
