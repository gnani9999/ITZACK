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
        <form action="updatefac1.jsp" method="post">
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


            <div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 611px; top: 84px" id="layer5">
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
            String instid,fid,fname,qual,exp,langs;
            int i;
            %>
            <div style="position: absolute; width: 314px; height: 112px; z-index: 2; left: 268px; top: 130px" id="layer2">
                <%
                fid=request.getParameter("fid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                rs=st.executeQuery("select * from faculty where fid='"+fid+"'");
                if(rs.next())
                {
                fname=rs.getString(3);
                qual=rs.getString(4);
                exp=rs.getString(5);
                langs=rs.getString(6);
                %>
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Faculty Name</font></b></td>
                        <td><input type="text" name="fname" size="20" tabindex="1" value="<%=fname%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Qualification</font></b></td>
                        <td><input name="qual" size="20" tabindex="2" value="<%=qual%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Experience</font></b></td>
                        <td><input type="text" name="exp" size="20" tabindex="3" value="<%=exp%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Skill Set</font></b></td>
                        <td><input type="text" name="skill" size="20" tabindex="4" value="<%=langs%>"></td>
                    </tr>
                </table>
                <% }  %>
            </div>
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 374px; top: 260px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Update" name="submit" tabindex="5">                        
                        <input type="hidden" value="<%=fid%>" name="fid">
                        </td>
                    </tr>
                </table>
            </div>  
            <div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 262px; top: 27px" id="layer4">
                <font color="#A60000"> <u><b><font face="Poor Richard" size="5">Update Faculty 
                Information</font></b></u> </font>
            </div></div>  
        </form>
    </body>
</html>
