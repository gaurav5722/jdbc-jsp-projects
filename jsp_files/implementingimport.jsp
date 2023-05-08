<html>
<head> 
    <title>implementing import</title>
</head>
<body>
    <pre>
    <%@ page language="java"%>
    <%@page import ="java.util.*"%>
    <% System.out.println("web technology book");
    java.util.Date d= new java.util.Date();
    System.out.println(d);%>
    HELLO! The date and time now:-<%= d%>
    <!--other method--><% out.println("\n"+d); %>
    </pre>
</body>
</html>