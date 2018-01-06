package nuc.sw.action;

/**
 * Created by chenna on 2017/11/24.
 */
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import nuc.sw.model.MyFile;
import nuc.sw.model.Upload;
import nuc.sw.service.FileserviceImpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

public class UploadAction  extends ActionSupport implements ModelDriven<Upload> {
    Upload upload =new Upload();

    private String savePath;

    @Override
    public Upload getModel() {
        return upload;
    }

    public String Upload(){
        int rs=0;
        FileserviceImpl fileService = new FileserviceImpl();
        MyFile file=new MyFile();
        String path = "/Users/chenna/Desktop/"+savePath;
        String username = (String) ActionContext.getContext().getSession().get("user");
        file.setUsername(username);
        file.setTitle(upload.getTitle());
        file.setUploadContentType(upload.getUploadContentType());
        file.setFilename(fileService.Filename(upload.getUpload(),upload.getUploadFileName(),path));
        //file.setUsername(((String) ActionContext.getContext().getSession().get("username")));
        // 文件保存路径
//        String path ="/Users/chenna/Desktop/"+"123.jpg";
//        // 文件保存到本地
//        System.out.println("path action is "+file.getFilename());
//        file.setPath(path);
        System.out.println("user action is "+ username);

        rs=fileService.InsertFile(file);
        ActionContext.getContext().getSession().put("file", file);
        if(rs>=0){
            System.out.println(rs);
            return "uploadOk";
        }
        return "input";
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
}
