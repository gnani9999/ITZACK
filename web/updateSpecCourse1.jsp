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
        String ctname,crsid,crsname,ntime,ncrsdate,loc;
        int fee;        
  %>
        <%
        ctname=request.getParameter("ctname");
        crsid=request.getParameter("crsid");
        crsname=request.getParameter("crsname");
        fee=Integer.parseInt(request.getParameter("fee"));
        ntime=request.getParameter("ntime");
        loc=request.getParameter("loc");
        out.println("loc : "+loc);
        ncrsdate=request.getParameter("ncrdate");
            java.util.Date d1 = new java.util.Date(ncrsdate);
            ncrsdate = getFormattedDate(d1);
            java.sql.Date ncrsdate1=utilDateToSqlDate(d1);
            
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
        st=con.createStatement();        
        pst=con.prepareStatement("update speccourse set crsname=?,time=?,crsdate=?,fee=?,loc=? where crsid=?");
        pst.setString(1,crsname);
        pst.setString(2,ntime);
        pst.setDate(3,ncrsdate1);
        pst.setInt(4,fee);
        pst.setString(5,loc);
        pst.setString(6,crsid);     
        pst.execute();
        %>     
        <jsp:include page="ctrainerlogin.jsp"></jsp:include>
        <div style="position: absolute; width: 393px; height: 24px; z-index: 1; left: 375px; top: 290px" id="layer2">
            <font size=4 color="#008000">
                <h2><font size="2" face="Verdana">Course details are updated successfully</font></h2>
            </font>
        </div>   
    </body>
</html>
