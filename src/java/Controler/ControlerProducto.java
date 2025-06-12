package Controler;

import Entidades.producto;
import conexion.conexionBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author javie
 */
@WebServlet(name = "ControlerProducto", urlPatterns = {"/ControlerProducto"})
public class ControlerProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
 /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlerCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlerCliente at " + request.getContextPath() + "</h1>");
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

        String Op = request.getParameter("Op");
        ArrayList<producto> Lista = new ArrayList<producto>();
        conexionBD conBD = new conexionBD();
        Connection conn = conBD.Connected();
        PreparedStatement ps;
        ResultSet rs;
        switch (Op) {
            case "Listar":
                try {
                    String sql = "SELECT * FROM t_producto";
                    ps = conn.prepareStatement(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        producto prod = new producto();
                        prod.setId(rs.getString("Id_Prod"));
                        prod.setDescripcion(rs.getString("Descripcion"));
                        prod.setCosto(rs.getString("Costo"));
                        prod.setPrecio(rs.getString("Precio"));
                        prod.setCantidad(rs.getString("Cantidad"));
                        Lista.add(prod);
                    }
                    request.setAttribute("Lista", Lista);
                    request.getRequestDispatcher("listarProducto.jsp").forward(request, response);
                } catch (SQLException ex) {
                    System.out.println("Error de SQL..." + ex.getMessage());
                } finally {
                    conBD.Discconet();
                }
                break;
            case "Consultar":
                try {
                    String Id = request.getParameter("Id");
                    String sql = "select * from t_producto where Id_Prod=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, Id);
                    rs = ps.executeQuery();
                    producto prod = new producto();
                    while (rs.next()) {
                        prod.setId(rs.getString("Id_Prod"));
                        prod.setDescripcion(rs.getString("Descripcion"));
                        prod.setCosto(rs.getString("Costo"));
                        prod.setPrecio(rs.getString("Precio"));
                        prod.setCantidad(rs.getString("Cantidad"));
                        Lista.add(prod);
                    }
                    request.setAttribute("Lista", Lista);
                    request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);
                } catch (SQLException ex) {
                    System.out.println("Error de SQL..." + ex.getMessage());
                } finally {
                    conBD.Discconet();
                }
                break;
            case "Modificar":
                try {
                    String Id = request.getParameter("Id");
                    String sql = "select * from t_producto where Id_Prod=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, Id);
                    rs = ps.executeQuery();
                    producto prod = new producto();
                    while (rs.next()) {
                        prod.setId(rs.getString("Id_Prod"));
                        prod.setDescripcion(rs.getString("Descripcion"));
                        prod.setCosto(rs.getString("Costo"));
                        prod.setPrecio(rs.getString("Precio"));
                        prod.setCantidad(rs.getString("Cantidad"));
                        Lista.add(prod);
                    }
                    request.setAttribute("Lista", Lista);
                    request.getRequestDispatcher("modificarProducto.jsp").forward(request, response);
                } catch (SQLException ex) {
                    System.out.println("Error de SQL..." + ex.getMessage());
                } finally {
                    conBD.Discconet();
                }

                break;
            case "Eliminar":
                try {
                    String Id = request.getParameter("Id");
                    String sql = "delete from t_producto where Id_Prod=?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, Id);
                    ps.executeUpdate();
                    request.getRequestDispatcher("Productos.jsp").forward(request, response);
                } catch (SQLException ex) {
                    System.out.println("Error de SQL..." + ex.getMessage());
                } finally {
                    conBD.Discconet();
                }
                break;
            case "Nuevo":
                request.getRequestDispatcher("nuevoProducto.jsp").forward(request, response);
                break;
        }
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
        //processRequest(request, response);
        String Id = request.getParameter("Id");
        String Descripcion = request.getParameter("Descripcion");
        String Costo = request.getParameter("Costo");
        String Precio = request.getParameter("Precio");
        String Cantidad = request.getParameter("Cantidad");
        producto prod = new producto();

        prod.setId(Id);
        prod.setDescripcion(Descripcion);
        prod.setCosto(Costo);
        prod.setPrecio(Precio);
        prod.setCantidad(Cantidad);

        conexionBD conBD = new conexionBD();
        Connection conn = conBD.Connected();
        PreparedStatement ps;
        ResultSet rs;
        if (Id.isEmpty()) {
            String sql_new = "select max(Id_Prod) Id_Prod from t_producto";
            String sql = "insert into t_producto(Id_Prod, descripcion, costo, precio, cantidad) values(?, ?, ?, ?, ?)";

            try {
                /*Algoritmo para autogeneral el código*/
                //String Id_Producto="C00020";
                /*Algoritmo para autogenerar el código*/
                String Id_Prod = "";
                ps = conn.prepareStatement(sql_new);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Id_Prod = rs.getString("Id_Prod");
                }
                Id_Prod = newCod(Id_Prod);
                ps = conn.prepareStatement(sql);
                ps.setString(1, Id_Prod);
                ps.setString(2, prod.getDescripcion());
                ps.setString(3, prod.getCosto());
                ps.setString(4, prod.getPrecio());
                ps.setString(5, prod.getCantidad());
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("Error actualizando tabla..." + ex.getMessage());
            } finally {
                conBD.Discconet();
            }
        } else {
            String sql = "update t_producto set descripcion=?, costo=?, precio=?, cantidad=? where Id_Prod=?";

            try {
                ps = conn.prepareStatement(sql);
                ps.setString(1, prod.getDescripcion());
                ps.setString(3, prod.getCosto());
                ps.setString(4, prod.getPrecio());
                ps.setString(5, prod.getCantidad());
                ps.setString(5, prod.getId());
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("Error actualizando tabla..." + ex.getMessage());
            } finally {
                conBD.Discconet();
            }
        }

        response.sendRedirect("Productos.jsp");

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

    private String newCod(java.lang.String pCodigo) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        //com.service.util.WebServiceUtil port = service.getWebServiceUtilPort();
        int Numero;
        Numero = Integer.parseInt(pCodigo.substring(2));
        Numero = Numero + 1;
        pCodigo = String.valueOf(Numero);
        while (pCodigo.length() < 5) {
            pCodigo = '0' + pCodigo;
        }
        pCodigo = 'C' + pCodigo;
        return (pCodigo);
    }
}
