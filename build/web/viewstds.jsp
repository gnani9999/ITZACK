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
        <form action="updateinstitute1.jsp" method="post">
        <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">
            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 708px; top: 85px" id="layer5">
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
            String fname,lname,mobile,email,addr,qual,pout,aggr;
            int i;
            %>
        <div style="position: absolute; width: 762px; height: 100px; z-index: 1; left: -6px; top: 126px" id="layer3">
            <table border="1" width="100%" id="table1" bordercolor="#797979">
                <tr>
                    <td>
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Student Name</font></b></td>
                    <td width="106">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Mobile</font></b></td>
                    <td width="134">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Email Id</font></b></td>
                    <td width="130">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Address</font></b></td>
                    <td width="98">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Qualification</font></b></td>
                    <td width="83">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Aggregate</font></b></td>
                    <td width="49">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Pass Out Year</font></b></td>
                </tr>
                <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from student");
                if(rs.next())
                {
                fname=rs.getString(2);
                lname=rs.getString(3);
                mobile=rs.getString(6);
                email=rs.getString(7);
                addr=rs.getString(8);
                qual=rs.getString(9);
                pout=rs.getString(11);
                aggr=rs.getString(12);
                %>
                        <tr>                            
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=lname%>&nbsp;<%=fname%></font></b></td>
                            <td height="26" align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=mobile%></font></b></td>
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><a href="mail1.jsp"><%=email%></a></font></b></td>
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=addr%></font></b></td>
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=qual%></font></b></td>
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=aggr%></font></b></td>
                            <td align="center"><b>
							<font face="Verdana" size="2" color="#797979"><%=pout%></font></b></td>
                        </tr>
                <% }  %>
                </table>
            </div>
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 300px; top: 35px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Students List</font></b></u> </font>
            </div>  </div>
        </form>
    </body>
</html>
