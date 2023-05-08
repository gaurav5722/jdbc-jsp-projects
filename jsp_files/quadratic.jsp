<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ page language="java"%>
    <font size="30" color="red">
     <% 
     String a1= request.getParameter("a");
     String b1= request.getParameter("b");
     String c1=request.getParameter("c");
     int a=Integer.parseInt(a1);
     int b=Integer.parseInt(b1);
     int c=Integer.parseInt(c1);
     if(a==0){
        out.println("not correct value of a");
     }
     else{
         int d=(b*b)-4*a*c;
        if(d==0||d>0){
            double o=(-b+Math.sqrt(d))/2*a;
            double p=(-b-Math.sqrt(d))/2*a;
            out.println(o+"root and "+p);
        }
        else{
            out.println("Immaginary root");
        }
     }
        %>
    </font>
</body>
</html>