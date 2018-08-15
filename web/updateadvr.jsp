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
        <form action="updateadvr1.jsp" method="post">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">



            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 631px; top: 65px" id="layer5">
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
            String advrid,uname,pwd,email,mobile,addr;
            %>
            <div style="position: absolute; width: 427px; height: 112px; z-index: 2; left: 234px; top: 102px" id="layer2">
                <%
                String advrid=(String)session.getAttribute("advrid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from advertisor where advrid='"+advrid+"'");
                if(rs.next())
                {
                uname=rs.getString(2);
                pwd=rs.getString(3);
                mobile=rs.getString(4);
                email=rs.getString(5);
                addr=rs.getString(6);
                %>
                <% }  %>
                <table border="0" width="108%" id="table3">
                    <tr>
                        <td width="39%"><b>
                        <font face="Verdana" size="2">User Name</font></b></td>
                        <td colspan="2"><input type="text" name="uname" value="<%=uname%>" readonly></td>
                    </tr>
                    <tr>
                        <td width="39%"><b>
                        <font face="Verdana" size="2">Password </font></b></td>
                        <td colspan="2"><input type="text" name="pwd" value="<%=pwd%>"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Email Id</font></b></td>
                        <td colspan="2"><input type="text" name="email" size="20" value="<%=email%>"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Mobile</font></b></td>
                        <td colspan="2"><input type="text" name="mobile" value="<%=mobile%>"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Address</font></b></td>
                        <td colspan="2"><input type="text" name="addr" value="<%=addr%>"></td>
                    </tr>
                    <tr>
                        <td width="39%">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="39%">&nbsp;</td>
                        <td width="18%">
                        <input type="submit" value="Update" name="B1"></td>
                        <td width="39%"><input type="reset" value="Reset" name="B2"></td>
                    </tr>
                </table>
            </div>
            <div style="position: absolute; width: 391px; height: 31px; z-index: 4; left: 224px; top: 29px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Update 
				Advertiser Information</font></b></u> </font>
            </div> </div> 
        </form>
    </body>
</html>
