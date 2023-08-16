/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tareas;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Conectar {
    Connection conn = null;
    
    public Connection conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/tareasdb","root","");
            System.out.println("Se conectó");
        } catch (Exception e) {
            System.out.println("Mensaje. No se conectó" +e);
            JOptionPane.showMessageDialog(null, "No se conectó");
        }
        return conn;
    }
}
