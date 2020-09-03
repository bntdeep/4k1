<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab_06.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="card border-primary mb-3" style="width: 15rem; margin:20px; padding:10px;">
                    <asp:Label runat="server" Text="1. Проверка на заполненность текстового поля и выпадающего списка"></asp:Label>
                    <asp:Label runat="server" Text="TextBox1" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="group1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="TextBox1" ValidationGroup="group1" ForeColor="Red">Не введено значение TextBox1</asp:RequiredFieldValidator>
                    

                    <asp:Label runat="server" Text="DropDownList1" ForeColor="Blue"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="group1">
                        <asp:ListItem>First</asp:ListItem>
                        <asp:ListItem>Second</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="DropDownList1" ValidationGroup="group1" ForeColor="Red">Не введено значение DropDownList1</asp:RequiredFieldValidator>
                    
                    <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="group1" CssClass="btn btn-primary" />
                   
                </div>


                <div class="card border-primary mb-3" style="width: 15rem; margin:20px; padding:10px;">
                    <asp:Label runat="server" Text="2. Диапазон числа и даты"></asp:Label>
                
                    <asp:Label runat="server" Text="TextBox2" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="group2" placeholder="100-200"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ValidationGroup="group2"
                        MaximumValue="200" MinimumValue="100" ControlToValidate="TextBox2" ForeColor="Red" Type="Integer">Ошибка диапазона TextBox2</asp:RangeValidator>
                  
                    <asp:Label runat="server" Text="TextBox3" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="group2" placeholder="01.01.2011-31.12.2011"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" ValidationGroup="group2"
                        MinimumValue="01.01.2011" MaximumValue="12.31.2011" ControlToValidate="TextBox3" ForeColor="Red" Type="Date">Ошибка диапазона TextBox3</asp:RangeValidator>
                  
                </div>

             

                <div class="card border-primary mb-3" style="width: 15rem; margin:20px; padding:10px;">
                    <asp:Label runat="server" Text="3. Сравнение двух дат"></asp:Label>
                   
                    <asp:Label runat="server" Text="TextBox4" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="group3" placeholder="01.01.0001"></asp:TextBox>
                  
                    <asp:Label runat="server" Text="TextBox5" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="group3" placeholder="01.01.0001"></asp:TextBox>
                 <br>
                    <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="group3" CssClass="btn-primary"/>
                  
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Operator="LessThan"
                        ControlToValidate="TextBox4" ControlToCompare="TextBox5" ValidationGroup="group3" Type="Date" ForeColor="Red">Ошибка сравнения TextBox4 с TextBox5</asp:CompareValidator>
                </div>

               

                <div class="card border-primary mb-3" style="width: 15rem; margin:20px; padding:10px;">
                    <asp:Label runat="server" Text="4. Проверка правильности ввода адреса e-mail"></asp:Label>
                    <br />
                    <asp:Label runat="server" Text="TextBox6" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="group4"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                        ControlToValidate="TextBox6" ValidationGroup="group4" ForeColor="Red"
                        ValidationExpression="([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}">Ошибка выражения TextBox6</asp:RegularExpressionValidator>
                 
                    <asp:Button ID="Button3" runat="server" Text="Button" ValidationGroup="group4" CssClass="btn-primary"/>
                   
                </div>

                <br />

                <div class="card border-primary mb-3" style="width: 15rem; margin:20px; padding:10px;">
                    <asp:Label runat="server" Text="5. Определение простого числа"></asp:Label>
                    <br />
                    <asp:Label runat="server" Text="TextBox7" ForeColor="Blue"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="group5"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Ошибка" ValidationGroup="group5"
                        ControlToValidate="TextBox7" ClientValidationFunction="MyHandler" OnServerValidate="MyHandler" ForeColor="Red"></asp:CustomValidator>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Button" ValidationGroup="group5" Height="30px" CssClass="btn-primary"/>
                    <br />
                    <script type="text/javascript">
                        function MyHandler(c, a) {
                            a.IsValid = true;
                            for (i = 2; i < Math.sqrt(a.Value); i++) {
                                if (a.Value % i == 0) {
                                    a.IsValid = false;
                                }
                            }
                            console.log(a.IsValid);
                        }
                    </script>
                </div>

                <br />

                <div class="card border-primary mb-3" style="width: 25rem; margin:20px; padding:10px;">
                   <h4>ValidationSummary</h4>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Фамилия" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Имя" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Отчество" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="MiddleName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Дата рождения" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Birthday" runat="server" placeholder="01.01.0001"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="E-mail" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Сумма" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Summa" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Пароль" ForeColor="Blue"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button5" runat="server" Text="Button" CssClass="btn-primary"/>
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
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Дата рождения не может превышать текущую"
                        Display="None" ControlToValidate="Birthday" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
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
                                for (i = 0; i < str.length - 1; i++) {
                                    for (j = i + 1; j < str.length; j++) {
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
            </div>
        </div>
    </form>
</body>
</html>
