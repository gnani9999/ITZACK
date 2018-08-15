<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
    </head>
<body  >
        <%!
        Connection con;
        Statement st1;
        PreparedStatement pst;
        ResultSet rs1;
        String crsid,crsname;
        %>
        <%
        crsid=request.getParameter("crsid");     
        crsname=request.getParameter("crsname");    
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from speccourse where crsid='"+crsid+"'");
       pst.execute();
        %>        
        <jsp:include page="specCourseMgmt.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 450px; top: 298px" id="layer4">
              <font color="#D50000" face="Verdana" size="2"><b>Special class on <%=crsname%> was deleted successfully</b> </font>
          </div>
</body>
</html>
