/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import classe.DetailsCommande;
import classe.Paiement;
import classe.ProduitTable;
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
public class TraitementPaiement1 extends HttpServlet {

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
            out.println("<title>Servlet TraitementPaiement1</title>");            
            out.println("</head>");
            out.println("<body>");
            try {
                HttpSession session = request.getSession(true);
                int grade = Integer.parseInt(session.getAttribute("grade").toString());
                int id_table = Integer.valueOf(request.getParameter("id").trim());
                ProduitTable p = new ProduitTable();
                ProduitTable[] listeProduitTable = p.getProduitTables(id_table);
                int id_modePaiement = Integer.valueOf(request.getParameter("mode").trim());
                for (int i = 0; i < listeProduitTable.length; i++) {
                    ProduitTable produitTable = listeProduitTable[i];
                    int id_detailsCommande = produitTable.getId_detailsCommande();
                    DetailsCommande d = new DetailsCommande();
                    DetailsCommande dc = d.getDetailsCommande(id_detailsCommande);
                    double montant = d.getMontant(id_detailsCommande);
                    Paiement pa = new Paiement();
                    pa.insertPaiement(id_modePaiement, id_detailsCommande, montant);
                    dc.updateEtatPayer();
                }
                request.setAttribute("grade", grade);
                RequestDispatcher dispatch = request.getRequestDispatcher("/TraitementCaisse");
                dispatch.forward(request,response);
            } catch (Exception e) {
                out.println("<h1>Erreur : " + e.getMessage() + "</h1>");
                e.printStackTrace();
            }
            out.println("<h1>Servlet TraitementPaiement1 at " + request.getContextPath() + "</h1>");
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
