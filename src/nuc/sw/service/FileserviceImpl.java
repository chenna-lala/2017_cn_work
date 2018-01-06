package nuc.sw.service;

import nuc.sw.dao.FileDaoImpl;
import nuc.sw.model.MyFile;

import java.io.*;
import java.util.List;
import java.util.UUID;

/**
 * Created by chenna on 2017/11/24.
 */
public class FileserviceImpl implements FileService {


    @Override
    public int InsertFile(MyFile file) {
        FileDaoImpl fdi=new FileDaoImpl();
        // TODO Auto-generated method stub
        int i=fdi.InsertFile(file);
        return i;
    }

    @Override
    public String Filename(File upload, String uploadFileName, String path) {
        // TODO Auto-generated method stub
        String newFileName = UUID.randomUUID().toString() + "_" + uploadFileName;
        try {
            System.out.println("File service path is "+path);
            FileInputStream fis = new FileInputStream(upload);
            FileOutputStream fos = new FileOutputStream(path + newFileName);
            byte[] buffer = new byte[1024];
            int len;
            while ((len = fis.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        }catch (FileNotFoundException e) {
            e.printStackTrace();}
        catch (IOException e) {
            e.printStackTrace();
        }
        return newFileName;

    }

    @Override
    public List<MyFile> selectAll() {
        FileDaoImpl psi=new FileDaoImpl();
        List<MyFile> file= (List<MyFile>) psi.selectAll();
        return (List<MyFile>) file;
    }
}
