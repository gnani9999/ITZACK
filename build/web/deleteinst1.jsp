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
        String instid,instname;
        %>
        <%
        instid=request.getParameter("instid");     
        instname=request.getParameter("instname"); 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from institute where instid="+instid);
        pst.execute();
        %>        
        <jsp:include page="deleteinst.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 409px; top: 283px" id="layer4">
              <font color="#74CC39"><b><%=instname%> Deleted Successfully</b></font>
          </div>
</body>
</html>
