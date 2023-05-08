import java.sql.*;
class Transaction{
    public static void main(String args[]){
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        Statement smt= con.createStatement();
        smt.executeQuery("create table Transaction(accno number PRIMARY KEY ,dot date,desot varchar(30),cord varchar (3), amount number)");
        //  smt.executeQuery("alter Table Transaction DROP PRIMARY KEY");
        con.close();

    }
catch(Exception e){
    e.printStackTrace();
}}
}