<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body >
        <form>
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String uname,pwd,utype,status,instid,iname,ctid;
            %>
            <%
            utype=request.getParameter("utype");
            out.println("utype : "+utype);
            uname=request.getParameter("uname");
            pwd=request.getParameter("pwd");
            session.setAttribute("utype",utype);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itzack","itzack");
            st = con.createStatement();
            if(utype.equals("admin"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from admin where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
            %>
            <jsp:forward page="adminlogin.jsp"></jsp:forward>
            <%
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("ctrainer"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from cortrainer where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
                    ctid=rs.getString(1);
                    uname=rs.getString(2);
                    status=rs.getString(11);
                    session.setAttribute("ctid",ctid);
                    session.setAttribute("uname",uname);
                   if(status.equals("Approved"))
                       {
            %>
                        <jsp:forward page="ctrainerlogin.jsp"></jsp:forward>
            <%
                       }
                   else
                       {
                        %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                            Sorry, you did n't get the approval</font>
                        </div>
                        <jsp:include page="login.jsp"></jsp:include>
                        <font size="4" color="#FF0000">
                        <%
                       }
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("institute"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from institute where iname='"+uname+"'and ipwd='"+pwd+"'");
                if(rs.next())
                {
                    instid=rs.getString(1);
                    iname=rs.getString(2);
                    status=rs.getString(7);
                    session.setAttribute("instid",instid);
                    session.setAttribute("iname",iname);
                   if(status.equals("Approved"))
                       {
            %>
                        <jsp:forward page="institutelogin.jsp"></jsp:forward>
            <%
                       }
                   else
                       {
                        %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                            Sorry, you did n't get the approval</font>
                        </div>
                        <jsp:include page="login.jsp"></jsp:include>
                        <font size="4" color="#FF0000">
                        <%
                       }
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("student"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from student where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
                    String stdid=rs.getString(1);
                    String fname=rs.getString(2);
                    String lname=rs.getString(3);
                    String iname=rs.getString(10);
                    session.setAttribute("stdid",stdid);
                    session.setAttribute("fname",fname);
                    session.setAttribute("lname",lname);
                    session.setAttribute("iname",iname);
            %>
            <jsp:forward page="stdlogin.jsp"></jsp:forward>
            <%
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("adv"))
            {
                rs=st.executeQuery("select * from advertisor where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
                    String advrid=rs.getString(1);
                    String uname=rs.getString(2);
                    session.setAttribute("advrid",advrid);
                    session.setAttribute("uname",uname);
            %>
            <jsp:forward page="advertisorlogin.jsp"></jsp:forward>
            <%
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 12px; top: 110px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            %>
            <jsp:include page="login.jsp"></jsp:include>                       
        </form>
    </body>
</html>