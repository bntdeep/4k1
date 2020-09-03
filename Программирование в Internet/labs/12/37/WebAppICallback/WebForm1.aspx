<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppICallback.WebForm1" %>

<%@ Register Src="~/WebUserControl1.ascx" TagName="userForm" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ICallback</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card bg-light" style="width: 20rem; padding:7px">
                <uc1:userForm ID="uf1" runat="server" Sname="Иванов" Name="Иван" Lname="Иванович"
                    Bday="10.12.1996" Gender="м" Faculty="ФИТ" Group="1" Year="2014"
                    Lbutton="Подтвердить" Rbutton="Отменить" />
            </div>
        </div>
    </form>
</body>
</html>
