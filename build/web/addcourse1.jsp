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
        String instid,cid,cname,fee,dur,faculty,loc;
        int i;
        %>
        <%
        try{
        String instid=(String)session.getAttribute("instid");
        String iname=(String)session.getAttribute("iname");
        cname=request.getParameter("cname");
        fee=request.getParameter("fee");
        dur=request.getParameter("dur");
        faculty=request.getParameter("faculty");
        loc=request.getParameter("loc");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select cid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        cid="crs00"+i;
        
        pst = con.prepareStatement("insert into course values(?,?,?,?,?,?,?,?)");
        pst.setString(1,instid);
        pst.setString(2,cid);
        pst.setString(3,cname);
        pst.setString(4,fee);
        pst.setString(5,dur);
        pst.setString(6,faculty);
        pst.setString(7,loc);
        pst.setString(8,iname);
        pst.execute();
        %>
        <jsp:include page="addcourse.jsp"></jsp:include>
        
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 365px; top: 280px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Course added successfully</font></h2>
            </font>
            <p>            
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
        <jsp:include page="addcourse.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 63px; z-index: 1; left: 360px; top: 268px" id="layer1">
           <font size="6" color="#FF0000"> <%
              out.print(e.getMessage());
            %>
            </font>
        	<b>
           <font color="#FF0000"> Error in Page</font></b><font size="6" color="#FF0000"> 
        </font>
        </div>        
    <%
    }
    %>    
    </body>
</html>
