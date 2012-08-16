<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mypage.aspx.cs" Inherits="mypage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            function() {
    $("#bdiv").load("bosses.php #icc10n",function(){
        return $("#bdiv").html();
    });
}

But it's not working. To clarify, I want to load content into #bdiv and then return the contents of #bdiv. But it seems that $("#bdiv").html() is being returned before the content is loaded even though I've put it in a callback function. 
    </div>
    </form>
</body>
</html>
