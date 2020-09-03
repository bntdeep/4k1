<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PIS_lab_04._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 131px;
        }

        #Select1 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input class="btn-dark" id="Reset" runat="server" type="reset" value="reset" />
            <input id="Button" runat="server" type="button" onserverclick="Button_ServerClick" value="button" />
            <input id="Submit" runat="server" type="submit" onserverclick="Submit_ServerClick" value="submit" />
            <br />
            <input id="File" runat="server" type="file" />
            <br />
            <input id="Text" runat="server" type="text" placeholder="text" onserverchange="Text_ServerChange" />
            <input id="Password" runat="server" type="password" placeholder="password" onserverchange="Text_ServerChange" />
            <br />
            <input id="Checkbox" runat="server" type="checkbox" onserverchange="Checkbox_ServerChange" />
            <input id="Radio1" runat="server" type="radio" name="1" onserverchange="Radio1_ServerChange" />
            <input id="Radio2" runat="server" type="radio" name="1" onserverchange="Radio2_ServerChange" />
            <br />
            <textarea id="TextArea" runat="server" cols="20" onserverchange="Text_ServerChange"></textarea>
            <br />
            <select id="Select" runat="server" name="D1" onserverchange="Select_ServerChange">
                <option></option>
            </select>
        </div>
    </form>
</body>
</html>
