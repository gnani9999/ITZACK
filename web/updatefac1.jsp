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
        String fid,fname,qual,exp,skill;
        %>
        <%
        fid=request.getParameter("fid");
        fname=request.getParameter("fname");
        qual=request.getParameter("qual");
        exp=request.getParameter("exp");
        skill=request.getParameter("skill");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        pst=con.prepareStatement("update faculty set fname=?,qual=?,exp=?,langs=? where fid=?");
        pst.setString(1,fname);
        pst.setString(2,qual);
        pst.setString(3,exp);
        pst.setString(4,skill);
        pst.setString(5,fid);
        pst.execute();
        %>
        <jsp:include page="factoupdate.jsp"></jsp:include>
          <div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 447px; top: 262px" id="layer4">
              <font color="#74CC39"><b><%=fname%> Details are Updated Successfully    	
              </b>    	</font>
          </div>
</body>
</html>
