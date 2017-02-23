/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpb.bdncservlets;

import br.edu.ifpb.bdncentities.RespostaEnquete;
import br.edu.ifpb.bdncentities.Survey;
import br.edu.ifpb.bdncmanager.GerenciadorEnquete;
import br.edu.ifpb.bdncmanager.GerenciadorRespostas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author Zilderlan
 */
@WebServlet(name = "VisualizarEnqueteServlet", urlPatterns = {"/visualizarenqueteservlet.do"})
public class VisualizarEnqueteServlet extends HttpServlet {

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
        String param = (String) request.getParameter("param");
        HttpSession s = request.getSession();
        GerenciadorEnquete g = new GerenciadorEnquete();
        Survey su = g.pesquisaId(Integer.parseInt(param));
        GerenciadorRespostas re = new GerenciadorRespostas();
        List<RespostaEnquete> l = re.respostas(Integer.parseInt(param));
        RespostaEnquete resp;
        double sim = 0;
        double totalSim = 0;
        double totalNao = 0;
        double nao = 0;
        double indeciso = 0;
        double totalIndeciso = 0;
        int total = 0;

        for (RespostaEnquete c : l) {
            total++;
            if (c.getResp().equalsIgnoreCase("sim")) {
                sim++;
            }
            if (c.getResp().equalsIgnoreCase("nao")) {
                nao++;
            }
            if (c.getResp().equalsIgnoreCase("indeciso")) {
                indeciso++;
            }
            
            totalSim = 100*sim/total;
            totalNao = 100*nao/total;
            totalIndeciso = 100*indeciso/total;

        }

        s.setAttribute("total", total);
        s.setAttribute("sim", totalSim);
        s.setAttribute("nao", totalNao);
        s.setAttribute("indeciso", totalIndeciso);
        s.setAttribute("enquete", su);
        response.sendRedirect("enquete.jsp");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VisualizarEnqueteServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("Resp sim: "+sim);
            out.println("Resp não: "+nao);
            out.println("Resp indeciso"+indeciso);
            out.println("Tot indeciso"+totalSim);
            out.println("Tot indeciso"+totalNao);
            out.println("Tot indeciso"+totalIndeciso);
            out.println("Total: "+total);
            for (RespostaEnquete c : l) {
               out.println(c.getResp());
            }
            out.println("<h1>Servlet VisualizarEnqueteServlet at " + l + "</h1>");
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
