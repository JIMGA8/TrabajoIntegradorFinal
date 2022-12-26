/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.*;


/**
 *
 * @author GOIAR
 */
public class Conexion
{
    public String driver="com.mysql.jdbc.Driver";
    
    public Connection getConnection() throws SQLException{
        Connection conexion=null;
        try{
            Class.forName(driver);
            conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud11455","root","");
        }
        catch(ClassNotFoundException|SQLDataException e){
            System.out.println(e);
        }
        
        return conexion;
    }
    
    public static void main(String[] args) throws SQLException {
        Connection conexion=null;
        Conexion con = new Conexion();
        conexion=con.getConnection();
        
        PreparedStatement ps;
        ResultSet rs;
        
        ps=conexion.prepareStatement("select * from socios");
        
        rs=ps.executeQuery();
        
        while (rs.next()){
            int id=rs.getInt("idSocio");
            String nombre=rs.getString("nombre");
            System.out.println("ID:"+id+" nombre:"+nombre);
        }
    }
}
