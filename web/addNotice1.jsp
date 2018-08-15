<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body  >
        <jsp:include page="addNotice.jsp"></jsp:include>
        <%!
        Connection con;
        Statement st,st1;
        PreparedStatement pst;
        ResultSet rs,rs1;
        String stdid,fname,notice,noteid;
        int i,id;
        %>
        <%
        try{
        String fname=(String)session.getAttribute("fname");
        String stdid=(String)session.getAttribute("stdid");
        notice=request.getParameter("notice");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        
        st=con.createStatement();
        rs=st.executeQuery("select noteid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        noteid="note00"+i;
        
        st1=con.createStatement();
        rs1=st1.executeQuery("select id.nextval from dual");
        if(rs1.next())
        id=rs1.getInt(1);
        
        
        pst = con.prepareStatement("insert into notice values(?,?,?,?,?)");
        pst.setString(1,noteid);
        pst.setString(2,stdid);
        pst.setString(3,fname);
        pst.setString(4,notice);        
        pst.setInt(5,id);
        pst.execute();
        %>
    <jsp:include page="addNotice.jsp"></jsp:include>
        <div style="position: absolute; width: 377px; height: 26px; z-index: 1; left: 480px; top: 373px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Notice added successfully</font></h2>
            </font>
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
    <jsp:include page="addNotice.jsp"></jsp:include>
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
