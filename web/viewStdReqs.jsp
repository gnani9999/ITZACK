<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body  >
 <form method="post"><div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 646px; top: 37px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
<div style="position: absolute; width: 311px; height: 39px; z-index: 4; left: 192px; top: 11px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Student Requests</font></b></u></div>  
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String ctid,crsname,req,stdname;
            %>
            <%  
            ctid=(String)session.getAttribute("ctid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from stdreqs where ctid='"+ctid+"'");
            %><div style="position: absolute; width: 573px; height: 54px; z-index: 1; left: 61px; top: 82px" id="layer1">
            <table width="625" border="1" bordercolor="#D8D8D8">
                <tr>
                    <td width="97" align="center">
					<b><font face="Verdana" size="2">Name</font></b></td>
                    <td width="105" align="center">
					<b><font face="Verdana" size="2">Course</font></b></td>
                    <td align="center" width="399">
					<b><font face="Verdana" size="2">Request</font></b></td>
                </tr>
            <%
            while(rs.next())
            {                
                crsname=rs.getString(4);
                req=rs.getString(5);
                stdname=rs.getString(7);
            %>
            <tr>
                <td width="97" align="center">
				<font color="#797979" face="Verdana" size="2"><%=stdname%></font></td>
                <td width="105" align="center">
				<font color="#797979" face="Verdana" size="2"><%=crsname%></font></td> 
                <td width="399" align="center">
				<font color="#797979" face="Verdana" size="2"><%=req%></font></td>    
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div></div>
        </form>
    
    </body>
</html>
