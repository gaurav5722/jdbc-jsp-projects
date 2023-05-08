<%@ taglib prefix="blx" uri="/blx.tld"%>
<html>
    <body>
        <%string email=request.getParameter("email");%>
        <% if(email==null||email.equals("")){    %>
            Please enter an email address. 
            <%}else {%>
                <blx:email host="xaviersmtp.com"from="xavi@xavier.com">
                <blx:emailTo><%=email%></blx:emailTo>
                Thankyou for registering with us : You registered the following name:<% request.getParameter("uname")%>
                You registration was received at<%= new java.util.Date()%>
                We shall send you the copy shortly.
                Thankyou for your interest.Please find attachment the content page of the book.
            </blx:emai><% }%>
                     

        
    </body>
</html>