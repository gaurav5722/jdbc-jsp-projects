<html>
    <head>
      <title>I am send by server to your webpage</title>  
    </head>
    <body>
      
        <%@ page language="java" %>
        <%@ page import="java.sql.*"%>
        <font size="40px" color="red" align ="center">
        <% String s=request.getParameter("ph");
      try{
       
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
        
        
        
        String a="";
        int b=0;
        
        PreparedStatement smt=con.prepareStatement("select * from phonebook where name =?");
        smt.setString(1,s);
        ResultSet rst=smt.executeQuery();
        while(rst.next()){
          
             a=rst.getString(1);
            b=rst.getInt(2);
            out.println(a+" <br>  "+b);
        }
      }
      catch(Exception e){
       
        out.println(e);
      }

%>
</font>

    </body>
</html>