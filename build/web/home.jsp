<%@ include file="index2.jsp"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
	<div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">
        <div style="position: absolute; width: 692px; height: 382px; z-index: 2; left: 56px; top: 130px" id="layer8">        
        <table width="100%" id="table1">
	    <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String addid,uname,addname,adddescr;
        int i=1;
        %> 
        <%
        String uname=(String)session.getAttribute("uname");
        addname=request.getParameter("addname");
        adddescr=request.getParameter("adddescr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();
        rs=st.executeQuery("select * from advertisement");
        while(rs.next())
        {  
          addid=rs.getString(1);
          uname=rs.getString(2);
          addname=rs.getString(3);
          adddescr=rs.getString(4);
        %>
			<tr>
				<td height="85" bordercolorlight="#D98A06" bordercolordark="#D98A06"><b>
                                <font face="Aparajita" color="#808080" size="5"><%=i%>&nbsp;.&nbsp;<%=adddescr%></font></b></td>
			</tr>
        <% 
        i++;
        }
        %>
		</table>
        
        </div>
	<p class="MsoNormal" style="margin-top:0in;margin-right:-.5in;margin-bottom:0in;
margin-left:.5in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;</font></p>
	
	<div style="position: absolute; width: 796px; height: 40px; z-index: 1; left: 0px; top: 17px" id="layer7">
		<p align="center"><b>
		<font face="Bodoni MT Condensed" size="6" color="#D98A06">
		Advertisements</font></b></div>
	
	<p>&nbsp;</div>

	<p>	</div>

</body>

</html>