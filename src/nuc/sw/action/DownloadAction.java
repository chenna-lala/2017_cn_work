package nuc.sw.action;

import com.opensymphony.xwork2.ActionSupport;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/**
 * Created by chenna on 2017/11/27.
 */
public class DownloadAction extends ActionSupport {
    private String inputPath;
    private String contentType;
    private String downFileName;

    public String getInputPath() {
        return inputPath;
    }
    public void setInputPath(String inputPath) {
        this.inputPath = inputPath;
    }
    public String getContentType() {
        return contentType;
    }
    public void setContentType(String contentType) {
        this.contentType = contentType;
    }
    public String getDownFileName() {
        return downFileName;
    }
    public void setDownFileName(String downFileName) {
        this.downFileName = downFileName;
    }
    public InputStream getTargetFile(){
        InputStream is = null;
        try {
            is = new FileInputStream("/Users/chenna/Desktop/"+inputPath);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(is);
        return is;
        //return ServletActionContext.getServletContext().getResourceAsStream(inputPath);
    }
}
