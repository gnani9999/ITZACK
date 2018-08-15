<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>  
   <%!
        public static final DateFormat utilDateFormatter = new SimpleDateFormat("dd-MM-yyyy");
        public static final DateFormat sqlDateFormatter = new SimpleDateFormat("yyyy-MM-dd");
   %>
   <%!
        public static java.sql.Date utilDateToSqlDate(java.util.Date uDate) throws ParseException
        {
             return java.sql.Date.valueOf(sqlDateFormatter.format(uDate));
        }
  %>
  <% java.util.Locale locale = request.getLocale(); %>    
  <%! 
        String getFormattedDate(java.util.Date d)
        {
        SimpleDateFormat simpleDate = new SimpleDateFormat("MM/dd/yy hh:mm:ss");
        return simpleDate.format(d);
        }
      %>    
  <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String did,cname,newtime,newdemodate;
        %>
        <%
        did=request.getParameter("did");
        cname=request.getParameter("cname");
        newtime=request.getParameter("newtime");
        newdemodate=request.getParameter("newdemodate");
            java.util.Date d1 = new java.util.Date(newdemodate);
            newdemodate = getFormattedDate(d1);
            java.sql.Date newdemodate1=utilDateToSqlDate(d1);
            
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();        
        pst=con.prepareStatement("update demo set cname=?,time=?,demodate=? where did=?");
        pst.setString(1,cname);
        pst.setString(2,newtime);
        pst.setDate(3,newdemodate1);
        pst.setString(4,did);     
        pst.execute();
        %>     
        <jsp:include page="demoMgmt.jsp"></jsp:include>
        <div style="position: absolute; width: 286px; height: 24px; z-index: 1; left: 332px; top: 270px" id="layer2">
            <font size=4 color="#008000">
                <h2><font size="2" face="Verdana">Demo class details are updated successfully</font></h2>
            </font>
        </div>   
    </body>
</html>
