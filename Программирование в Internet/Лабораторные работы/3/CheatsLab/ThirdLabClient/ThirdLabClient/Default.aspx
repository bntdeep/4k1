<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ThirdLab.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script type = "text/javascript">

            function AsyncReq() {
                $.ajax({
                    type: "GET",
                    url: "http://bnt:8087/anything.saa",
                    data: "ParamA=" + $("#<%=TextBox1.ClientID%>").val() + "&ParamB=" + $("#<%=TextBox2.ClientID%>").val(),
            success: OnSuccess,
            failure: function (response) {
                alert("error");
            }
                });
            }
        function OnSuccess(response) {
            alert(response)
        }

        
    </script>


</head>
    <body>

        <form id="form1" runat="server">
                        <asp:Button BackColor="Violet" ID="GetButton" runat="server" Text="Get" OnClick="GetButton_Click" />
&nbsp;&nbsp;&nbsp;
            <br />  <br />
            <asp:Button ID="PostButton" BackColor="Azure" runat="server" Text="Post" OnClick="PostButton_Click" />
&nbsp;&nbsp;&nbsp;
            <br />  <br />
            <asp:Button BackColor="Red" ID="OptionsButton" runat="server" Text="Options" OnClick="OptionsButton_Click" />
    &nbsp;&nbsp;&nbsp;
            <br />  <br />
                        <asp:Button BackColor="Tomato" ID="PutButton" runat="server" OnClick="PutButton_Click" Text="Put" />
                        &nbsp;&nbsp;&nbsp;
            <br />  <br />
                        <input type="button" style="background-color:chartreuse" id="JSButton" value="AsyncJsReq" onclick="AsyncReq()" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="FirstParam"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="SecondParam"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </form>

</body>
</html>
