<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body  >
        <jsp:include page="advertisorreg.jsp"></jsp:include>
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String advrid,uname,pwd,mobile,email,addr;
        int i;
        %>
        <%
        try{
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select advrid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        advrid="advr00"+i;
        
        pst = con.prepareStatement("insert into advertisor values(?,?,?,?,?,?)");
        pst.setString(1,advrid);
        pst.setString(2,uname);
        pst.setString(3,pwd);
        pst.setString(4,mobile);
        pst.setString(5,email);
        pst.setString(6,addr);
        pst.execute();
        %>
        <jsp:include page="advertisorreg.jsp"></jsp:include>
        <div style="position: absolute; width: 420px; height: 37px; z-index: 1; left: 404px; top: 358px" id="layer2">
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
        <jsp:include page="advertisorreg.jsp"></jsp:include>
        <div style="position: absolute; width: 331px; height: 48px; z-index: 1; left: 398px; top: 346px" id="layer1">
           <font size="6" color="#FF0000"> 
            <%
              out.print(e.getMessage());
            %>
          </font><b><font color="#FF0000">
            Error in Registration Page</font></b><font size="6" color="#FF0000"> 
        </font>
        </div>        
    <%
    }
    %>    
    </body>
</html>
