package nuc.sw.service;

import nuc.sw.dao.PictureImpl;
import nuc.sw.dao.UserDaoImpl;
import nuc.sw.model.Picture;
import nuc.sw.model.User;

import java.util.List;

/**
 * Created by chenna on 2017/11/23.
 */
public class PictureserviceImpl implements Userservice{
    @Override
    public int adduser(User user) {
        return 0;
    }

    @Override
    public String selectUser(String username, String password) {
        return null;
    }

    @Override
    public String selectuser() {
        return null;
    }


//    @Override
//    public String selectBypicname(Picture picturename) {
//        UserDaoImpl udi = new UserDaoImpl();
//        Picture picture=(Picture)udi.selectBypicname(picturename);
//        System.out.print(picture);
//        return "ok";
//    }

    @Override
    public int addpicture(Picture picture) {
        PictureImpl udi = new PictureImpl();
        int pictures=udi.addpicture(picture);
        System.out.println(pictures);
        return pictures;
    }

    @Override
    public List<Picture> findAll() {
        PictureImpl psi=new PictureImpl();
        List<Picture> picture= (List<Picture>) psi.findAll();
        return (List<Picture>) picture;
    }

    public List<Picture> selectPicturename(String picturename) {
        PictureImpl psi=new PictureImpl();
        List<Picture> picture=psi.selectPicturename(picturename);
        return picture;
    }

    @Override
    public int deleteMethod(Picture picture) {
        PictureImpl psi=new PictureImpl();
        int pic=psi.deleteMethod(picture);
        return pic;
    }

    @Override
    public int DeleteUser(User user) {
        return 0;
    }

    @Override
    public List<Picture> selecttheme(String theme) {
        PictureImpl psi=new PictureImpl();
        List<Picture> picture=psi.selecttheme(theme);
        return picture;
    }
}
