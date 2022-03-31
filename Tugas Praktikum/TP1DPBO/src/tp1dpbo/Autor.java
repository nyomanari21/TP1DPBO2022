/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tp1dpbo;

/**
 *
 * @author Acer Laptop
 */
public class Autor {
    
    //atribut private
    private int id; //id autor
    private String img; //url gambar autor
    private String nama; //nama autor
    private int jumlah_buku; //jumlah buku yang diterbitkan

    //konstruktor
    public Autor() {
    }

    //getter dan setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getJumlah_buku() {
        return jumlah_buku;
    }

    public void setJumlah_buku(int jumlah_buku) {
        this.jumlah_buku = jumlah_buku;
    }
    
    
    
}
