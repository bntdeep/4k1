<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="120px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Height="20px" style="margin-left: 55px" 
        Text="Button" Width="50px" />
    <div>
    
        <cc1:DynamicValidator ID="DynamicValidator1" runat="server" 
            ControlToValidate="TextBox1" ondatabinding="DynamicValidator1_DataBinding">Ошибка</cc1:DynamicValidator></div>
    </form>
</body>
</html>
