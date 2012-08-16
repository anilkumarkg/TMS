<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testjs.aspx.cs" Inherits="testjs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script language="javascript" type="text/javascript">
    function testLoad()
    {
     alert("Loading...");
    }
    </script>
</head>
<body onload="testLoad()">
    <form id="form1"  ="testLoad()" action="testjs.aspx">
    <div>
        <input id="Button1" type="button" value="button" onclick="testLoad()" onload="testLoad()" />
    
    </div>
    </form>
</body>
</html>
