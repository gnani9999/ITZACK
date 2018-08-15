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
            String instid;
            %>
           <%  
            instid=request.getParameter("instid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            st.executeUpdate("update institute set status='Approved' where instid='"+instid+"'");
            %>
             <jsp:include page="approveinst.jsp"></jsp:include>
             <div style="position: absolute; width: 400px; height: 29px; z-index: 1; left: 406px; top: 241px" id="layer1">
		<font color="#5CA82B" size="4">&nbsp;
                    Status Approved for <%=instid%>
                    </font>           
             </div>
    </body>
</html>
