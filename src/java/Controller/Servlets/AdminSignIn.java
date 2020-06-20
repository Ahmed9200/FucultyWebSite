/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Servlets;

import Model.Util.Helper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 20102
 */
public class AdminSignIn extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        if (Helper.checkAdminAuthentication(request)) {
            request.getRequestDispatcher("admin-panel.jsp").forward(request, response);
        } else if (Helper.checkStuffAuthentication(request)) {
            request.setAttribute("checked", false);
            request.setAttribute("stuff", true);
        } else {
            request.setAttribute("stuff", false);
            request.setAttribute("checked", false);
            request.getRequestDispatcher("admin-sign-in.jsp").forward(request, response);
        }

    }

}
