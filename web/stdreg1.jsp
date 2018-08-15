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
        String stdid,fname,lname,uname,pwd,mobile,email,addr,qual,inst,pout,aggr;
        int i;
        %>
        <%
        try{
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        qual=request.getParameter("qual");
        inst=request.getParameter("inst");
        pout=request.getParameter("pout");
        aggr=request.getParameter("aggr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select stdid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        stdid="std00"+i;
        
        pst = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,stdid);
        pst.setString(2,fname);
        pst.setString(3,lname);
        pst.setString(4,uname);
        pst.setString(5,pwd);
        pst.setString(6,mobile);
        pst.setString(7,email);
        pst.setString(8,addr);
        pst.setString(9,qual);
        pst.setString(10,inst);
        pst.setString(11,pout);
        pst.setString(12,aggr);
        pst.execute();
        %>
        <jsp:include page="stdreg.jsp"></jsp:include>
        <div style="position: absolute; width: 420px; height: 37px; z-index: 1; left: 338px; top: 201px" id="layer2">
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
        <jsp:include page="stdreg.jsp"></jsp:include>
        <div style="position: absolute; width: 332px; height: 48px; z-index: 1; left: 339px; top: 201px" id="layer1">
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
