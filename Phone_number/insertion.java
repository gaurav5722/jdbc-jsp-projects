
import java.io.*;
import java.sql.*;
class insertion{
    public static void main(String args[])throws IOException
    { try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
         PreparedStatement p= con.prepareStatement("insert into phonebook values(?,?)");
         con.setAutoCommit(false);
         BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        while(true){
             System.out.println("Enter the name");
             String nameing= br.readLine();
            p.setString(1,nameing);
            System.out.println("Enter the phone");
            int phone=Integer.parseInt(br.readLine());
            p.setInt(2,phone);
            int count=p.executeUpdate();
            System.out.println("you want to add it 1/0");
            int add=Integer.parseInt(br.readLine());
             if(add==1){
                   con.commit();
             }
           
            if(count>0){
                System.out.println("added"+count);
            }

            System.out.println("Respected friend do you want to add more 1/0");
            int add1=Integer.parseInt(br.readLine());
            if(add1==0){
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