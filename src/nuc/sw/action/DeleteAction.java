package nuc.sw.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import nuc.sw.model.User;
import nuc.sw.service.UserserviceImpl;

/**
 * Created by chenna on 2017/11/25.
 */
public class DeleteAction extends ActionSupport implements ModelDriven<User>{
    User user=new User();

    @Override
    public User getModel() {
        return user;
    }

    public String deleteMethod() {
        System.out.print(user);
        UserserviceImpl usi = new UserserviceImpl();
        usi.DeleteUser(user);
        return "ok";
    }
}
