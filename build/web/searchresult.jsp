<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  >  <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">

      
        <div style="position: absolute; width: 269px; height: 36px; z-index: 4; left: 385px; top: 41px" id="layer4">
            <u><b><font face="Poor Richard" size="5" color="#A60000">Search 
			Results</font></b></u>
    </div>  
			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 812px; top: 67px" id="layer5">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
            <%!
                Connection con;
                PreparedStatement pst;
                Statement st,st1;
                ResultSet rs;
                String instid,cid,cname,fee,dur,fac,loc1,course1,inst1,type,loc,iname;
            %>
        <div style="position: absolute; width: 676px; height: 100px; z-index: 1; left: 132px; top: 115px" id="layer3">
            <table border="1" width="101%" id="table1" bordercolor="#797979">
                <tr>
                    <td width="105">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Institute</font></b></td>
                    <td width="105">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Location</font></b></td>
                    <td width="105">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Faculty</font></b></td>
                    <td width="104">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Course Name</font></b></td>
                    <td width="100">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Fee</font></b></td>
                    <td width="94">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Duration</font></b></td>
                </tr>
            <%
                type=request.getParameter("type");
                loc1=request.getParameter("loc1");
                course1=request.getParameter("course1");
                inst1=request.getParameter("inst1");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
                st=con.createStatement();
                
                if(type.equals("loc"))
                {
                    out.println("<b><font face='Trebuchet MS'>Location : "+loc1+"</Verdena>");
                    rs=st.executeQuery("select * from course where lower(loc) like '"+loc1.toLowerCase()+"%'");  
                }
                else if(type.equals("course"))
                {
                    out.println("<b><font face='Trebuchet MS'>Course : "+course1+"</Verdena>");
                    rs=st.executeQuery("select * from course where lower(cname) like '"+course1.toLowerCase()+"%'");  
                }
                else if(type.equals("inst"))
                {
                    out.println("<b><font face='Trebuchet MS'>Institute : "+inst1+"</Verdena>");
                    rs=st.executeQuery("select * from course where lower(iname) like '"+inst1.toLowerCase()+"%'");                  
                }
            %>
                <%
                while(rs.next())
                {
                cid=rs.getString(2);
                cname=rs.getString(3);
                fee=rs.getString(4);
                dur=rs.getString(5);
                fac=rs.getString(6);
                loc=rs.getString(7);
                iname=rs.getString(8);
                %>
                <tr>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=iname%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=loc%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=fac%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=cname%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=fee%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=dur%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                </tr>
                <%
                }  
                %>
            </table> </div> 
    </body>
</html>
