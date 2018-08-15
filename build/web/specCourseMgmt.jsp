<%@ include file="index1.jsp"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
       <script language="JavaScript">
        function confirmDelete(delUrl) 
        {
          if (confirm("Are you sure you want to delete"))
          {
            document.location = delUrl;
          }
        }
        </script>
    </head>
 <body  >
     <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">            
         
        <div style="position: absolute; width: 269px; height: 36px; z-index: 4; left: 288px; top: 43px" id="layer4">
            <u><b><font face="Poor Richard" size="5" color="#A60000">Special 
			Courses</font></b></u>
    </div>  
			<div style="position: absolute; width: 50px; height: 31px; z-index: 3; left: 650px; top: 76px" id="layer5">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
     <%!
            Connection con;
            Statement st,st1;
            ResultSet rs,rs1;
            String ctid,ctname,crsid,crsname;
     %>
     <%
            ctid=(String)session.getAttribute("ctid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from speccourse where ctid='"+ctid+"'");  
     %>
        <div style="position: absolute; width: 524px; height: 100px; z-index: 1; left: 125px; top: 120px" id="layer3">
            <table border="1" width="101%" id="table1" bordercolor="#797979">
                <tr>
                    <td>
                        <p align="center">
                    <b><font face="Trebuchet MS" size="2">Course ID</font></b></td>
                    <td width="111">
                        <p align="center">
                    <b><font face="Trebuchet MS" size="2">Trainer</font></b></td>
                    <td width="163">
                        <p align="center">
                    <b><font face="Trebuchet MS" size="2">Course Name</font></b></td>
                    <td width="135">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2">Action</font></b></td>
                </tr>
                <%
                while(rs.next())
                {
                ctname=rs.getString(2);
                crsid=rs.getString(3);
                crsname=rs.getString(4);
                %>
                <tr>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=crsid%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=ctname%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#797979"><b><%=crsname%></b></font><b><font color="#797979" size="2">
						</font></b>
                    </td>
                    <td align="center">
                        <b>
                        <a href="updateSpecCourse.jsp?crsid=<%=crsid%>&crsname=<%=crsname%>">
						<font face="Trebuchet MS" size="2" color="#797979">Update</font></a>/<font color="#797979" size="2">
                         <a href="javascript:confirmDelete('deleteSpecCourse.jsp?crsid=<%=crsid%>&crsname=<%=crsname%>')"><font face="Trebuchet MS" size="2" color="#797979">Delete</font></a> </b>
                    </td>
                </tr>
                <%
                }   
                %>
            </table>  
        </div></div>
    </body>
</html>
