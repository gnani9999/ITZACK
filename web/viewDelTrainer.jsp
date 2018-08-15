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
 <form method="post"><div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 710px; top: 36px" id="layer3">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>
<div style="position: absolute; width: 311px; height: 39px; z-index: 4; left: 267px; top: 21px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Corporate Trainer Details</font></b></u><font color="#A60000"> </font>
</div>  
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String ctid,name,status;
            %>
            <%  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st=con.createStatement();
            rs=st.executeQuery("select * from cortrainer");
            %><div style="position: absolute; width: 599px; height: 54px; z-index: 1; left: 121px; top: 74px" id="layer1">
            <table width="599" border="1" bordercolor="#D8D8D8">
                <tr>
                    <td width="101" align="center">
					<b><font face="Verdana" size="2">Trainer ID</font></b></td>
                    <td width="391" align="center">
					<b>
					<font face="Verdana" size="2">Name</font></b></td>
                    <td align="center">
					<b>
					<font face="Verdana" size="2">Action</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                ctid=rs.getString(1);
                name=rs.getString(4);
            %>
            <tr>
                <td width="101" align="center">
				<font color="#797979" face="Verdana" size="2"><%=ctid%></font></td>
                <td width="391" align="center">
				<font color="#797979" face="Verdana" size="2"><%=name%></font></td>                
                <td align="center">
                        <b>
                        <a href="viewTrainer.jsp?ctid=<%=ctid%>">
						<font face="Trebuchet MS" size="2" color="#797979">View</font></a>/<font color="#797979" size="2">
                         <a href="javascript:confirmDelete('delTrainer.jsp?ctid=<%=ctid%>&name=<%=name%>')"><font face="Trebuchet MS" size="2" color="#797979">Delete</font></a> </b>
                    </td>
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div></div>
        </form>
    
    </body>
</html>
