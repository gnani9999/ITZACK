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
	if(document.itzack.iname.value.length==0)
	{
	    st+="\n Institute Name";
	    i++;
	}
	if(document.itzack.ipwd.value.length==0)
	{
	    st+="\n Password";
	    i++;
	}
	if(document.itzack.iaddr.value.length==0)
	{
	    st+="\n Institute Address";
	    i++;
	}
	if(document.itzack.iphn.value.length==0)
	{
	    st+="\n Phone Number";
	    i++;
	}
	if(document.itzack.estdate.value.length==0)
	{
	    st+="\n Established Date";
	    i++;
	}
	if(i==0)
	{
	   document.action="institutereg1.jsp";
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
<body  >
<form action="institutereg1.jsp" method="post" name="itzack" onsubmit="return validate()" >
    <div style="border-style:solid; border-color:#FCD99E; position: absolute; width: 760px; height: 564px; z-index: 1; left: 297px; top: 301px" id="layer6">


<div style="position: absolute; width: 281px; height: 252px; z-index: 1; left: 435px; top: 122px" id="layer1">
<img border="0" src="images/ozw_training_institute_jda140108_7.jpg" width="308" height="253"></div>
<div style="position: absolute; width: 383px; height: 157px; z-index: 2; left: 31px; top: 122px" id="layer2">
    <table border="0" width="101%" id="table1">
        <tr>
            <td width="190"><b><font face="Verdana" size="2">Institute Name</font></b></td>
            <td><input type="text" name="iname" size="20" tabindex="1"></td>
        </tr>
        <tr>
            <td width="190"><b><font face="Verdana" size="2">Password</font></b></td>
            <td><input type="password" name="ipwd" size="20" tabindex="2"></td>
        </tr>
        <tr>
            <td width="190" height="26"><b><font face="Verdana" size="2">Institute Postal Address</font></b></td>
            <td height="26">
            <textarea rows="3" name="iaddr" cols="23" tabindex="3"></textarea></td>
        </tr>
        <tr>
            <td width="190"><b><font face="Verdana" size="2">Institute Phone Number</font></b></td>
            <td><input type="text" name="iphn" size="20" tabindex="4"></td>
        </tr>
        <tr>
            <td width="190"><b><font face="Verdana" size="2">Institute Established Date</font></b></td>
            <td><input type="text" name="estdate" size="20" tabindex="5"></td>
        </tr>
    </table>
    </p>
</div>
<div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 153px; top: 335px" id="layer3">
    <table border="0" width="100%" id="table2">
        <tr>
            <td>
            <input type="submit" value="Submit" name="submit" tabindex="6"></td>
            <td><input type="reset" value="Reset" name="reset" tabindex="7"></td>
        </tr>
    </table>
</div>  
<div style="position: absolute; width: 311px; height: 55px; z-index: 4; left: 220px; top: 29px" id="layer4">
    <u><b><font face="Poor Richard" size="5" color="#A60000">Institution 
    Registration</font></b></u><font color="#A60000"> </font>
</div>  
			<div style="position: absolute; width: 50px; height: 28px; z-index: 3; left: 626px; top: 83px" id="layer5">
				<font face="Arial Narrow" size="2">
				<b><font color="#00AE2C"><a href="javascript:history.back()">
				<font color="#000000">Back</font></a></font></b>
				</font>
			</div>  
</div>
</form>
</body>
</html>
