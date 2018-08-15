<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
    </head>
 <body  >
         <form action="searchTrainer2.jsp" method="post">   <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">

      

             <div style="position: absolute; width: 266px; height: 87px; z-index: 1; left: 318px; top: 94px" id="layer1">
                 <table border="0" width="100%" id="table1">
                     <%
                     String type=request.getParameter("type");
                     if(type.equals("loc"))
                     {
                     %>
                     <tr>
                         <td width="135"><b><font face="Verdana" size="2">Location 
                         :</font></b></td>
                         <td><input type="text" name="loc1" size="20"></td>
                     </tr>
                     <%
                     }
                     else if(type.equals("course"))
                     {
                     %>
                     <tr>
                         <td width="135"><b><font face="Verdana" size="2">Course 
                         :</font></b></td>
                         <td><input type="text" name="course1" size="20"></td>
                     </tr>
                     <%
                     }
                     else if(type.equals("name"))
                     {
                     %>
                     <tr>
                         <td width="135"><b><font face="Verdana" size="2">Name 
                         :</font></b></td>
                         <td><input type="text" name="name1" size="20"></td>
                     </tr>
                     <%       
                     }
                     %>
                 </table>
             </div>
             <div style="position: absolute; width: 190px; height: 50px; z-index: 1; left: 365px; top: 213px" id="layer2">
                 <table border="0" width="100%" id="table2">
                     <tr>
                         <td>
                         <input type="submit" value="Submit" name="submit" tabindex="2"></td>
                         <td>
                         <input type="reset" value="Reset" name="reset" tabindex="3">
                         <input type="hidden" value="<%=type%>" name="type" tabindex="3"></td>
                     </tr>
                 </table>
             </div>
             <div style="position: absolute; width: 269px; height: 36px; z-index: 4; left: 334px; top: 30px" id="layer4">
                 <u><b><font face="Poor Richard" size="5" color="#A60000">Search By 
                 Criteria</font></b></u>
             </div>  
             <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 635px; top: 71px" id="layer5">
                 <font face="Arial Narrow" size="2">
                     <b><font color="#00AE2C"><a href="javascript:history.back()">
                     <font color="#000000">Back</font></a></font></b>
                 </font>
             </div></div>
         </form>   
     </body>
</html>
