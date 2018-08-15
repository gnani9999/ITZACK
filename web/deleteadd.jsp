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
        String addid;
        %>
        <%
        addid=request.getParameter("addid");  
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from advertisement where addid='"+addid+"'");
        pst.execute();
        %>        
        <jsp:include page="addtodel.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 504px; top: 414px" id="layer4">
              <font face="Arial Narrow">
              <font color="#74CC39"><b>Advertisement Deleted Successfully</b></font>
          	</font>
          </div>
</body>
</html>
