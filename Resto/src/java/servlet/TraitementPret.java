/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import classe.DetailsCommande;
import classe.Recette;
import classe.Stock;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jayks
 */
public class TraitementPret extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TraitementPret</title>");            
            out.println("</head>");
            out.println("<body>");
            try {
                HttpSession session = request.getSession(true);
                int grade = Integer.parseInt(session.getAttribute("grade").toString());
                int id = Integer.valueOf(request.getParameter("id").trim());
                DetailsCommande d = new DetailsCommande();
                DetailsCommande det = d.getDetailsCommande(id);
                Recette r = new Recette();
                Stock s = new Stock();
                Recette[] listeRecette = r.getRecette(det.getId_produit());
                for (int i = 0; i < listeRecette.length; i++) {
                    Recette recette = listeRecette[i];
                    int sortie = recette.getDose_ingredient() * det.getQuantite();
                    s.insertStock(recette.getId_ingredient(), 0, sortie);
                }
                d.setId_detailsCommande(id);
                d.updateEtatPret();
                request.setAttribute("grade", grade);
                RequestDispatcher dispatch = request.getRequestDispatcher("/TraitementLivraison");
                dispatch.forward(request,response);
            } catch (Exception e) {
            }
            out.println("<h1>Servlet TraitementPret at " + request.getContextPath() + "</h1>");
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
