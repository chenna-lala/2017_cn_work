package nuc.sw.dao;

import nuc.sw.DB.DBUtil;
import nuc.sw.model.Picture;
import nuc.sw.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chenna on 2017/11/23.
 */
public class PictureImpl implements UserDao<Picture> {
    private Connection conn = DBUtil.getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    @Override
    public int adduser(User user) {
        return 0;
    }

    @Override
    public List<Picture> selectuser() {
        return null;
    }
//
//    @Override
//    public List<Picture> selectBypicname(Picture picturename) {
//        List<Picture> list = new ArrayList<Picture>();
//        try {
//            String sql = "select * from picture where picturename=?";
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, "picturename");
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Picture pic = new Picture();
//                pic.setPicturename(rs.getString(1));
//                pic.setAuthor(rs.getString(2));
//                pic.setTheme(rs.getString(3));
//                list.add(pic);
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }

    @Override
    public int addpicture(Picture picture) {
        int rs=0;
        String sql_insert = "insert into picture(picturename,author,theme)  values(?,?,?)";
        try {
            ps = conn.prepareStatement(sql_insert);
            System.out.print(sql_insert);
            ps.setString(1,picture.getPicturename());
            System.out.print(picture.getPicturename());
            ps.setString(2,picture.getAuthor());
            ps.setString(3,picture.getTheme());
            rs = ps.executeUpdate();
            System.out.print(rs);
        } catch (Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(rs);
        return rs;
    }

    @Override
    public List<Picture> findAll() {
        List<Picture> pictures=new ArrayList<Picture>();
        String sql="select * from picture";
        try {
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            Picture picture=null;
            while(rs.next()){
                picture=new Picture();
                picture.setPid(rs.getInt(1));
                picture.setPicturename(rs.getString(2));
                picture.setAuthor(rs.getString(3));
                picture.setTheme(rs.getString(4));
                picture.setPath(rs.getString("path"));
                pictures.add(picture);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.print(pictures);
        return pictures;
    }

    @Override
    public int DeleteUser(User user) {
        return 0;
    }

    @Override
    public List<User> selectUser(String username, String password) {
        return null;
    }

    @Override
    public List<Picture> selectPicturename(String picturename) {
        List<Picture> pictures=new ArrayList<Picture>();
        String sql="select * from picture where picturename like ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+picturename+"%");
            System.out.println("=======================");
            System.out.println("ps:"+ps);
            rs = ps.executeQuery();
            Picture picture=null;
            while (rs.next()){
                picture=new Picture();
               picture.setPid(rs.getInt(1));
               picture.setPicturename(rs.getString(2));
               picture.setAuthor(rs.getString(3));
               picture.setTheme(rs.getString(4));
               picture.setPath(rs.getString("path"));
               pictures.add(picture);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        System.out.println("pictures:"+pictures);
        return pictures;
    }

    @Override
    public int deleteMethod(Picture picture) {
        int rs = 0;
        String sql = "delete from picture where id=?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, picture.getPid());
            System.out.println("......");
            System.out.println(picture.getPid());
            rs = ps.executeUpdate();
            System.out.print("--------------");
            System.out.print(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    @Override
    public List<Picture> selecttheme(String theme) {
        List<Picture> pictures=new ArrayList<Picture>();
        String sql="select * from picture where theme like ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+theme+"%");
            rs = ps.executeQuery();
            Picture picture=null;
            while (rs.next()){
                picture=new Picture();
                picture.setPid(rs.getInt(1));
                picture.setPicturename(rs.getString(2));
                picture.setAuthor(rs.getString(3));
                picture.setTheme(rs.getString(4));
                picture.setPath(rs.getString("path"));
                pictures.add(picture);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return pictures;
    }
}

