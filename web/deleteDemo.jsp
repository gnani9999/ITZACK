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
        String did,cname;
        %>
        <%
        did=request.getParameter("did");     
        cname=request.getParameter("cname");    
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from demo where did='"+did+"'");
        pst.execute();
        %>        
        <jsp:include page="demoMgmt.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 453px; top: 279px" id="layer4">
              <font color="#D50000" face="Verdana" size="2"><b>Demo on <%=cname%> was Deleted Successfully</b> </font>
          </div>
</body>
</html>
