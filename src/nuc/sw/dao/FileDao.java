package nuc.sw.dao;

import nuc.sw.model.MyFile;

import java.io.File;
import java.util.List;

/**
 * Created by chenna on 2017/11/24.
 */
public interface FileDao<T> {
    public int InsertFile(MyFile file);
  public String Filename(File upload, String uploadFileName, String path);
  public List<T> selectAll();
}
