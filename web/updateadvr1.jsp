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
        String advrid,uname,pwd,email,mobile,addr;
        %>
        <%
        String advrid=(String)session.getAttribute("advrid");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update advertisor set pwd=?,mobile=?,email=?,addr=? where advrid=?");
        pst.setString(1,pwd);
        pst.setString(2,mobile);
        pst.setString(3,email);
        pst.setString(4,addr);
        pst.setString(5,advrid);
        pst.execute();
        %>
        <jsp:include page="advertisorlogin.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 356px; top: 388px" id="layer4">
              <font color="#74CC39"><b><%=uname%> details are updated successfully    	
              </b>    	</font>
          </div>
</body>
</html>
