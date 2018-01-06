package nuc.sw.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import nuc.sw.model.Picture;
import nuc.sw.service.PictureserviceImpl;


/**
 * Created by chenna on 2017/11/23.
 */
public class addpictureAction extends ActionSupport implements ModelDriven<Picture>{
    Picture picture=new Picture();
    @Override
    public Picture getModel() {
        return picture;
    }

    public String addpictureMethod() {
        System.out.println(picture.getPicturename());
        System.out.println(picture.getAuthor());
        System.out.println(picture.getTheme());
        System.out.println(picture);
        PictureserviceImpl usi = new PictureserviceImpl();
        usi.addpicture(picture);
        return "ok";
    }

}

