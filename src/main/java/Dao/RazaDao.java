/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package Dao;
 
import Conexion.Conexion;
import Model.Raza;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
 
/**
*
* @author JOSUEDAVID
*/
public class RazaDao extends Conexion {
    private Conexion c;
 
    public RazaDao(Conexion conexion) {
        this.c = conexion;
    }
    public ArrayList<Raza> mostrarRaza(){
        ArrayList<Raza> lista = new ArrayList<>();
        try {
            this.c.conectar();
            String sql = "SELECT * FROM mybd.raza;";
            try (PreparedStatement pre = this.c.getCon().prepareStatement(sql);ResultSet rs = pre.executeQuery()){
                while (rs.next()){
                    Raza rz = new Raza();
                    rz.setIdRaza(rs.getInt(1));
                    rz.setDescripcion(rs.getString(2));
                    lista.add(rz);
                }
            }
        } catch (Exception e) {
            System.out.println("error al mostrar " + e.getMessage());
        } finally {
            this.c.desconectar();
        }
        return lista;
    }
    
    public int insertarRaza(Raza rz){
        
        int res = 0;
        
        try {
            this.c.conectar();
            String sql = "INSERT INTO mydb.raza(Descripcion) VALUES (?)";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, rz.getDescripcion());
            
            res = pre.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Error al Insertar" + e.getMessage());
        } finally {
            this.desconectar();
        }
        return res;
    }
}
