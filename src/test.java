import nuc.sw.DB.DBUtil;

import java.sql.Connection;

/**
 * Created by chenna on 2017/11/23.
 */
public class test {
    public static void main(String[] args)
    {
        Connection conn= DBUtil.getConnection();
        System.out.println(conn);
    }
}
