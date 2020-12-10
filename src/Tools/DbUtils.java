package Tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtils {

    public static  Connection getconn()
    {
        Connection conn = null;

        String user   = "root";
        String passwd = "root";
        String url = "jdbc:MySQL://localhost:3306/project?&useSSL=false&serverTimezone=UTC&characterEncoding=utf-8";

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,user,passwd);
        }catch (SQLException e)
        {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        return conn;
    }
}
