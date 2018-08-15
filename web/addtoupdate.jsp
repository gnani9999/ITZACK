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
 <form action="approvectrainer1.jsp" method="post">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 630px; top: 65px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
<div style="position: absolute; width: 177px; height: 39px; z-index: 4; left: 293px; top: 39px" id="layer4">
    <font color="#A60000"> <u><b><font face="Poor Richard" size="5">
	Advertisements</font></b></u> </font>
</div>  
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String addid,uname,addname,descr;
            %>
            <%  
            uname=(String)session.getAttribute("uname");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from advertisement where uname='"+uname+"'");
            %>
            <!-- *********** Bhagya *********** -->
            <%-- ************ lakshmi ************  --%>
            <div style="position: absolute; width: 729px; height: 54px; z-index: 1; left: 17px; top: 128px" id="layer1">
            <table width="726" border="1" bordercolor="#D8D8D8">
                <tr>
                    <td width="150" align="center">
					<b><font face="Verdana" size="2">Name</font></b></td>
                    <td width="475" align="center">
					<b><font face="Verdana" size="2">Description</font></b></td>
                    <td align="center">
					<b>
					<font face="Verdana" size="2">Status</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                addid=rs.getString(1);
                addname=rs.getString(3);
                descr=rs.getString(4);            
            %>
            <tr>
                <td width="150" align="center">
			<font color="#797979" face="Verdana" size="2"><%=addname%></font></td>
                <td width="475" align="center">
			<font color="#797979" face="Verdana" size="2"><%=descr%></font></td>
		<td align="center">
                    <a href="updateadd.jsp?addid=<%=addid%>">
					<font face="Verdana" size="2" color="#797979">Update</font></a></td>
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
