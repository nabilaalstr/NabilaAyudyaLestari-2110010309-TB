
package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import static jdk.nashorn.internal.runtime.Debug.id;

public class datapegawai {
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
  
    private String sql;
    public String nama;
    public String nip;
    public String jabatan;
    public String jenis_kelamin;
    public String agama;
    public String alamat;
    private int id;
    
    public void simpan() throws SQLException{
        conn = connect.GetConnection();
        sql = "INSERT INTO data_karyawan (Nama,NIP,Jabatan,Jenis_Kelamin,Agama,Alamat)VALUES(?,?,?,?,?,?)";
        pst = conn.prepareStatement(sql);
        pst.setString(1, nama);
        pst.setString(2, nip);
        pst.setString(3, jabatan);
        pst.setString(4, jenis_kelamin);
        pst.setString(5, agama);
        pst.setString(6, alamat);
        pst.execute();
        pst.close();
    }
    

        public void ubah() {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/aplikasi_kepegawaian", "root", "")) {
            String sql = "UPDATE data_karyawan SET nama=?, nip=?, jabatan=?, jenis_kelamin=?, agama=?, alamat=? WHERE id=?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, nama);
                stmt.setString(2, nip);
                stmt.setString(3, jabatan);
                stmt.setString(4, jenis_kelamin);
                stmt.setString(5, agama);
                stmt.setString(6, alamat);
                stmt.setInt(7, id);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Data berhasil diubah.");
                } else {
                    System.out.println("Tidak ada perubahan data.");
                }
            }
        } catch (SQLException e) {
            System.out.println("Terjadi kesalahan: " + e.getMessage());
        }
    

    }
      
      public void hapus()throws SQLException{
          conn = connect.GetConnection();
          String sql = "DELETE from data_karyawan where nip=?";
          try{
              pst=conn.prepareStatement(sql);
              pst.setString(1, nip);
              pst.execute();
          }catch (Exception e){
              JOptionPane.showMessageDialog(null, e);
          }
      }
      
      public ResultSet UpdateJTable ()throws SQLException{
          conn = connect.GetConnection();
          sql = "select Nama,NIP,Jabatan,Jenis_Kelamin,Agama,Alamat from data_karyawan";
          pst = conn.prepareStatement(sql);
          rs = pst.executeQuery();
          return rs;
      }
}
