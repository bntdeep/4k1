<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="PIS_lab_08.Student" %>

<%@ Register TagPrefix="saa" TagName="studentCard" Src="~/StudentUC.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="card card-inverse card-primary mb-3 text-center" style="width:20rem; padding:15px; margin:15px;">
                    <saa:studentCard runat="server" SurName="Сущеня" Name="Артём" FatherName="Алекандрович" Date="10/24/1996" Year="2014" Group="10" Input="Ввод"></saa:studentCard>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
