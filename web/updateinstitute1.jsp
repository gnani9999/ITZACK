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
        String instid,iname,ipwd,iaddr,iphn;
        %>
        <%
        instid=request.getParameter("instid");
        iname=request.getParameter("iname");
        ipwd=request.getParameter("ipwd");
        iaddr=request.getParameter("iaddr");
        iphn=request.getParameter("iphn");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update institute set ipwd=?,iaddr=?,iphn=? where instid=?");
        pst.setString(1,ipwd);
        pst.setString(2,iaddr);
        pst.setString(3,iphn);
        pst.setString(4,instid);
        pst.execute();
        %>
        <jsp:include page="updateinstitute.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 446px; top: 165px" id="layer4">
              <font color="#74CC39"><b><%=iname%> Details are Updated Successfully    	
              </b>    	</font>
          </div>
</body>
</html>
