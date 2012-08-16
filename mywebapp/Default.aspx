<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Web Application</title>
    <link href="css/ui-darkness/jquery-ui-1.8.22.custom.css" type="text/css" rel="Stylesheet" />
    <script language="javascript" type="text/javascript" src="js/jquery-1.8.0.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery-ui-1.8.22.custom.min.js"></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function(){$("#Button1").click(function(){$("p").hide();});});
       $(document).ready(function(){$("#Button2").click(function(){$("#dialog").dialog({modal:true});});});
       $(document).ready(function(){$("#Button3").click(function(){$('#mydiv').dialog({modal:true}); $("#mydiv").load('mypage.htm');});});
      
      $(document).ready(function(){ 
      $('#loadingDiv')
      .hide()
      .ajaxStart(function() {
        $('#loadingDiv').dialog({modal:true});
    })
    .ajaxStop(function() {
        $('#loadingDiv').dialog("close");
    });
});
    </script>
    <script language="javascript" type="text/javascript">
  function testLoad()
  {
  alert("jjjj");
  }
    
    </script>
</head>
<body onload="testLoad()">
    <form id="frmDefualt"  method="POST" action="http://www.webservicex.net/CurrencyConvertor.asmx/ConversionRate" target="_blank">
    <div>
        <p> 
            Testing Server..... 
            </p>
            <input id="Button1" type="button" value="button 1" />
            <input id="Button2" type="button" value="button 2" />
            <input id="Button3" type="button" value="Load Page" />
            <input id="Convert" type="submit" value="Covert Curr" />
            <input name="FromCurrency" type="text" value="" />
     
            <input name="ToCurrency" type="text" value="" />
    </div>
    <div id="dialog" title="Basic dialog">
	<p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>


<div id="mydiv">
      jhkghjkgh
</div>

<div id="loadingDiv" title="Loading......">
    <img src="css/ui-darkness/images/spinner.gif" alt="Loading"/>    
</div>
    </form>
    <form runat="server" action="Default.aspx">
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </form>
</body>
</html>
