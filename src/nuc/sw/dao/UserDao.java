package nuc.sw.dao;

import nuc.sw.model.Picture;
import nuc.sw.model.User;

import java.util.List;

/**
 * Created by chenna on 2017/11/23.
 */
public interface UserDao<T> {
    public int adduser(User user);
    public List<T> selectuser();
//    public List<T> selectBypicname(Picture picturename);
    public int addpicture(Picture picture);
    public List<T> findAll();
    public int DeleteUser(User user);
    public List<User> selectUser(String username,String password);
    public List<T> selectPicturename(String picturename);
    public int deleteMethod(Picture picture);
    public List<T> selecttheme(String theme);

}
