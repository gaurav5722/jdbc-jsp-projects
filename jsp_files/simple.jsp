<html>
	<head>
		<title>hello i am going to send this to the browser</title>
	</head>
	<body>
         <%@ page language="java" %>
         <% String p=request.getParameter("p");
            String r = request.getParameter("r");
            String y= request.getParameter("y");
            int principal=Integer.parseInt(p);
            int rate=Integer.parseInt(r);
            int year=Integer.parseInt(y);
            double si=(principal*rate*year)/100;
            double amount= si + principal;%>

            <h2 align="center"> Simple interest</h2>
            <font color="blue" size="40"  >
            <br>
            <pre style="text-align: center;">
	<% out.println("principal:"+principal);
	   out.println("rate"+rate);
           out.println("year"+year);
           out.println("Simple interest "+si);
 	   out.println("Total amount"+amount);
 
          %>
</font>
</pre>
</html>