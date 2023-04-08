/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import j48.algoritmo.J48Algoritmo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DUVAN
 */@WebServlet(name = "MyServlet", urlPatterns = {"/MyServlet"})
public class MyServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MyServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }*/

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
        //processRequest(request, response);
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
        
        String Pregnancies = request.getParameter("pregnancies");
        String Glucose = request.getParameter("glucose"); 
        String BloodPressure = request.getParameter("bloodPressure"); 
        String SkinThickness = request.getParameter("skinThickness"); 
        String Insulin = request.getParameter("insulin"); 
        String BMI = request.getParameter("bmi"); 
        String DiabetesPedigreeFunction = request.getParameter("diabetesPedigreeFunction"); 
        String Age = request.getParameter("age");
        String link = "", msj = "";
        int decision = 0;
        
        
        // Convertir los parámetros a números enteros
        double pregnancies = Double.parseDouble(Pregnancies);
        double glucose = Double.parseDouble(Glucose);
        double bloodPressure = Double.parseDouble(BloodPressure);
        double skinThickness = Double.parseDouble(SkinThickness);
        double insulin = Double.parseDouble(Insulin);
        double bmi = Double.parseDouble(BMI);
        double diabetesPedigreeFunction = Double.parseDouble(DiabetesPedigreeFunction);
        double age = Integer.parseInt(Age);
        
        J48Algoritmo outcome = new J48Algoritmo();
    
        try {
            decision = (int) outcome.decisionJ48(pregnancies, glucose, bloodPressure, skinThickness, insulin, bmi, diabetesPedigreeFunction, age);
        } catch (Exception ex) {
            Logger.getLogger(MyServlet.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error!");
        }
        
        //reenvía la solicitud del servlet a la vista 'output'
            RequestDispatcher reqdis = request.getRequestDispatcher("/output.jsp");
            
            if(decision == 0){ //No
                link = "resources/img/saludable.png"; 
                msj = "No tienes diabates";
            }else { //Si
                link = "resources/img/diabetes.png";    
                msj = "Oh no, si tienes diabetes...";
            }
            
            request.setAttribute("link", link);
            request.setAttribute("msj", msj);
            reqdis.forward(request, response);
        
        
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
