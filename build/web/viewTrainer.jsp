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
        <form method="post">
        <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">

            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 684px; top: 75px" id="layer5">
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
            String ctid,fn,ln,uname,pwd,qual,skill,mobile,email,addr;
            int i;
            %>
            <div style="position: absolute; width: 269px; height: 112px; z-index: 2; left: 323px; top: 116px" id="layer2">
                <%
                ctid=request.getParameter("ctid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from cortrainer where ctid='"+ctid+"'");
                if(rs.next())
                {
                fn=rs.getString(2);
                ln=rs.getString(3);
                uname=rs.getString(4);
                pwd=rs.getString(5);
                mobile=rs.getString(6);
                email=rs.getString(7);
                addr=rs.getString(8);
                qual=rs.getString(9);
                skill=rs.getString(10);
                %>
                <table border="0" width="101%" id="table1">
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							First Name</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=fn%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110" height="26"><b>
							<font face="Verdana" size="2">Last Name</font></b></td>
                            <td height="26"><b><font face="Verdana" size="2"><%=ln%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							User Name</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=uname%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							Password</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=pwd%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							Qualification</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=qual%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110" height="23"><b>
							<font face="Verdana" size="2">Skill Set</font></b></td>
                            <td height="23"><b><font face="Verdana" size="2"><%=skill%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							Mobile</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=mobile%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110" height="23"><b>
							<font face="Verdana" size="2">Email ID</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=email%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110"><b><font face="Verdana" size="2">
							Address</font></b></td>
                            <td><b><font face="Verdana" size="2"><%=addr%></font></b></td>
                        </tr>
                        <tr>
                            <td width="110">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td width="110">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                </table>
                <% }  %>
            </div>
            <div style="position: absolute; width: 358px; height: 55px; z-index: 4; left: 273px; top: 32px" id="layer4">
                <u><b><font face="Poor Richard" size="5" color="#A60000">
				Corporate Trainer</font></b></u><font color="#A60000"><u><b><font face="Poor Richard" size="5"> 
                Information</font></b></u> </font>
            </div>  </div>
        </form>
    </body>
</html>
