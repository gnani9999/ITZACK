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
        <form action="updateadd1.jsp" method="post"><div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 675px; top: 59px" id="layer5">
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
            String addid,uname,addname,adddescr;
            int i;
            %>
            <div style="position: absolute; width: 427px; height: 112px; z-index: 2; left: 224px; top: 105px" id="layer2">
                <%
                addid=request.getParameter("addid");
                uname=(String)session.getAttribute("uname");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from advertisement where addid='"+addid+"'");
                if(rs.next())
                {
                addname=rs.getString(3);
                adddescr=rs.getString(4);
                %>
                <% 
                }  
                %>
                <table border="0" width="108%" id="table3">
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">Add Name</font></b></td>
                        <td colspan="2">
						<input type="text" name="addname" value="<%=addname%>" size="20" tabindex="1"></td>
                    </tr>
                    <tr>
                        <td width="39%"><b><font face="Verdana" size="2">
						Description </font></b></td>
                        <td colspan="2"><textarea rows="4" name="adddescr" cols="27" tabindex="2"><%=adddescr%></textarea></td>
                    </tr>
                    <tr>
                        <td width="39%">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="39%">&nbsp;</td>
                        <td width="18%">
                        <input type="submit" value="Update" name="B1"></td>
                        <td width="39%"><input type="reset" value="Reset" name="B2"><input type="hidden" value="<%=addid%>" name="addid"><input type="hidden" value="<%=uname%>" name="uname"></td>
                    </tr>
                </table>
            </div>
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 280px; top: 31px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Update 
				Advertisement</font></b></u> </font>
            </div>  </div>
        </form>
    </body>
</html>
