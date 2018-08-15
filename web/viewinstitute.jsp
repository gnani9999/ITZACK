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
        <form action="updateinstitute1.jsp" method="post"><div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 651px; top: 76px" id="layer5">
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
            String instid,iname,ipwd,iaddr,iphn,estdate;
            int i;
            %>
            <div style="position: absolute; width: 434px; height: 112px; z-index: 2; left: 200px; top: 122px" id="layer2">
                <%
                instid=request.getParameter("instid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from institute where instid='"+instid+"'");
                if(rs.next())
                {
                iname=rs.getString(2);
                ipwd=rs.getString(3);
                iaddr=rs.getString(4);
                iphn=rs.getString(5);
                estdate=rs.getString(6);
                %>
                <table border="0" width="101%" id="table1">
                        <tr>
                            <td width="199"><b><font face="Verdana" size="2">Institute Name</font></b></td>
                            <td><%=iname%></td>
                        </tr>
                        <tr>
                            <td width="199" height="26"><b><font face="Verdana" size="2">Institute Postal Address</font></b></td>
                            <td height="26"><%=iaddr%></td>
                        </tr>
                        <tr>
                            <td width="199"><b><font face="Verdana" size="2">Institute Phone Number</font></b></td>
                            <td><%=iphn%></td>
                        </tr>
                        <tr>
                            <td width="199"><b><font face="Verdana" size="2">Institute Established Date</font></b></td>
                            <td><%=estdate%></td>
                        </tr>
                </table>
                <% }  %>
            </div>
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 279px; top: 30px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Institute 
                Information</font></b></u> </font>
            </div>  </div>
        </form>
    </body>
</html>
