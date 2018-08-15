<%@ include file="index.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <script>
        function validate()
        {
           var i=0;
           var str="";
           if(document.itzack.uname.value.length===0)
           {
               str+="\n User Name";
               i++;
           }
           if(document.itzack.pwd.value.length===0)
           {
               str+="\n Password";
               i++;
           }
           if(i===0)
           {
              document.action="login1.jsp";
              document.submit();
              return true;
           }
           else
           {
               alert("Please enter the below feilds..\n"+str);
               return false;
           }
        }
    </script>
</head>

<body  >
    <form action="login1.jsp" method="post" name="itzack" onsubmit="return validate()">
    <%!
    String utype;
    %>
    <%
        utype=request.getParameter("utype");
    %>
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">

        <h1 align="center">&nbsp;</h1>
        
        <%
        if(utype.equals("admin"))
        {    
        %>    
        <div style="position: absolute; width: 704px; height: 55px; z-index: 1; left: 35px; top: 65px" id="layer1">
        <b><font color="#D98A06" size="5" face="Trebuchet MS">Welcome to Admin Login</font></b></div>
        <% 
        }
        else if(utype.equals("ctrainer"))
        {    
        %>    
        <div style="position: absolute; width: 655px; height: 55px; z-index: 1; left: 30px; top: 66px" id="layer1">
        <b><font color="#D98A06" size="5" face="Trebuchet MS">Welcome to Corporate trainer Login</font></b></div>
        <% 
        }
        else if(utype.equals("institute"))
        {    
        %>    
        <div style="position: absolute; width: 669px; height: 55px; z-index: 1; left: 29px; top: 67px" id="layer1">
        <b><font color="#D98A06" size="5" face="Trebuchet MS">Welcome to Institution Login</font></b></div>
        <% 
        }
        else if(utype.equals("student"))
        {    
        %>    
        <div style="position: absolute; width: 696px; height: 48px; z-index: 1; left: 38px; top: 66px" id="layer1">
        <b><font color="#D98A06" size="5" face="Trebuchet MS">Welcome to Student Login</font></b></div>
        <% 
        }
        else
        {    
        %>    
        <div style="position: absolute; width: 669px; height: 48px; z-index: 1; left: 38px; top: 65px" id="layer1">
        <b><font color="#D98A06" size="5" face="Trebuchet MS">Welcome to Advertisor Login</font></b></div>
        <% 
        }
        %>
        <div style="position: absolute; width: 267px; height: 206px; z-index: 2; left: 252px; top: 174px" id="layer2">
            <table border="0" width="100%" id="table1" height="102">
                <tr>
                    <td><font face="Verdana" size="2"><b>User Name</b></font></td>
                    <td><input type="text" name="uname" size="20" tabindex="4"></td>
                </tr>
                <tr>
                    <td><font face="Verdana" size="2"><b>Password</b></font></td>
                    <td>
					<input type="password" name="pwd" size="20" tabindex="5">
                                        <input type="hidden" name="utype" value="<%=utype%>"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
					<input type="submit" value="Login" name="B1" tabindex="6">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="Reset" name="B2" tabindex="7"></td>
                </tr>
            </table>
        </div>
        </div>
    </form>
</body>

</html>
