<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body  >
 <form action="approveinst1.jsp" method="post">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">



			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 689px; top: 46px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
<div style="position: absolute; width: 311px; height: 39px; z-index: 4; left: 262px; top: 17px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Institution 
    Approval</font></b></u><font color="#A60000"> </font>
</div>  
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String instid,instname,status;
            %>
            <%  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from institute where status='Not Approved'");
            %>
            <!-- *********** Bhagya *********** -->
            <%-- ************ lakshmi ************  --%>
            <div style="position: absolute; width: 599px; height: 54px; z-index: 1; left: 85px; top: 99px" id="layer1">
            <table width="599" border="1" bordercolor="#D8D8D8">
                <tr>
                    <td width="101" align="center">
					<b>
					<font face="Verdana" size="2">Institution ID</font></b></td>
                    <td width="391" align="center">
					<b>
					<font face="Verdana" size="2">Institute Name</font></b></td>
                    <td align="center">
					<b>
					<font face="Verdana" size="2">Status</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                instid=rs.getString(1);
                instname=rs.getString(2);
                status=rs.getString(7);            
            %>
            <tr>
                <td width="101" align="center">
			<font color="#797979" face="Verdana" size="2"><%=instid%></font></td>
                <td width="391" align="center">
			<font color="#797979" face="Verdana" size="2"><%=instname%></font></td>
		<td align="center">
                    <a href="approveinst1.jsp?instid=<%=instid%>">
                        <font color="#797979" face="Verdana" size="2">Approve </font>
                    </a>
                </td>
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div>
</div>
        </form>
    
    </body>
</html>
