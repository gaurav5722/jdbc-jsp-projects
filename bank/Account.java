import java.sql.*;
class Account{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        Statement smt= con.createStatement();
        smt.executeQuery("create table Account(accno number PRIMARY KEY , opendate date,balance number)");
        //smt.executeQuery("alter table customer rename column Iname to Lname");
        con.close();

    }
catch(Exception e){
    e.printStackTrace();
}}
}