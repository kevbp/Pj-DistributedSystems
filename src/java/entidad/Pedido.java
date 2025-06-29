
package entidad;

import java.util.List;

public class Pedido {
    private String numPedido;
    private String codUsuario;
    private String codCliente;
    private String fec;
    private DetallePedido ped;

    
    
    public String getNumPedido() {
        return numPedido;
    }

    public void setNumPedido(String numPedido) {
        this.numPedido = numPedido;
    }

    public String getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(String codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(String codCliente) {
        this.codCliente = codCliente;
    }

    public String getFec() {
        return fec;
    }

    public void setFec(String fec) {
        this.fec = fec;
    }

    public DetallePedido getPed() {
        return ped;
    }

    public void setPed(DetallePedido ped) {
        this.ped = ped;
    }
    
    
}
