package nuc.sw.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import nuc.sw.model.User;
import nuc.sw.service.UserserviceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * Created by chenna on 2017/11/23.
 */
public class LoginAction extends ActionSupport {
    //属性驱动调用属性
    private String username;
    private String password;
//    private List<User> list = new ArrayList<>();

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//    //手动校验方法1
//    public void validate() {
//        //进行数据校验，长度3～15位
//        if (password == null || password.trim().equals("")) {
//            this.addFieldError("password", this.getText("pass"));
//        } else {
//            if (password.trim().length() < 3 || password.trim().length() > 15 || password == null) {
//                this.addFieldError("password", this.getText("pass.required"));
//            }
//        }
//        if (username == null || username.trim().equals("")) {
//            this.addFieldError("username", this.getText("user"));
//        } else {
//            if (!Pattern.matches("\\w{3,15}", username.trim())) {
//                this.addFieldError("username", this.getText("user.required"));
//            }
//        }
//    }


    public String loginMethod() {
        System.out.println("login action");
        UserserviceImpl usi = new UserserviceImpl();
        //usi.selectUser(username,password);
        //return "loginok";
        ActionContext.getContext().getSession().put("user",username);
//        int result = usi.selectUser(username,password);
        return usi.selectUser(username,password);
    }
}


