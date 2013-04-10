/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnect;
import java.sql.*;
import static java.lang.System.*;

/**
*
* @author harshit
*/

public class dbconnect {
    public String query;
    
    public dbconnect(String query)
    {
        this.query=query;
    }
    public ResultSet exquery()
    {
        ResultSet res=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/OOAD";
            String dbusername="root";
            String dbpasswd="";
            Connection conn=DriverManager.getConnection(url,dbusername,dbpasswd);
            Statement st=conn.createStatement();
            res=st.executeQuery(query);
            
        }

        catch(SQLException e)
        {
        }

        catch(ClassNotFoundException e)
        {
        }

        return res;
    }

    public int insquery()
    {
        int res=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/OOAD";
            String dbusername="root";
            String dbpasswd="";
            Connection conn=DriverManager.getConnection(url,dbusername,dbpasswd);
            Statement st=conn.createStatement();
            res=st.executeUpdate(query);
        }
        catch(SQLException e)
        {
        }

        catch(ClassNotFoundException e)
        {
        }
        return res;

    }

}
