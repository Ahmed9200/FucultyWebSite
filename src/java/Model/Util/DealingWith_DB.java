/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Util;

import Model.projetcModels.Admins;
import Model.projetcModels.Departments;
import Model.projetcModels.GPA;
import Model.projetcModels.Student_subjects;
import Model.projetcModels.Students;
import Model.projetcModels.Stuff;
import Model.projetcModels.Subjects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;

/**
 *
 * @author 20102
 */
public class DealingWith_DB {

    //Check username and password for user and admin
    public static boolean checkStudentAuthentications(Connection con, String username, String password) {
        try {
            Statement statement = con.createStatement();
            String strCheck = "select * from students where username= '" + username + "' and password= '" + password + "'";
            statement.executeQuery(strCheck);

            return statement.getResultSet().next();

        } catch (SQLException var4) {

            System.out.println(var4.getMessage());
            return false;
        }

    }

    //Check username and password for user and admin
    public static boolean checkStuffAuthentications(Connection con, String username, String password) {
        try {
            Statement statement = con.createStatement();
            String strCheck = "select * from stuff where username= '" + username + "' and password= '" + password + "'";
            statement.executeQuery(strCheck);

            return statement.getResultSet().next();

        } catch (SQLException var4) {

            System.out.println(var4.getMessage());
            return false;
        }

    }

    //Check username and password for user and admin
    public static boolean checkAdminAuthentications(Connection con, String username, String password) {
        try {
            Statement statement = con.createStatement();
            String strCheck = "select * from admins_view where username= '" + username + "' and password= '" + password + "'";
            statement.executeQuery(strCheck);

            return statement.getResultSet().next();

        } catch (SQLException var4) {

            System.out.println(var4.getMessage());
            return false;
        }

    }

