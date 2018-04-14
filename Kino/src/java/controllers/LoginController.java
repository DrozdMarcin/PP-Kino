package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.User;
import javax.servlet.http.HttpSession;
import java.security.*;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginController extends HttpServlet 
{
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  
        {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            try 
            {
                User user = new User();

                user.setUser(request.getParameter("user"));
                byte[] bytesOfMessage = request.getParameter("pwd").getBytes("UTF-8");
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] thedigest = md.digest(bytesOfMessage);
                user.setPwd(Arrays.toString(thedigest));


                if(User.LoginUser(request.getParameter("user"),Arrays.toString(thedigest)))
                {
                    User us = new User();
                    us.setUser(String.valueOf(request.getParameter("user")));
                    us.GetUser();

                    HttpSession sessionUser = request.getSession();
                    sessionUser.setAttribute("user",us.getUser());

                    RequestDispatcher rd1 = request.getRequestDispatcher("index_zalogowany.jsp");
                    rd1.forward(request,response);
                }  
                else
                {
                    out.println("Niepoprawny login lub hasło !");
                    out.println("<a href=\"login_form.jsp\">Sprobuj ponownie...</a>");
                }    
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            } finally {out.close();}
        }
        
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        public String getServletInfo() 
        {
            return "Short description";
        }
}   