
import java.sql.*;
class create{
    public static void main(String args[]) 
    { 
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","admin");
        Statement smt= con.createStatement();
        smt.executeQuery("create table phonebook (name varchar(20)PRIMARY kEY, phone number)");
        con.close();
        System.out.println("table created");
        }
        catch(Exception e){
          System.out.println(e);
        }




    }
}