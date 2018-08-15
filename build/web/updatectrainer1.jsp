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
        String ctid,fname,lname,uname,pwd,email,mobile,qual,skill,addr;
        %>
        <%
        String ctid=(String)session.getAttribute("ctid");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        qual=request.getParameter("qual");
        skill=request.getParameter("skill");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update cortrainer set pwd=?,fname=?,lname=?,mobile=?,email=?,addr=?,qual=?,skill=? where ctid=?");
        pst.setString(1,pwd);
        pst.setString(2,fname);
        pst.setString(3,lname);
        pst.setString(4,mobile);
        pst.setString(5,email);
        pst.setString(6,addr);
        pst.setString(7,qual);
        pst.setString(8,skill);
        pst.setString(9,ctid);
        pst.execute();
        %>
        <jsp:include page="ctrainerlogin.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 376px; top: 195px" id="layer4">
              <font color="#74CC39"><b><%=uname%> details are updated successfully    	
              </b>    	</font>
          </div>
</body>
</html>
