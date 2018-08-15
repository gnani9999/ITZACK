function checkUpdateSeeker()
{
    var why = "";
    why += checkFirstname(document.overseas.fn.value);
    why += checkLastname(document.overseas.ln.value);
    why += checkPwd(document.overseas.pwd.value);
    why += checkAddr(document.overseas.addr.value);
    why += checkCity(document.overseas.city.value);
    why += checkSkills(document.overseas.skills.value);
    why += checkDropdownYrs(document.overseas.years.value);
    why += checkDropdownMths(document.overseas.months.value);
    why += checkPhn(document.overseas.phn.value);
    why += checkEmail(document.overseas.email.value);
    why += checkMobile(document.overseas.mobile.value);
    if (why != "")
    {
       alert(why);
       return false;
    }
return true;
}

function checkFirstname (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter a first name.\n";
 }
return error;
}

function checkLastname (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter a Last name.\n";
 }
return error;
}

function checkPwd (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter a Password.\n";
 }
return error;
}

function checkAddr (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter a Address.\n";
 }
return error;
}

function checkCity (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter a City.\n";
 }
return error;
}
function checkSkills (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter Skills.\n";
 }
return error;
}

function checkDropdownYrs(strng)
{
var error = "";
 if (strng == "Select")
 {
    error = "Please choose Experience in Years\n";
 }
return error;
}

function checkDropdownMths(strng)
{
var error = "";
 if (strng == "Select")
 {
    error = "Please choose Experience in Months\n";
 }
return error;
}

function checkPhn (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter Phone Number.\n";
 }
return error;
}

function checkEmail (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter Email Id.\n";
 }
return error;
}

function checkMobile (strng)
 {
 var error = "";
 if (strng == "")
 {
    error = "You didn't enter Mobile.\n";
 }
return error;
}













