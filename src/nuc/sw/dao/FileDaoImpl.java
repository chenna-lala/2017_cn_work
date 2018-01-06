package nuc.sw.dao;

import nuc.sw.DB.DBUtil;
import nuc.sw.model.MyFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by chenna on 2017/11/24.
 */
public class FileDaoImpl implements FileDao<MyFile> {
    private Connection conn= DBUtil.getConnection();
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    @Override
    public int InsertFile(MyFile file) {
        // TODO Auto-generated method stub
        int rs=0;
        System.out.println("file dao is name"+file.getFilename()+"file username is"+file.getUsername());
        System.out.println("path is "+file.getPath());
        try {
            String sql = "INSERT INTO files(username,title,filename) VALUES(?,?,?)";
            ps = conn.prepareStatement(sql);

            ps.setString(1,file.getUsername());
            ps.setString(2, file.getTitle());
            ps.setString(3, file.getFilename());
//            ps.setString(4,file.getPath());

            rs=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
    @Override
    public String Filename(File upload, String uploadFileName, String path) {
        // TODO Auto-generated method stub
        String newFileName = UUID.randomUUID().toString() + "_" + uploadFileName;
        try {
            FileInputStream fis = new FileInputStream(upload);
            FileOutputStream fos = new FileOutputStream(path + newFileName);
            byte[] buffer = new byte[1024];
            int len;
            while ((len = fis.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        // }
        return newFileName;

    }




    @Override
    public List<MyFile> selectAll() {
            List<MyFile> file= new ArrayList<MyFile>();
            String sql="select * from files";
            try {
                ps=conn.prepareStatement(sql);
                rs=ps.executeQuery();
                MyFile files=null;
                while(rs.next()){
                    files=new MyFile();
                    files.setFilename(rs.getString(4));
                    files.setPath(rs.getString(5));
                    files.setId(rs.getInt(1));
                    file.add(files);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return file;

        }


}

