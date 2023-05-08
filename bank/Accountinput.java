import java.io.*;
import java.sql.*;
class Accountinput{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "admin");
        PreparedStatement smt=con.prepareStatement("insert into account values(?,?,?) ");
       BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       while(true)
       {
       System.out.println("Enter the accno");
       smt.setInt(1,Integer.parseInt(br.readLine()));
       System.out.println("Enter the opendate");
       smt.setString(2,br.readLine());
       System.out.println("Enter the balance");
       smt.setInt(3,Integer.parseInt(br.readLine()));
       smt.executeQuery();
       System.out.println("do you want to continue 1/0");
       int a=Integer.parseInt(br.readLine());
       if(a==0){
        break;
       }
       }
       con.close();
        }
        catch(Exception e){
          System.out.println(e);
        }
    }
}