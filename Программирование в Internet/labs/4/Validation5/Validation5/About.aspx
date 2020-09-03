<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Validation5.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
  
      <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx"></asp:HyperLink>
         
     <div class="my-card">
         <h3>Validation Form</h3>
         <br />
            
            <br />
            <table class="table table-hover">
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Фамилия" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="LastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Имя" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="FirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Отчество" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="MiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Дата рождения" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Birthday" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="E-mail" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Сумма" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Summa" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Пароль" ForeColor="Green"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button5" runat="server" Text="Send to server" CssClass="btn-success" Width="300px"/>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Фамилия должна быть введена"
                Display="None" ControlToValidate="LastName"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Имя должно быть введено"
                Display="None" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Отчество должно быть введено"
                Display="None" ControlToValidate="MiddleName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Фамилия должна быть написана русскими буквами"
                Display="None" ControlToValidate="LastName" ValidationExpression="^[А-Яа-я]+$"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Имя должно быть написано русскими буквами"
                Display="None" ControlToValidate="FirstName" ValidationExpression="^[А-Яа-я]+$"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Отчство должно быть написано русскими буквами"
                Display="None" ControlToValidate="MiddleName" ValidationExpression="^[А-Яа-я]+$"></asp:RegularExpressionValidator>
            
         <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Дата рождения не может превышать текущую"
                Display="None" ControlToValidate="Birthday" Type="Date" MinimumValue="1.1.1900" MaximumValue="10.10.2017"></asp:RangeValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="E-mail указан неверно"
                Display="None" ControlToValidate="Email" ValidationExpression="([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Значение суммы должно находиться в пределах [1000, 2000]"
                Display="None" ControlToValidate="Summa" MinimumValue="1000" MaximumValue="2000"></asp:RangeValidator>

            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Пароль должен быть не меньше 7 неповторяющихся символов"
                Display="None" ControlToValidate="Password" ClientValidationFunction="PasswordHandler" OnServerValidate="PasswordHandler"></asp:CustomValidator>

            <script type="text/javascript">
                function PasswordHandler(sender, args) {
                    str = args.Value;
                    check = true;
                    if (str.length >= 7) {
                        for (i = 0; i < str.length - 1; i++)
                        {
                            for (j = i + 1; j < str.length; j++)
                            {
                                if (str.chatAt(i).toString() == str.charAt(i).toString()) {
                                    check = false;
                                    break;
                                }
                            }
                        }
                        if (check)
                            args.IsValid = true;
                        else
                            args.IsValid = false;
                    }
                    else {
                        args.IsValid = false;
                    }
                }
            </script>
        </div>
</asp:Content>
