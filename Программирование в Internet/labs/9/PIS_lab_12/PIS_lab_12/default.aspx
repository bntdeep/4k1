<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PIS_lab_12._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/ht<ml; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lb" />
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <script>
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_initializeRequest(InitializeRequest);

                function InitializeRequest(sender, args) {
                    if (prm.get_isInAsyncPostBack()) {
                        args.set_cancel(true);
                        console.log("inited");
                    }
                }

                function AbortPostBack() {
                    if (prm.get_isInAsyncPostBack()) {
                        document.getElementById('<%= tbtest.ClientID %>').value = "Canceled";
                        prm.abortPostBack();
                    }
                }
            </script>

            <style>
                .my-card {
                    margin: 20px;
                    padding: 15px;
                }

                .my-input-text {
                    margin: 10px;
                    padding: 5px;
                }

                .loader {
                    -webkit-animation: spin 4s linear infinite;
                    animation: spin 4s linear infinite;
                }

                @-webkit-keyframes spin {
                    0% {
                        -webkit-transform: rotate(0deg);
                    }

                    100% {
                        -webkit-transform: rotate(1800deg);
                    }
                }

                @keyframes spin {
                    0% {
                        transform: rotate(0deg);
                    }

                    100% {
                        transform: rotate(360deg);
                    }
                }
            </style>
            <div class="row">
                <asp:UpdatePanel ID="up1" runat="server">
                    <ContentTemplate>
                        <div class="card my-card" style="width: 10rem; top: 0px; left: 0px;">
                            First Operand<asp:TextBox ID="tb1" runat="server" CssClass="my-input-text"></asp:TextBox>
                            Second Operand<asp:TextBox ID="tb2" runat="server" CssClass="my-input-text"></asp:TextBox>
                            Result<asp:TextBox ID="res" runat="server" CssClass="my-input-text"></asp:TextBox>
                            <asp:CheckBox ID="modul" runat="server" Text="modul" />
                        </div>
                        <div class="card my-card" style="width: 10rem;">
                            <asp:RadioButtonList ID="op" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0" Text="multi"></asp:ListItem>
                                <asp:ListItem Value="1" Text="plus" Selected="True"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Button ID="mth" runat="server" Text="Calculate" OnClick="mth_Click" CssClass="btn-primary" />
                        </div>
                        <asp:Timer ID="timer" runat="server" Interval="5000" OnTick="timer_Tick"></asp:Timer>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btr" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <div class="card my-card">
                    <asp:UpdatePanel ID="up2" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbtest" runat="server"></asp:TextBox>
                            <asp:Button ID="bttest" runat="server" Text="Button" OnClick="bttest_Click" CssClass="btn-success" />
                        </ContentTemplate>
                        <Triggers>
                        </Triggers>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="up2">
                        <ProgressTemplate>
                            
                            <div class="loader">
                                <input type="button" onclick="AbortPostBack()" value="Cancel" class="btn-danger btn-lg"/>
                            </div>                   
                            
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <asp:Button runat="server" ID="btr" OnClick="btr_Click" Text="Random(Trigger)" CssClass="btn-outline-dark"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
