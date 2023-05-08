import java.io.*;
import java.sql.*;
class Transactioninput{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "admin");
        PreparedStatement smt=con.prepareStatement("insert into transaction values(?,?,?,?,?) ");
       BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       while(true)
       {
       System.out.println("Enter the accno");
       smt.setInt(1,Integer.parseInt(br.readLine()));
       System.out.println("Enter the dob");
       smt.setString(2,br.readLine());
   
       System.out.println("Enter the desot");
       smt.setString(3,br.readLine());
       System.out.println("Enter the cord");
       smt.setString(4,br.readLine());
       System.out.println("Enter the amount");
       smt.setInt(5,Integer.parseInt(br.readLine()));
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