package nuc.sw.service;

import nuc.sw.dao.UserDaoImpl;
import nuc.sw.model.Picture;
import nuc.sw.model.User;

import java.util.List;

/**
 * Created by chenna on 2017/11/23.
 */
public class UserserviceImpl implements Userservice{
    @Override
    public int adduser(User user) {
        UserDaoImpl udi = new UserDaoImpl();
        int users=udi.adduser(user);
        System.out.println(users);
        return users;
    }


   public String selectUser(String username, String password) {
       System.out.println("login service");
        UserDaoImpl udi = new UserDaoImpl();
       List<User> userList = udi.selectUser(username, password);
       if(userList!=null)
    {
        return "loginok";
    }
    return "input";
    }

//    @Override
//    public String selectBypicname(Picture picturename) {
//        return null;
//    }

    @Override
    public int addpicture(Picture picture) {
        return 0;
    }

    @Override
    public List<Picture> findAll() {
        return null;
    }

//    @Override
//    public int DeleteUser(User user) {
//        UserDaoImpl udi = new UserDaoImpl();
//        int users=udi.DeleteUser(user);
//        System.out.println(users);
//        return users;
//    }

    @Override
    public String selectuser() {
        return null;
    }

    @Override
    public List<Picture> selectPicturename(String picturename) {
        return null;
    }

    @Override
    public int deleteMethod(Picture picture) {
        return 0;
    }

    @Override
    public int DeleteUser(User user) {
        UserDaoImpl udi = new UserDaoImpl();
      int users=udi.DeleteUser(user);
      System.out.println(users);
       return users;
    }

    @Override
    public List<Picture> selecttheme(String theme) {
        return null;
    }
}
