<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-us">
        <title>JSP Page</title>
    <script type="text/javascript" src="JS/country.js"></script>      
        <script language="JavaScript" src="JS/calendar_us.js"></script>
	<link rel="stylesheet" href="JS/calendar.css">
    </head>
 <body  >
        <form action="updateSpecCourse1.jsp" method="post" name="itzack">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">



            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String ctid,ctname,crsid,crsname,otime,loc;
            Date ocrsdate;
            int i,fee;
            %>
            <div style="position: absolute; width: 611px; height: 112px; z-index: 2; left: 105px; top: 122px" id="layer2">
                <%
                crsid=request.getParameter("crsid");
                crsname=request.getParameter("crsname");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from speccourse where crsid='"+crsid+"'");
                if(rs.next())
                {
                ctid=rs.getString(1);
                ctname=rs.getString(2);
                crsid=rs.getString(3);
                crsname=rs.getString(4);
                otime=rs.getString(5);
                ocrsdate=rs.getDate(6);
                fee=rs.getInt(7);
                loc=rs.getString(8);
                %>
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Trainer</font></b></td>
                        <td>
						<input type="text" name="ctname" size="20" tabindex="1" value="<%=ctname%>" readonly></td>
                        <td>
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Course 
						Name</font></b></td>
                        <td>
						<input name="crsname" size="20" tabindex="2" value="<%=crsname%>"></td>
                        <td>
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144"><font face="Verdana" size="2"><b>Fee</b></font></td>
                        <td>
						<input name="fee" size="20" tabindex="3" value="<%=fee%>"></td>
                        <td align="right">
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Old Time</font></b></td>
                        <td>
						<input type="text" name="otime" size="20" tabindex="4" value="<%=otime%>" readonly></td>
                        <td align="right">
						<b><font face="Verdana" size="2">New Time</font></b></td>
                        <td width="180">
						<input type="text" name="ntime" size="20" tabindex="5"></td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Old Date</font></b></td>
                        <td>
						<input type="text" name="ocrsdate" size="20" tabindex="6" value="<%=ocrsdate%>" readonly></td>
                        <td width="121" align="right"><b><font face="Verdana" size="2">New Date</font></b></td>
                        
                        
                       <td width="180">	<input type="text" name="ncrdate" size="20" tabindex="7">   
                        <script language="JavaScript">
                                                    new tcal ({'formname': 'itzack','controlname': 'ncrdate'});
                    </script></td>
                    </tr>
                    <tr>
                        <td width="144"><font face="Verdana" size="2"><b>Location</b></font></td>
                        <td>
						<input type="text" name="loc" size="20" tabindex="8" value="<%=loc%>"></td>
                        <td align="right">
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144">&nbsp;</td>
                        <td>	&nbsp;</td>
</td>
                        <td>	&nbsp;</td>
                        <td width="180">	&nbsp;</td>
                    </tr>
                </table>
                <% }  %>
            </div>
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 382px; top: 305px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Update" name="submit" tabindex="8">                        
                        <input type="hidden" value="<%=crsid%>" name="crsid">
                        </td>                     
                    </tr>
                </table>
            </div>  
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 262px; top: 27px" id="layer4">
                <font color="#A60000"> <u><font face="Poor Richard" size="5"><b>Update 
				Special Course</b></font></u></font></div>  
            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 612px; top: 74px" id="layer5">
                <font face="Arial Narrow" size="2">
                    <b><font color="#00AE2C"><a href="javascript:history.back()">
                    <font color="#000000">Back</font></a></font></b>
                </font>
            </div>
        </form>
    </body>
</html>
