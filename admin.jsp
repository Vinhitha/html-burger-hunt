<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
    <body>
               
  <%
int count=0;
int  a=Integer.parseInt(request.getParameter("T1"));  
String  b=request.getParameter("T2");  
int  c=Integer.parseInt(request.getParameter("T3"));   
   
          PreparedStatement stmt=con.prepareStatement("select *from paymentdetails2 where CardNumber=? and ExpiryDate=? and CVV=?"); 
stmt.setInt(1,a); 
stmt.setString(2,b);
stmt.setInt(3,c);

          ResultSet res = stmt.executeQuery();
          while(res.next())
          {
//out.println(res.getInt(4));

count++;
}
if(count>0)
{
//response.sendRedirect("bloodbank.jsp");
out.println("transaction successfully");

          }
else
{
out.println("try again");
}      
      stmt.close();
con.close();            
         %>    
    </body>
</html>