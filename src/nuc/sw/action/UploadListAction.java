package nuc.sw.action;

import nuc.sw.model.MyFile;
import nuc.sw.service.FileserviceImpl;

import java.util.List;

/**
 * Created by chenna on 2017/11/27.
 */
public class UploadListAction {
    private List<MyFile> file=null;

    public List<MyFile> getFile() {
        return file;
    }

    public void setFile(List<MyFile> file) {
        this.file = file;
    }

    public String selectAll() {
        FileserviceImpl fi = new FileserviceImpl();
        file = fi.selectAll();
        for (MyFile m : file
                ) {
            System.out.println(m.getPath());
        }
        return "findAllOK";
    }
    }