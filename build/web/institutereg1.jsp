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
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String instid,iname,ipwd,iaddr,iphn,estdate,status;
        int i;
        %>
        <%
        try{
        iname=request.getParameter("iname");
        ipwd=request.getParameter("ipwd");
        iaddr=request.getParameter("iaddr");
        iphn=request.getParameter("iphn");
        estdate=request.getParameter("estdate");
        status="Not Approved";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select instid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        instid="inst00"+i;
        
        pst = con.prepareStatement("insert into institute values(?,?,?,?,?,?,?)");
        pst.setString(1,instid);
        pst.setString(2,iname);
        pst.setString(3,ipwd);
        pst.setString(4,iaddr);
        pst.setString(5,iphn);
        pst.setString(6,estdate);
        pst.setString(7,status);
        pst.execute();
        %>
        <jsp:include page="institutereg.jsp"></jsp:include>
        
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 126px; top: 208px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">You have registered successfully</font></h2>
            </font>
            <p>            
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
        <jsp:include page="institutereg.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 133px; top: 142px" id="layer1">
           <font size="6" color="#FF0000"> <%
              out.print(e.getMessage());
            %>
            Error in Registration Page
        </font>
        </div>        
    <%
    }
    %>    
    </body>
</html>
