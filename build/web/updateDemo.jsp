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
        <form action="updateDemo1.jsp" method="post" name="itzack">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 652px; top: 87px" id="layer5">
                <font face="Arial Narrow" size="2">
                    <b><font color="#00AE2C"><a href="javascript:history.back()">
                    <font color="#000000">Back</font></a></font></b>
                </font>
            </div>
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String instid,iname,did,cname,time;
            Date demodate,newdemodate;
            int i;
            %>
            <div style="position: absolute; width: 611px; height: 112px; z-index: 2; left: 79px; top: 121px" id="layer2">
                <%
                did=request.getParameter("did");
                iname=request.getParameter("iname");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from demo where did='"+did+"'");
                if(rs.next())
                {
                cname=rs.getString(3);
                time=rs.getString(4);
                demodate=rs.getDate(5);
                %>
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">
						Institute Name</font></b></td>
                        <td>
						<input type="text" name="iname" size="20" tabindex="1" value="<%=iname%>" readonly></td>
                        <td>
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Course 
						Name</font></b></td>
                        <td>
						<input name="cname" size="20" tabindex="2" value="<%=cname%>"></td>
                        <td>
						&nbsp;</td>
                        <td width="180">
						&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Old Time</font></b></td>
                        <td>
						<input type="text" name="time" size="20" tabindex="3" value="<%=time%>" readonly></td>
                        <td align="right">
						<b><font face="Verdana" size="2">New Time</font></b></td>
                        <td width="180">
						<input type="text" name="newtime" size="20" tabindex="4"></td>
                    </tr>
                    <tr>
                        <td width="144"><b><font face="Verdana" size="2">Old Date</font></b></td>
                        <td>
				<input type="text" name="examdate" size="20" tabindex="4" value="<%=demodate%>" readonly></td>
                        <td width="121" align="right"><b><font face="Verdana" size="2">New Date</font></b></td>
                        <td width="180">	<input type="text" name="newdemodate" size="20" tabindex="4">
                        <script language="JavaScript">
                                                    new tcal ({'formname': 'itzack','controlname': 'newdemodate'});
                    </script></td>
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
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 354px; top: 264px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Update" name="submit" tabindex="5">
                        <input type="hidden" value="<%=did%>" name="did">
                        <input type="hidden" value="<%=time%>" name="time">
                        <input type="hidden" value="<%=demodate%>" name="demodate">
                     
                    
                        </td>                     
                    </tr>
                </table>
            </div>  
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 262px; top: 27px" id="layer4">
                <font color="#A60000"> <u><font face="Poor Richard" size="5"><b>Update 
				Timetable</b></font></u></font></div>  </div>
        </form>
    </body>
</html>
