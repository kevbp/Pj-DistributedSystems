package Controler;

import Entidades.usuarios;
import Utilitarios.Encriptacion;
import conexion.conexionBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ValidarLogin", urlPatterns = {"/ValidarLogin"})
public class ValidarLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//       response.setContentType("text/html;charset=UTF-8");
//       String user, pass;
//       user = request.getParameter("txtUsuario");
//       pass= request.getParameter("txtClave");
//       //user=admin, clave=1234
//       if(user.equals("admin")&&pass.equals("1234")){
//           usuarios nuser=new usuarios(user,pass);
//           HttpSession session = request.getSession();
//           session.setAttribute("user", nuser);
//           request.getRequestDispatcher("index.jsp").forward(request, response);
//       }
//       else{
//           request.getRequestDispatcher("ErrorLogin").forward(request, response);
//       }

//         String usuario = request.getParameter("txtUsuario");
//         String clave = request.getParameter("txtClave");
//         Connection conn= null;
//         try {
//            conexionBD bd= new conexionBD();
//            conn= bd.Connected();
//            String sql= "SELECT * FROM t_usuario WHERE IdUsuario=? AND Passwd=?";
//            PreparedStatement ps=conn.prepareStatement(sql);
//            ps.setString(1, usuario);
//            ps.setString(2, clave);
//            ResultSet rs= ps.executeQuery();
//            if(rs.next()){
//                usuarios nuser=new usuarios(usuario,clave);
//                HttpSession session = request.getSession();
//                session.setAttribute("user", nuser);
//                request.getRequestDispatcher("index.jsp").forward(request, response);  
//            }
//            else{
//                request.getRequestDispatcher("ErrorLogin").forward(request, response);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendRedirect("login.jsp");
//        }
        String usuario = request.getParameter("txtUsuario");
        String clave = request.getParameter("txtClave");

        Encriptacion encriptador = new Encriptacion();
        String claveEncriptada = encriptador.encode(clave);

        try {
            conexionBD bd = new conexionBD();
            Connection conn = bd.Connected();
            String sql = "SELECT * FROM t_usuario WHERE codUsuario=? AND pass=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, claveEncriptada);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                usuarios nuser = new usuarios(usuario, claveEncriptada);
                HttpSession session = request.getSession();
                session.setAttribute("user", nuser);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("ErrorLogin.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
