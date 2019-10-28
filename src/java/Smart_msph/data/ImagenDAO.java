package Smart_msph.data;
import Smart_msph.data.RelDatabase;

import Smart_msph.logic.ImagenVO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ImagenDAO {

    /*Metodo listar*/
    public ArrayList<ImagenVO> Listar_ImagenVO() {
        ArrayList<ImagenVO> list = new ArrayList<ImagenVO>();
         RelDatabase conec=new RelDatabase();
        String sql = "SELECT * FROM news;";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ImagenVO vo = new ImagenVO();
                vo.setCodigoimg(rs.getInt(1));
                vo.setNombreimg(rs.getString(2));
                vo.setArchivoimg2(rs.getBytes(3));
                list.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
             
            } catch (Exception ex) {
            }
        }
        return list;
    }


    /*Metodo agregar*/
    public void Agregar_ImagenVO(ImagenVO vo) {
        RelDatabase conec=new RelDatabase();
        String sql = "INSERT INTO news (id, description, fileimg) VALUES(?, ?, ?);";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, vo.getCodigoimg());
            ps.setString(2, vo.getNombreimg());
            ps.setBlob(3, vo.getArchivoimg());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
               
            } catch (Exception ex) {
            }
        }
    }


    /*Metodo Modificar*/
    public void Modificar_ImagenVO(ImagenVO vo) {
       RelDatabase conec=new RelDatabase();
        String sql = "UPDATE news SET description = ?, fileimg = ? WHERE id = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNombreimg());
            ps.setBlob(2, vo.getArchivoimg());
            ps.setInt(3, vo.getCodigoimg());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
             
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Modificar*/
    public void Modificar_ImagenVO2(ImagenVO vo) {
         RelDatabase conec=new RelDatabase();
        String sql = "UPDATE news SET description = ? WHERE id = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNombreimg());
            ps.setInt(2, vo.getCodigoimg());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
              
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Eliminar*/
    public void Eliminar_ImagenVO(int id) {
       RelDatabase conec=new RelDatabase();
        String sql = "DELETE FROM news WHERE id = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
               
            } catch (Exception ex) {
            }
        }
    }


    /*Metodo Consulta id*/
    public ImagenVO getImagenVOById(int studentId) {
        ImagenVO vo = new ImagenVO();
        RelDatabase db=new RelDatabase();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM news WHERE id = ?;";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, studentId);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCodigoimg(rs.getInt(1));
                vo.setNombreimg(rs.getString(2));
                vo.setArchivoimg2(rs.getBytes(3));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
               
            } catch (Exception ex) {
            }
        }
        return vo;
    }

}
