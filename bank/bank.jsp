<html>
    <head>
       <title>hello i am jsp</title> 
    </head>
    <body>
        <center>
            <br>
            <h3 align="center">Welcome</h3>
            <%@ page language="java"%>
             <%@ page import ="java.sql.*"%>
             <%@ page import ="java.util.Date"%>
             <% Date date1;
             Date now = new Date();
             String date=now.toLocaleString();
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
             String acc= request.getParameter("accno");
             int accno=Integer.parseInt(acc);
            
             String pi = request.getParameter("pin");
             int pin=Integer.parseInt(pi);
             PreparedStatement ps;
             ResultSet rs=null;
             String name="",custname=null;
             String mini="";
             String service = request.getParameter("serviceRequest");
             if(acc!=null){
                
                ps=con.prepareStatement("select * from customer where accno=? AND pin=?");
                ps.setInt(1,accno);
                ps.setInt(2,pin);
                
                rs=ps.executeQuery();
                
               // int rowCount = rs.getRow();
               // out.println(rowCount);

                while(rs.next()){
                    
                    String m =rs.getString(3);
                    
                    String m1=rs.getString(4);
                 
                    name="Mr/Ms. "+m+" "+m1;
                }
                
                custname=name;
                if(custname.equals("null")){
                    out.println("<center><b><i>Specified Account Number and Pin Number does not Exist</i></b></center>");
                }
                else{
                    if(service.equals("BalanceEnquiry")){
                        ps=con.prepareStatement("select* from Account where accno=?");
                        ps.setInt(1,accno);
                        rs=ps.executeQuery();
                        while(rs.next()){
                            double balance=rs.getDouble(3);
                            String bal="<center>Dear<b>"+custname+"</b><br>Account no <b>"+accno+"</b><br>Balance as on "+date+"   is   <b>"+ balance+"</b><br><br>Thankyou for giving an opportunity to serve us</center>";
                            out.println(bal);
                        }
                    }
                    if(service.equals("MiniStatement")){
                         mini ="<center> Dear<b>"+custname+"</b>,<br>here is the ministatement as on "+date+"<br>AccountNO:<b>"+accno+"</b></br></center><table style=\"border:2px solid red;\"><tr><th >Date of transaction</th><th >Description</th><th >c/d</th><th >amount</th></tr>";
                            out.println(mini);
                            ps=con.prepareStatement("select * from Transaction where accno=?");
                            ps.setInt(1,accno);
                            rs=ps.executeQuery();
                            int i=0;
                            while(rs.next()&& i<10){
                               date1 = rs.getDate(2);
                                String desc=rs.getString(3);
                                String type=rs.getString(4);
                                double amount =rs.getDouble(5);
                                String ministatement="<tr><td>"+date1+"</td><td>"+desc+"</td><td>"+type+"</td><td>"+amount+"</td></tr>";
                                out.println(ministatement);
                                i++;
                        
                            }
                        
                           out.println("</table>");

                        
                    }
                }
             }%>
        </center>
    </body>
</html>