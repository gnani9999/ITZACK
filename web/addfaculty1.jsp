<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String instid,fid,fname,qual,exp,skill;
        int i;
        %>
        <%
        try{
        String instid=(String)session.getAttribute("instid");
        fname=request.getParameter("fname");
        qual=request.getParameter("qual");
        exp=request.getParameter("exp");
        skill=request.getParameter("skill");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select fid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        fid="fac00"+i;
        
        pst = con.prepareStatement("insert into faculty values(?,?,?,?,?,?)");
        pst.setString(1,instid);
        pst.setString(2,fid);
        pst.setString(3,fname);
        pst.setString(4,qual);
        pst.setString(5,exp);
        pst.setString(6,skill);
        pst.execute();
        %>
        <jsp:include page="addfaculty.jsp"></jsp:include>
        <div style="position: absolute; width: 377px; height: 26px; z-index: 1; left: 480px; top: 373px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">Faculty added successfully</font></h2>
            </font>
        </div>
    <%
    }
    catch(Exception e)
    {
    %>
    <jsp:include page="addfaculty.jsp"></jsp:include>
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
