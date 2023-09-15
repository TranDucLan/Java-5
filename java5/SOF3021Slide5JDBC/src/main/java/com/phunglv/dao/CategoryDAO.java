package com.phunglv.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.phunglv.entity.Category;



@Service
public class CategoryDAO {
	public List<Category> findAll() {
		try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J5Shop";
            Connection con = DriverManager.getConnection(url,"sa","");
            String sql = "select * from Categories";
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            List<Category> list = new ArrayList<Category>();
            while(rs.next()){
                String id = rs.getString("id");
                String name = rs.getString("name");
                Category tmp = new Category(id, name);
                list.add(tmp);
            }
            rs.close();stm.close();con.close();
            return list;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
	}
	
	public Category findById(String key) {
		try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J5Shop";
            Connection con = DriverManager.getConnection(url,"sa","");
            String sql = "select * from Categories where id = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, key);
            ResultSet rs = stm.executeQuery();
            Category tmp = new Category();
            while(rs.next()){
                String id = rs.getString("id");
                String name = rs.getString("name");
                tmp.setId(id);
                tmp.setName(name);
            }
            rs.close();stm.close();con.close();
            return tmp;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
	}
	public boolean save(Category item) {
		try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://localhost:1433;databaseName=J5Shop";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "insert into Categories values(?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, item.getId());
            stm.setString(2, item.getName());
            int result = stm.executeUpdate();
            stm.close();con.close();
            if(result>0){
                return true;
            }        
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;		
	}
	public boolean update(Category item) {
		try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J5Shop";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "Update Categories set name = ? where id = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, item.getName());
            stm.setString(2, item.getId());
            int result = stm.executeUpdate();
            stm.close();con.close();
            if(result > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
	}
	public boolean deleteById(String id){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J5Shop";            
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql="delete from Categories where id = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, id);
            int result = stm.executeUpdate();
            stm.close();con.close();
            if(result>0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
