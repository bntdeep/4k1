<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3.aspx.cs" Inherits="PIS_lab_07._3" %>
<%@ OutputCache Duration="30" VaryByParam="name;age" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-top:200px;">
       <asp:Label ID="labeldate" runat="server" Font-Size="25"></asp:Label>
    </div>
    </form>
</body>
</html>
