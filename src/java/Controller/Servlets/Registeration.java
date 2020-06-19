/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Servlets;

import Model.Util.Helper;
import Model.projetcModels.Students;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 20102
 */
public class Registeration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Students student = Helper.getStudentFromRegistrationForm(request);
        if (student != null) {

            if (student.add(Helper.con)) {

            } else {
                System.out.println("not added");
            }

        } else {
            System.out.println("some thing in data not send correctly");
        }

    }

}
