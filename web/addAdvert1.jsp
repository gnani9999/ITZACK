<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body  >
        <jsp:include page="addAdvert.jsp"></jsp:include>
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String addid,uname,addname,adddescr;
        int i;
        %>
        <%
        try{
        String uname=(String)session.getAttribute("uname");
        addname=request.getParameter("addname");
        adddescr=request.getParameter("adddescr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select addid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        addid="add00"+i;
        
        pst = con.prepareStatement("insert into advertisement values(?,?,?,?)");
        pst.setString(1,addid);
        pst.setString(2,uname);
        pst.setString(3,addname);
        pst.setString(4,adddescr);
        pst.execute();
        %>
        <jsp:include page="addAdvert.jsp"></jsp:include>
        <div style="position: absolute; width: 377px; height: 26px; z-index: 1; left: 480px; top: 373px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Advertisement added successfully</font></h2>
            </font>
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
        <jsp:include page="addAdvert.jsp"></jsp:include>
        <div style="position: absolute; width: 267px; height: 32px; z-index: 1; left: 474px; top: 378px" id="layer1">
           <font size="4" color="#FF0000" face="Arial Narrow"> <%
              out.print(e.getMessage());
            %>
            Error in Page
        </font>
        </div>        
    <%
    }
    %>    
    </body>
</html>
