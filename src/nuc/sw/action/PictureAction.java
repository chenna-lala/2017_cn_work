package nuc.sw.action;

import nuc.sw.model.Picture;
import nuc.sw.service.PictureserviceImpl;

import java.util.List;

/**
 * Created by chenna on 2017/11/24.
 */
public class PictureAction {

    private List<Picture> picture=null;
    private String picturename;
    private String theme;

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getPicturename() {
        return picturename;
    }

    public void setPicturename(String picturename) {
        this.picturename = picturename;
    }

    public List<Picture> getPicture() {
        return picture;
    }

    public void setPicture(List<Picture> picture) {
        this.picture = picture;
    }

    public String findAll(){
        PictureserviceImpl pic=new PictureserviceImpl();
        picture = pic.findAll();
        for (Picture p:picture
             ) {
            System.out.println(p.getPath());
        }
            return "findAllOK";


    }
    public String selectpicturename()
    {
        PictureserviceImpl pic=new PictureserviceImpl();
        picture = pic.selectPicturename(picturename);
        for (Picture p:picture){
            System.out.println(p.getPath());
        }
        return "findOK";
    }
    public String deleteMethod()
    {
        Picture picture =new Picture();
        PictureserviceImpl pic=new PictureserviceImpl();
        pic.deleteMethod(picture);
        return "deleteok";
    }
    public String selecttheme()
    {
        PictureserviceImpl pic=new PictureserviceImpl();
        picture = pic.selecttheme(theme);
        for (Picture p:picture){
            System.out.println(p.getPath());
        }
        return "findOK";
    }
}
