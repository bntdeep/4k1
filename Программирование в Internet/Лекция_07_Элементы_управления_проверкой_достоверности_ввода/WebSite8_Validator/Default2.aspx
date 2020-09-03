<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="width: 313px; height: 101px;">
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    Имя
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="120px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Дата
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="120px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    е-mail
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="120px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Сумма&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="120px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ввести" Width="313px" />
        <br />
        <br />
        
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="42px" 
            Width="416px" />
    </div>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Имя должно быть введено " ControlToValidate="TextBox1" 
        Display="None"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Дата должна быть в пределах [01.01.2011, 31.12.2011]" ControlToValidate="TextBox2" 
        Display="None" MaximumValue="01.01.2012" MinimumValue="01.01.2011" 
        Type="Date"></asp:RangeValidator> 
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Oшибка а e-mail адресе " ControlToValidate="TextBox3" 
        Display="None" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ControlToValidate="TextBox4" Display="None" 
        ErrorMessage="Сумма должна быть в пределах [0, 200000]" MaximumValue="200000" 
        MinimumValue="0" Type="Integer"></asp:RangeValidator>
    <br />
    <br />
    <br />
    
    </form>
</body>
</html>
