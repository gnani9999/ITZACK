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
            String ctid,uname;
            %>
           <%  
            ctid=request.getParameter("ctid");
            uname=request.getParameter("uname");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            st.executeUpdate("update cortrainer set status='Approved' where ctid='"+ctid+"'");
            %>
             <jsp:include page="approveinst.jsp"></jsp:include>
             <div style="position: absolute; width: 400px; height: 29px; z-index: 1; left: 424px; top: 300px" id="layer1">
		<font color="#5CA82B" size="4">&nbsp;
                    Status Approved for <%=uname%>
                    </font>           
             </div>
    </body>
</html>
