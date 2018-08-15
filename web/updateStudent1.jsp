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
        String stdid,fname,lname,uname,pwd,email,mobile,qual,instn,addr,pout,aggr;
        %>
        <%
        String stdid=(String)session.getAttribute("stdid");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        qual=request.getParameter("qual");
        instn=request.getParameter("instn");
        pout=request.getParameter("pout");
        aggr=request.getParameter("aggr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update student set pwd=?,fname=?,lname=?,mobile=?,email=?,addr=?,qual=?,inst=?,pout=?,aggr=? where stdid=?");
        pst.setString(1,pwd);
        pst.setString(2,fname);
        pst.setString(3,lname);
        pst.setString(4,mobile);
        pst.setString(5,email);
        pst.setString(6,addr);
        pst.setString(7,qual);
        pst.setString(8,instn);
        pst.setString(9,pout);
        pst.setString(10,aggr);
        pst.setString(11,stdid);
        pst.execute();
        %>
        <jsp:include page="stdlogin.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 421px; top: 163px" id="layer4">
              <font color="#74CC39"><b><%=uname%> details are updated successfully    	
              </b>    	</font>
          </div>
</body>
</html>