    // Method to do some fast query in database
    public static boolean excuteQuery(Connection con, String sqlStatement) {
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate(sqlStatement);
            return true;
        } catch (SQLException var2) {
            var2.printStackTrace();
            return false;
        }
    }

    public static boolean deleteById(Connection con, String table_name, String coulmn_name, String id) {

        String strDelete = "delete from " + table_name + " where "
                + coulmn_name + " = " + id;
        boolean isDeleted = excuteQuery(con, strDelete);
        return isDeleted;

    }

    public static String AutoIncrementCoulmn(Connection con, String tableName, String coulmnName) {
        try {
            Statement statement = con.createStatement();
            String strDBcode = "select max(" + coulmnName + ") +1 AS auto from " + tableName;
            statement.executeQuery(strDBcode);

            String num;
            for (num = ""; statement.getResultSet().next(); num = statement.getResultSet().getString("auto")) {
            }

            return num != null && !"".equals(num) ? num : "1";
        } catch (SQLException var5) {
            System.out.println(var5.getMessage());
            return null;
        }
    }

    public static String[] getCoulmnData(Connection con, String tableName, String coulmnName, String condition) {
        try {
            Statement stmt = con.createStatement();
            String strSelect = "select " + coulmnName + " from "
                    + tableName + " " + condition;
            ResultSet rs = stmt.executeQuery(strSelect);
            rs.last();
            int rowCount = rs.getRow();
            rs.beforeFirst();
            String[] values = new String[rowCount];

            for (int i = 0; rs.next(); ++i) {
                values[i] = rs.getString(1);
            }
            return values;
        } catch (SQLException var10) {
            System.out.println(var10.getMessage());
            return null;
        }

    }

    public static ArrayList<Students> getStudents(Connection con, String sql) {

        try {
            ArrayList<Students> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Students item = new Students();
                item.setId(rs.getInt("id"));
                item.setName_ar(rs.getString("name_ar"));
                item.setName_en(rs.getString("name_en"));
                item.setAge(rs.getInt("age"));
                item.setMail(rs.getString("mail"));
                item.setAddress(rs.getString("address"));
                item.setPhone(rs.getString("phone"));
                item.setGovernorate(rs.getString("governorate"));
                item.setCity(rs.getString("city"));
                item.setStatus(rs.getString("status"));
                item.setTotalGPA(rs.getDouble("totalGPA"));
                item.setTotalHours(rs.getInt("totalHours"));
                item.setTotal_yearsNo(rs.getInt("total_yearsNo"));
                item.setUsername(rs.getString("username"));
                item.setPassword(rs.getString("password"));
                item.setDept_id(rs.getInt("dept_id"));

                try {
                    item.setDept(getDepts(con, "select * from departments where id = " + item.getDept_id()).get(0));
                } catch (Exception e) {
                    item.setDept(new Departments());
                }
                // set img in base 64 to show it in img tag in html
                InputStream inputStream_f = rs.getBlob("filtration_card_img").getBinaryStream();
                InputStream inputStream_b = rs.getBlob("birthday_card_img").getBinaryStream();
                InputStream inputStream_s = rs.getBlob("ssid_card_img").getBinaryStream();
                InputStream inputStream_r = rs.getBlob("result_card_img").getBinaryStream();

                item.setBase64_fitrationImg(getBase64(inputStream_f));
                item.setBase64_birthdayImg(getBase64(inputStream_b));
                item.setBase64_ssidImg(getBase64(inputStream_s));
                item.setBase64_resultImg(getBase64(inputStream_r));

                data.add(item);
            }

            return data;
        } catch (SQLException | IOException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static ArrayList<Departments> getDepts(Connection con, String sql) {

        try {
            ArrayList<Departments> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Departments item = new Departments();
                item.setId(rs.getInt("id"));
                item.setName_ar(rs.getString("name_ar"));
                item.setName_en(rs.getString("name_en"));
                item.setDescription(rs.getString("description"));
                item.setPrice(rs.getDouble("price"));
                item.setManager_id(rs.getInt("manager_id"));

                try {
                    item.setDoctor(getStuff(con, "select * from stuff where id = " + item.getManager_id()).get(0));
                } catch (Exception e) {
                    item.setDoctor(new Stuff());
                }

                // set img in base 64 to show it in img tag in html
                InputStream inputStream = rs.getBlob("img").getBinaryStream();
                item.setBase64_image(getBase64(inputStream));
                data.add(item);
            }

            return data;
        } catch (SQLException | IOException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static ArrayList<Stuff> getStuff(Connection con, String sql) {

        try {
            ArrayList<Stuff> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Stuff item = new Stuff();
                item.setId(rs.getInt("id"));
                item.setName_ar(rs.getString("name_ar"));
                item.setName_en(rs.getString("name_en"));
                item.setAbout(rs.getString("about"));
                item.setAge(rs.getInt("age"));
                item.setAddress(rs.getString("address"));
                item.setGovernorate(rs.getString("governorate"));
                item.setCity(rs.getString("city"));
                item.setPhone1(rs.getString("phone1"));
                item.setPhone2(rs.getString("phone2"));
                item.setPersonal_mail(rs.getString("personal_mail"));
                item.setEdu_mail(rs.getString("edu_mail"));
                item.setDept_id(rs.getInt("dept_id"));
                item.setEdu_status(rs.getString("edu_status"));
                item.setUsername(rs.getString("username"));
                item.setPassword(rs.getString("password"));

                try {
                    item.setDept(getDepts(con, "select * from departments where id = " + item.getDept_id()).get(0));
                } catch (Exception e) {
                    item.setDept(new Departments());
                }
                // set img in base 64 to show it in img tag in html
                InputStream inputStream = rs.getBlob("CV").getBinaryStream();
                item.setBase64_cv(getBase64(inputStream));

                data.add(item);
            }

            return data;
        } catch (SQLException | IOException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static ArrayList<GPA> getGPAs(Connection con, String sql) {

        try {
            ArrayList<GPA> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                GPA item = new GPA();
                item.setId(rs.getInt("id"));
                item.setStudent_id(rs.getInt("student_id"));
                item.setTerm_no(rs.getInt("term_no"));
                item.setGPA_value(rs.getDouble("GPA_value"));

                try {
                    item.setStudent(getStudents(con, "select * from students where id = " + item.getStudent_id()).get(0));
                } catch (Exception e) {
                    item.setStudent(new Students());
                }

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static String getBase64(InputStream inputStream) throws IOException {

        ByteArrayOutputStream outputStream_f = new ByteArrayOutputStream();
        byte[] buffer_f = new byte[4096];
        int bytesRead_f = -1;

        while ((bytesRead_f = inputStream.read(buffer_f)) != -1) {
            outputStream_f.write(buffer_f, 0, bytesRead_f);
        }

        byte[] imageBytes_f = outputStream_f.toByteArray();
        String base64Image_f = Base64.getEncoder().encodeToString(imageBytes_f);

        inputStream.close();
        outputStream_f.close();

        return base64Image_f;
    }

    public static ArrayList<Subjects> getSubjetcs(Connection con, String sql) {

        try {
            ArrayList<Subjects> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Subjects item = new Subjects();
                item.setId(rs.getInt("id"));
                item.setName_ar(rs.getString("name_ar"));
                item.setName_en(rs.getString("name_en"));
                item.setCode(rs.getString("code"));
                item.setSuccess_grade(rs.getDouble("success_grade"));
                item.setTotal_grade(rs.getDouble("total_grade"));
                item.setMin_students_no(rs.getInt("min_students_no"));
                item.setHours_no(rs.getInt("hours_no"));
                item.setDepends_on(rs.getInt("depends_on"));

                try {
                    item.setDept(getDepts(con, "select * from departments where id = " + item.getDepends_on()).get(0));
                } catch (Exception e) {
                    item.setDept(new Departments());
                }

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static ArrayList<Student_subjects> getStudent_subjetcs(Connection con, String sql) {

        try {
            ArrayList<Student_subjects> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Student_subjects item = new Student_subjects();
                item.setId(rs.getInt("id"));
                item.setStudent_id(rs.getInt("student_id"));
                item.setSubject_id(rs.getInt("subject_id"));
                item.setStatus(rs.getString("status"));
                item.setGPA(rs.getDouble("GPA"));
                item.setHour_no(rs.getInt("hour_no"));
                item.setStatus_info(rs.getString("status_info"));
                item.setGrade(rs.getString("grade"));
                item.setGrade_info(rs.getString("grade_info"));

                try {
                    item.setSub(getSubjetcs(con, "select * from subjects where id = " + item.getSubject_id()).get(0));
                    item.setStudent(getStudents(con, "select * from students where id = " + item.getStudent_id()).get(0));
                } catch (Exception e) {
                    item.setSub(new Subjects());
                    item.setStudent(new Students());
                }

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return null;

        }

    }

    public static ArrayList<Admins> getAdmins(Connection con, String sql) {

        try {
            ArrayList<Admins> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {

                Admins item = new Admins();
                item.setId(rs.getInt("id"));
                item.setStuff_id(rs.getInt("stuff_id"));

                try {
                    item.setAdminInfo(getStuff(con, "select * from stuff where id = " + item.getStuff_id()).get(0));
                } catch (Exception e) {
                    item.setAdminInfo(new Stuff());
                }

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();

            return null;

        }

    }

}
