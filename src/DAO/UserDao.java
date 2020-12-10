package DAO;

import Tools.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int   CheckLogin (String username,String  password){
        Connection conn = DbUtils.getconn();
        String sql ="select * from user where username=? and password=?";
        try{
            ps = conn.prepareStatement(sql);
            //rs 赋值为一个常数，只要rs不为空就能通过验证
            ps.setString(1,username);
            ps.setString(2,password);
            if(ps.executeQuery().next()){
                return  1;
            }
            else{
                return  0;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
}
