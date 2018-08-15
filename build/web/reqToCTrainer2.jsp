<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <script type="text/javascript">history.forward(false);
        </script>
    </head>
<body  >
            <div style="position: absolute; width: 275px; height: 35px; z-index: 1; left: 408px; top: 225px" id="layer1">
             <%!
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            String stdid,uname,ctid,ctname,crsid,crsname,req;
            %>
            <%
            stdid=(String)session.getAttribute("stdid");            
            uname=(String)session.getAttribute("uname");
            ctid=request.getParameter("ctid");
            crsid=request.getParameter("crsid");
            ctname=request.getParameter("ctname");
            crsname=request.getParameter("crsname");
            req=request.getParameter("req");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            pst=con.prepareStatement("insert into stdreqs values(?,?,?,?,?,?,?)");
            pst.setString(1,ctid);
            pst.setString(2,ctname);
            pst.setString(3,crsid);
            pst.setString(4,crsname);
            pst.setString(5,req);
            pst.setString(6,stdid);
            pst.setString(7,uname);
            pst.execute();
            %><b><font face="Verdana" size="2" color="#008000">
            Request has been sent successfully
            </font></b></div>
            <jsp:include page="reqToCTrainer.jsp"></jsp:include>
        
    </body>
</html>