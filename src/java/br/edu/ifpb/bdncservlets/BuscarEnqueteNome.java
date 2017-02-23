/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.edu.ifpb.bdncservlets;

import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncmanager.GerenciadorEnquete;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "BuscarEnqueteNome", urlPatterns = {"/buscarenquetenome.do"})
public class BuscarEnqueteNome extends HttpServlet {

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
        String busca = (String) request.getParameter("pesquisa-enquete").trim();

        GerenciadorEnquete g = new GerenciadorEnquete();

        List<Survey> l = g.pesquisaNome(busca);

        HttpSession s = request.getSession();


        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        if (l.isEmpty() || busca.equals("")) {
            s.setAttribute("msgErr", "Desculpe, nada encontrado");
            response.sendRedirect("Home.jsp");
        }else{

        s.setAttribute("listEnquete", l);
        response.sendRedirect("Pesquisa.jsp");
        }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BuscarEnqueteNome</title>");
            out.println("</head>");
            out.println("<body>");
            for(Survey s1: l){
                if (l.isEmpty() || busca.isEmpty()) {
                    out.println("Nada encontrado");
                }else
              out.println(s1);  
            }
            out.println("<h1>Servlet BuscarEnqueteNome at " + busca + "</h1>");
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
