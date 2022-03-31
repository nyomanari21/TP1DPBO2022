/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tp1dpbo;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Acer Laptop
 */
public class dbConnection {
    public static Connection con;
    public static Statement stm;
    
    public void connect(){//untuk membuka koneksi ke database
        try {
            String url ="jdbc:mysql://localhost/tp1dpbo";
            String user="root";
            String pass="";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
            stm = con.createStatement();
            System.out.println("koneksi berhasil;");
        } catch (Exception e) {
            System.err.println("koneksi gagal" +e.getMessage());
        }
    }
    
    public DefaultTableModel readAutor(){
        
        DefaultTableModel dataTabelAutor = null;
        try{
            Object[] column = {"No", "Image", "Nama", "Jumlah Buku"};
            connect();
            dataTabelAutor = new DefaultTableModel(null, column);
            String sql = "Select id,img,nama,jumlah_buku from autor";
            ResultSet res = stm.executeQuery(sql);
            
            while(res.next()){
                Object[] hasil = new Object[4];
                hasil[0] = res.getString("id");
                hasil[1] = res.getString("img");
                hasil[2] = res.getString("nama");
                hasil[3] = res.getString("jumlah_buku");
                System.out.print(hasil[1]);
                dataTabelAutor.addRow(hasil);
            }
        }catch(Exception e){
            System.err.println("Read gagal " +e.getMessage());
        }
        
        return dataTabelAutor;
    }
    
    public DefaultTableModel readBuku(){
        
        DefaultTableModel dataTabelBuku = null;
        try{
            Object[] column = {"No", "Image", "Penerbit", "Autor", "Deskripsi"};
            connect();
            dataTabelBuku = new DefaultTableModel(null, column);
            String sql = "Select id,img,penerbit,autor,deskripsi from buku";
            ResultSet res = stm.executeQuery(sql);
            
            while(res.next()){
                Object[] hasil = new Object[5];
                hasil[0] = res.getString("id");
                hasil[1] = res.getString("img");
                hasil[2] = res.getString("penerbit");
                hasil[3] = res.getString("autor");
                hasil[4] = res.getString("deskripsi");
                System.out.print(hasil[1]);
                dataTabelBuku.addRow(hasil);
            }
        }catch(Exception e){
            System.err.println("Read gagal " +e.getMessage());
        }
        
        return dataTabelBuku;
    }
    
    public void Query(String inputan){
        
        try{
            connect();
            String sql = inputan;
            stm.execute(sql);
            
        }catch(Exception e){
            System.err.println("Read gagal " +e.getMessage());
        }
        
    }
}
