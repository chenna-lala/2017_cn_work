package nuc.sw.model;

import java.io.File;

/**
 * Created by chenna on 2017/11/24.
 */
public class Upload {
    private String username;
    private String title;
    private String filename;
    private String path;
    private String savePath;
    private File upload;
    private String uploadFileName;
    private String UploadContentType;

    public String getUploadContentType() {
        return UploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        UploadContentType = uploadContentType;
    }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
}
