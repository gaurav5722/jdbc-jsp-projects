import java.sql.*;
class customer{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        Statement smt= con.createStatement();
        smt.executeQuery("create table customer(accno number PRIMARY KEY , pin number ,fname varchar(23),Iname varchar(38),dob date)");
        //smt.executeQuery("alter table customer rename column Iname to Lname");
        con.close();

    }
catch(Exception e){
    e.printStackTrace();
}}
}