package nuc.sw.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import nuc.sw.model.Picture;
import nuc.sw.service.PictureserviceImpl;

/**
 * Created by chenna on 2017/11/26.
 */
public class DeletePictureAction extends ActionSupport implements ModelDriven<Picture> {
    Picture picture=new Picture();

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    @Override
    public Picture getModel() {
        return picture;
    }
    public String deletepictureMethod() {

        PictureserviceImpl usi = new PictureserviceImpl();
        usi.deleteMethod(picture);
        System.out.println("111111111");
        System.out.println(picture);
        return "ok";
    }
}
