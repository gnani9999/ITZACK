<%@ include file="index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta http-equiv="Content-Language" content="en-us">
    <title></title>
<script>
    function payment()
    {
     document.itzack.ipay.value=document.itzack.bths.value*500;
    }
function validate()
{
  var st="";
  var i=0;
	if(document.itzack.uname.value.length==0)
	{
	    st+="\n Institute Name";
	    i++;
	}
	if(document.itzack.pwd.value.length==0)
	{
	    st+="\n Password";
	    i++;
	}
	if(document.itzack.mobile.value.length==0)
	{
	    st+="\n Mobile Number";
	    i++;
	}
	if(document.itzack.email.value.length==0)
	{
	    st+="\n Email Id";
	    i++;
	}
	if(document.itzack.addr.value.length==0)
	{
	    st+="\n Address";
	    i++;
	}
	if(i==0)
	{
	   document.action="advertisorreg1.jsp";
	   document.submit();
	   return true;
	}
	else
	{
	   alert("Please enter the below Fields...\n"+st);
	   return false;
	}
}
</script>
  </head>
<body>
<form action="advertisorreg1.jsp" method="post" name="itzack"  onsubmit="return validate()" > 
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


<div style="position: absolute; width: 288px; height: 55px; z-index: 4; left: 244px; top: 29px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Advertiser 
    Registration</font></b></u><font color="#A60000"> </font>
</div>  
        <div style="position: absolute; width: 366px; height: 160px; z-index: 2; left: 188px; top: 124px" id="layer2">
            <table border="0" width="100%" id="table3">
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">User Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="uname" size="20" tabindex="1"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Password</font></b></td>
                    <td width="46%">
                    <input type="password" name="pwd" size="20" tabindex="2"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Mobile</font></b></td>
                    <td width="46%">
                    <input type="text" name="mobile" size="20" tabindex="3"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Email Id</font></b></td>
                    <td width="46%">
                    <input type="text" name="email" size="20" tabindex="4"></td>
                </tr>
                <tr>
                    <td width="49%"><b><font face="Verdana" size="2">Address</font></b></td>
                    <td width="46%">
                    <textarea rows="2" name="addr" cols="20" tabindex="5"></textarea></td>
                </tr>
                </table>
        </div>
<div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 274px; top: 294px" id="layer3">
    <table border="0" width="100%" id="table2">
        <tr>
            <td>
            <input type="submit" value="Submit" name="submit" tabindex="6"></td>
            <td><input type="reset" value="Reset" name="reset" tabindex="7"></td>
        </tr>
    </table>
</div>  
			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 577px; top: 85px" id="layer5">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>  </div>
</form>
        </body>
</html>
