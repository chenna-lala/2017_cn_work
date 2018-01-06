package nuc.sw.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import nuc.sw.model.User;
import nuc.sw.service.UserserviceImpl;

/**
 * Created by chenna on 2017/11/23.
 */
public class RegistAction extends ActionSupport implements ModelDriven<User>{
    User user = new User();
    @Override
    public User getModel() {
        return user;
    }
    public String registMethod() {
        System.out.print(user);
        UserserviceImpl usi = new UserserviceImpl();
        usi.adduser(user);
        return "ok";
    }

}
