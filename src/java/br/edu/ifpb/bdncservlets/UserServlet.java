/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncservlets;

import br.edu.ifpb.bdncentities.Localization;
import br.edu.ifpb.bdncentities.User;
import br.edu.ifpb.bdncmanager.GerenciadorUser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zilderlan
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/userservlet.do"})
public class UserServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String sexo = (String) request.getParameter("sexo");
            String idade = (String) request.getParameter("age");
            String renda = (String) request.getParameter("rent");
            String escolaridade = (String) request.getParameter("scooling");
            String lat = (String) request.getParameter("text-lat");
            String longi = (String) request.getParameter("text-long");
            String email = (String) request.getParameter("email");
            String senha = (String) request.getParameter("password");

            User user = new User();

            user.setEmail(email);
            user.setPassword(senha);
            user.setRent(renda);
            user.setScooling(escolaridade);
            user.setAge(idade);
            user.setLat(Double.parseDouble(lat));
            user.setLang(Double.parseDouble(longi));
            user.setSexo(sexo);
            GerenciadorUser g = new GerenciadorUser();
            boolean result = g.userAdd(user);
            if (!result){
//                request.getRequestDispatcher("map.jsp").include(request, response);
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("Home.jsp");
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("sexo: " + sexo);
            out.println("Idade: " + idade);
            out.println("Renda: " + renda);
            out.println("Escolaridade: " + escolaridade);
            out.println("Lat: " + lat);
            out.println("Long: " + longi);
            out.println("Senha: " + senha);
            out.println("Email: " + email);
            out.println("<h1>Servlet UserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
