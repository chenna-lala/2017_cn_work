package nuc.sw.model;

/**
 * Created by chenna on 2017/11/23.
 */
public class Picture {
    private int pid;
    private String picturename;
    private String author;
    private String theme;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    private String path;
    public String getPicturename() {return picturename;}

    public void setPicturename(String picturename) {
        this.picturename = picturename;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }
}
