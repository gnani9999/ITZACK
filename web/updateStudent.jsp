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
        <form action="updateStudent1.jsp" method="post"><div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 634px; top: 77px" id="layer5">
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
            String stdid,fname,lname,uname,pwd,email,mobile,qual,instn,addr,pout,aggr;
            int i;
            %>
            <div style="position: absolute; width: 427px; height: 112px; z-index: 2; left: 274px; top: 109px" id="layer2">
                <%
                String stdid=(String)session.getAttribute("stdid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from student where stdid='"+stdid+"'");
                if(rs.next())
                {
                fname=rs.getString(2);
                lname=rs.getString(3);
                uname=rs.getString(4);
                pwd=rs.getString(5);
                mobile=rs.getString(6);
                email=rs.getString(7);
                addr=rs.getString(8);
                qual=rs.getString(9);
                instn=rs.getString(10);
                pout=rs.getString(11);
                aggr=rs.getString(12);
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
                        <td width="39%"><b>
                        <font face="Verdana" size="2">First Name</font></b></td>
                        <td colspan="2"><input type="text" name="fname" value="<%=fname%>"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b>
                        <font face="Verdana" size="2">Last Name</font></b></td>
                        <td colspan="2"><input type="text" name="lname" value="<%=lname%>"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Highest Qualification</font></b></td>
                        <td colspan="2"><input type="text" name="qual" value="<%=qual%>" size="20"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Institution</font></b></td>
                        <td colspan="2"><input type="text" name="instn" value="<%=instn%>" size="20"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Passed Out</font></b></td>
                        <td colspan="2"><input type="text" name="pout" value="<%=pout%>" size="20"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Aggregate</font></b></td>
                        <td colspan="2"><input type="text" name="aggr" value="<%=aggr%>" size="20"></td>
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
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 280px; top: 31px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Update Student Information</font></b></u> </font>
            </div>  </div>
        </form>
    </body>
</html>
