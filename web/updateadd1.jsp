<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body  >
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String addid,addname,adddescr,uname;
        %>
        <%
        addid=request.getParameter("addid");
        addname=request.getParameter("addname");
        adddescr=request.getParameter("adddescr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update advertisement set addname=?,adddescr=? where addid=?");
        pst.setString(1,addname);
        pst.setString(2,adddescr);
        pst.setString(3,addid);
        pst.execute();
        %>
        <jsp:include page="addtoupdate.jsp"></jsp:include>
          <div style="position: absolute; width: 369px; height: 47px; z-index: 1; left: 504px; top: 414px" id="layer4">
              <font color="#74CC39" face="Arial Narrow"><b>Advertisement Details are Updated Successfully    	
              </b>    	</font>
          </div>
</body>
</html>
