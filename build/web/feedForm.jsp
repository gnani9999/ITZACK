<%@ include file="index1.jsp"%>
<html>
    <body>
        <form action="submitfeedback1.jsp" method="post" name="itzack">
            <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">
                
                <div style="position: absolute; width: 100px; height: 26px; z-index: 7; left: 565px; top: 100px" id="layer7">
                    <b><a href="stdlogin.jsp">
                <font face="Tahoma" size="2" color="#2D2E32">Back</font></a></b></div>
                <%!
                String fname;
                %><%
                fname=(String)session.getAttribute("fname");
                %>  
                <div style="position: absolute; width: 364px; height: 220px; z-index: 3; left: 182px; top: 141px" id="layer5">
                    
                    <table border="0" width="100%" id="table1">
                        <tr>
                            <td colspan="2"><font face="Arial Narrow">1.Are you 
                            satisfied with the services of this website?</font></td>
                        </tr>
                        <tr>
                            <td><font face="Arial Narrow">
                            <input type="radio" value="yes" name="R1">&nbsp; Yes</font></td>
                            <td><font face="Arial Narrow">
                            <input type="radio" name="R1" value="no" checked>&nbsp;&nbsp; No</font></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2"><font face="Arial Narrow">2.Staff 
                            interaction is good?</font></td>
                        </tr>
                        <tr>
                            <td><font face="Arial Narrow">
                            <input type="radio" name="R2" value="yes">&nbsp;&nbsp; Yes</font></td>
                            <td><font face="Arial Narrow">
                            <input type="radio" name="R2" value="no" checked>&nbsp;&nbsp; No</font></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2"><font face="Arial Narrow">3.Products 
                            performance is good?</font></td>
                        </tr>
                        <tr>
                            <td><font face="Arial Narrow">
                            <input type="radio" name="R3" value="yes">&nbsp;&nbsp; Yes</font></td>
                            <td><font face="Arial Narrow">
                            <input type="radio" name="R3" value="no" checked>&nbsp;&nbsp; No</font></td>
                        </tr>
                        <tr>
                            <td colspan="2"><font face="Arial Narrow">Any Suggestions</font></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            <textarea rows="3" name="feedback" cols="32"></textarea></td>
                        </tr>
                        <tr>
                            <td><font face="Arial Narrow">Mobile/Phone</font></td>
                            <td><input type="text" name="phn" size="27"></td>
                        </tr>
                        <tr>
                            <td><font face="Arial Narrow">Email Address</font></td>
                            <td><input type="text" name="email" size="27"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Submit Feedback" name="B1"></td>
                        </tr>
                    </table>
                    
                </div>
                
                
                <div style="position: absolute; width: 100px; height: 27px; z-index: 5; left: 668px; top: 99px" id="layer9">
                    <b><a href="login.jsp">
                <font face="Tahoma" size="2" color="#2D2E32">Logout</font></a></b></div>
                
                <div style="position: absolute; width: 256px; height: 25px; z-index: 4; left: 209px; top: 54px" id="layer6">
                    <b><font face="Arial" size="4" color="#F5A625">Hi <%=fname%>,</font></b>
                    <p><b><font face="Arial" size="4" color="#F5A625">Enter your 
                Feedback</font></b></div>  
                
                <p>&nbsp;</p>
            </div>
        </form>
    </body>
</html>
