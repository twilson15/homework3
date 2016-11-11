/*
<%-- 
   Copyright Robert Feather, Kevin Kowalsky
--%>
 */
package edu.elon.data;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import business.Value;

/**
 *
 * @author rfeather
 */

public class Calculate extends HttpServlet {

        String amount="";
        String rate="";
        String years="";

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
        
        doPost(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 String url = "/final.jsp";

        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            amount = request.getParameter("Amount");
            rate = request.getParameter("Rate");
            years = request.getParameter("Years");
               Value value = new Value(amount,rate,years);
        request.setAttribute("value", value);
        
          
        }
        
     
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        
      
    }

    
   
}
