package nuc.sw.service;

import nuc.sw.model.Picture;
import nuc.sw.model.User;

import java.util.List;

/**
 * Created by chenna on 2017/11/23.
 */
public interface Userservice {
    public int adduser(User user);
    public String selectuser();
//    public String selectBypicname(Picture picturename);
    public int addpicture(Picture picture);
    public List<Picture> findAll();
    public String selectUser(String username,String password);
    public List<Picture> selectPicturename(String picturename);
    public int deleteMethod(Picture picture);
    public int DeleteUser(User user);
    public List<Picture> selecttheme(String theme);

}
