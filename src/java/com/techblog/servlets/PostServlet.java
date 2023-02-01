package com.techblog.servlets;

import com.techblog.dao.PostDao;
import com.techblog.entities.User;
import com.techblog.entities.Post;
import com.techblog.helper.ConnectionProvider;
import com.techblog.helper.FileHelper;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author mht19
 */
@MultipartConfig
public class PostServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            
            int cid = Integer.parseInt(request.getParameter("cid"));
            String title  = request.getParameter("title");
            String content = request.getParameter("content");
            String code = request.getParameter("code");
            Part imagePath = request.getPart("image");
            
            HttpSession session = request.getSession();
            User user = (User)session.getAttribute("current_user");
            
            Post p = new Post(title, content, code, imagePath.getSubmittedFileName(), null, cid, user.getUser_id());
            PostDao dao = new PostDao(ConnectionProvider.getConnection());
            if(dao.savePost(p)){
                out.print("done");
                String imagepath = request.getRealPath("/")+"blog_pics"+File.separator+imagePath.getSubmittedFileName();
                boolean flag = FileHelper.saveFile(imagePath.getInputStream(), imagepath);
            }
            else{
                out.print("error");
            }
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
