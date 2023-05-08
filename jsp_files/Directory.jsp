<html>
    <head>
        <title>Phone Directory</title>
    </head>
<body bgcolor="bisque" text="black">
<hr>
<h2>
    <pre>
        <% int ph=0;
        String namegiven=request.getParameter("name");
        String name[]={"Aparna","Uma","Anitha","Kamal","Rajini"};
        int phone[]={965,543,345,985,341};
        for(int i=0;i<5;i++)
        {
            if(namegiven.equals(name[i])){
                ph=phone[i];
            }
        }
        out.println("<center>"+namegiven+"<br>");
        out.println("Name:"+namegiven+"<br>");
        out.println("Phone:"+ph+"<br></center>");
        %>
        </pre>
</h2>
</body>
</html>