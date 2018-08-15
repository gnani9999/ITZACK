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
        String ctid,name;
        %>
        <%
        ctid=request.getParameter("ctid");     
        name=request.getParameter("name"); 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from cortrainer where ctid='"+ctid+"'");
        pst.execute();
        %>        
        <jsp:include page="viewDelTrainer.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 487px; top: 262px" id="layer4">
              <font color="#D50000"><b><font size="2" face="Verdana"><%=name%> deleted 
				successfully</font></b></font><font size="2" face="Verdana" color="#D50000">
				</font>
          </div>
</body>
</html>
