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
public class UserDaoImpl implements UserDao{
    Connection conn= DBUtil.getConnection();
    PreparedStatement ps=null;

    @Override
    public int adduser(User user) {
        int rs=0;
        System.out.print(user);
        String sql_insert = "insert into user(username,password,repassword,tel,email) values(?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(sql_insert);
            System.out.print(sql_insert);
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getRepassword());
            ps.setString(4,user.getTel());
            ps.setString(5,user.getEmail());
            rs = ps.executeUpdate();
            System.out.print(rs);
        } catch (Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(rs);
        System.out.println("111");
        return rs;
    }




    @Override
    public List<User> selectuser() {
        ResultSet rs=null;
        List<User> list = new ArrayList<User>();
        try {
            String sql_select = "select * from user";
            ps = conn.prepareStatement(sql_select);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getString(1));
                user.setUsername(rs.getString(2));
                user.setPassword(rs.getString(3));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

//    @Override
//    public List selectBypicname(Picture picturename) {
//        return null;
//    }

    @Override
    public int addpicture(Picture picture) {
        return 0;
    }

    @Override
    public List findAll() {
        return null;
    }

    public int DeleteUser(User user) {
        int rs = 0;
        try {
            String sql_delete = "delete from user where id=?";
             ps = conn.prepareStatement(sql_delete);
             ps.setString(1,user.getId());
            //ps.setString(1,user.getUsername());
            rs = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;

    }

    @Override
    public List<User> selectUser(String username, String password) {
        List<User> userList = new ArrayList<>();
        //language=SQL
        String sql = "select * from user WHERE username = ? and password = ?;";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                User user=new User();
                user.setId(resultSet.getString("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public List selectPicturename(String picturename) {
        return null;
    }

    @Override
    public int deleteMethod(Picture picture) {
        return 0;
    }

    @Override
    public List selecttheme(String theme) {
        return null;
    }
}
