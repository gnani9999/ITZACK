<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <script type="text/javascript">history.forward(false);
        </script>
    </head>
<body  >
            <%!
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            String id,uname,feedback,utype;
            %>
            <%
            utype=(String)session.getAttribute("utype");
            if(utype.equals("student"))
            {
                id=(String)session.getAttribute("stdid");
                uname=(String)session.getAttribute("fname");
            }
            else
            {
                id=(String)session.getAttribute("ctid");
                uname=(String)session.getAttribute("uname");
            }
            feedback=request.getParameter("feedback");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            pst=con.prepareStatement("insert into feedback1 values(?,?,?)");
            pst.setString(1,id);
            pst.setString(2,uname);
            pst.setString(3,feedback);
            pst.execute();
            %>
            <jsp:include page="sendcompl.jsp"></jsp:include>
        
    		<div style="position: absolute; width: 250px; height: 20px; z-index: 1; left:437px; top:315px" id="layer1">
			<p><font face="Arial Narrow">Feedback submitted successfully</font></div>
        
    		</p>
        
    </body>
</html>