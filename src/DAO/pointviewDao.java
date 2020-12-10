package DAO;

import Tools.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class pointviewDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int  addPointview(String name , String profile , String advise , String guide , String indexPicture , String  provinceid){
        conn = DbUtils.getconn();
        ResultSet rs = null;

        String sql = "INSERT INTO pointview(name,profile,advise,guide,indexPicture,provinceid) values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,profile);
            ps.setString(3,advise);
            ps.setString(4,guide);
            ps.setString(5,indexPicture);
            ps.setString(6,provinceid);
            if(ps.executeUpdate()!=0){
                return  1;
            }
            else{
                return 0;
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    public int deletePointview(String name){
        Connection conn = DbUtils.getconn();
        String sql = "delete from pointview where name=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            //转码避免乱码

            ps.setString(1, name);
            if(ps.executeUpdate()!=0){
                return  1;
            }
            else
            {
                return 0;
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return  0;
    }

    public int   findbyname (String name){
        Connection conn = DbUtils.getconn();
        String sql = "select id from pointview where name=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            //转码避免乱码
            int  id = rs.getInt(1);
            return id;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }


}
