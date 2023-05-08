import java.io.*;
import java.sql.*;
class inputforcustomer{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "admin");
        PreparedStatement smt=con.prepareStatement("insert into customer values(?,?,?,?,?)");
       BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       while(true)
       {
       System.out.println("Enter the accno");
       int accno=Integer.parseInt(br.readLine());
       smt.setInt(1,accno);
       System.out.println("Enter the pin");
       int pin =Integer.parseInt(br.readLine());
       smt.setInt(2,pin);
       System.out.println("Enter the fname");
       String fname=br.readLine();
       smt.setString(3,fname);
       System.out.println("Enter the Lname");
       String lname=br.readLine();


       smt.setString(4,lname);
       System.out.println("Enter the dob");
       String dob=br.readLine();
       smt.setString(5,dob);
       System.out.println();
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