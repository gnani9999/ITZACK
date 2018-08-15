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



			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 665px; top: 49px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
<div style="position: absolute; width: 311px; height: 39px; z-index: 4; left: 298px; top: 15px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Course Details</font></b></u><font color="#A60000"> </font>
</div>  
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String ctid,crsid,ctname,crsname,time,fee,location;
            Date crsdate;
            %>
            <%  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from speccourse");
            %><div style="position: absolute; width: 679px; height: 54px; z-index: 1; left: 39px; top: 90px" id="layer1">
            <table width="680" border="1" bordercolor="#D8D8D8">
                <tr>
                    <td width="101" align="center">
					<b><font face="Verdana" size="2">Trainer</font></b></td>
                    <td width="68" align="center">
					<b><font face="Verdana" size="2">Course</font></b></td>
                    <td align="center" width="89">
					<b><font face="Verdana" size="2">Time</font></b></td>
                    <td align="center">
					<b><font face="Verdana" size="2">Date</font></b></td>
                    <td align="center">
					<b><font face="Verdana" size="2">Fee</font></b></td>
                    <td align="center">
					<b><font face="Verdana" size="2">Location</font></b></td>
                    <td align="center">
					<b><font face="Verdana" size="2">Action</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                ctid=rs.getString(1);
                ctname=rs.getString(2);
                crsid=rs.getString(3);
                crsname=rs.getString(4);
                time=rs.getString(5);
                crsdate=rs.getDate(6);
                fee=rs.getString(7);
                location=rs.getString(8);
            %>
            <tr>
                <td width="101" align="center">
				<font color="#797979" face="Verdana" size="2"><%=ctname%></font></td>
                <td width="68" align="center">
				<font color="#797979" face="Verdana" size="2"><%=crsname%></font></td> 
                <td width="89" align="center">
				<font color="#797979" face="Verdana" size="2"><%=time%></font></td>    
                <td width="88" align="center">
				<font color="#797979" face="Verdana" size="2"><%=crsdate%></font></td>    
                <td width="68" align="center">
				<font color="#797979" face="Verdana" size="2"><%=fee%></font></td>    
                <td width="102" align="center">
				<font color="#797979" face="Verdana" size="2"><%=location%></font></td>    
                <td align="center">
                        <a href="reqToCTrainer1.jsp?ctid=<%=ctid%>&crsid=<%=crsid%>&ctname=<%=ctname%>&crsname=<%=crsname%>"><b>
						<font face="Verdana" size="2" color="#797979">Send 
						Request</font></b></a></td>
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div></div>
        </form>
    
    </body>
</html>
