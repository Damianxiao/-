package DAO;

import Tools.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class provinceDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //新增
    public int addProvince(String name, String profile, String indexPicture) {
        Connection conn = DbUtils.getconn();
        ResultSet rs = null;
        String sql = "insert into province(name,indexPicture,profile) values(?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, profile );
            ps.setString(3, indexPicture);
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
        return 0;
    }

    //删除
    public int deleteProvince(String name){
        Connection conn = DbUtils.getconn();
        String sql = "delete from province where name=?";
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

}
