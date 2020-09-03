           <%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Validation5.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <div>
            <asp:Label runat="server" Text="1. Проверка на заполненность текстового поля и выпадающего списка"></asp:Label> <br />
            <asp:Label runat="server" Text="TextBox1" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="group1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                ControlToValidate="TextBox1" ValidationGroup="group1" ForeColor="Red">Не введено значение TextBox1</asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" Text="DropDownList1" ForeColor="Blue"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="group1">
                <asp:ListItem>First</asp:ListItem>
                <asp:ListItem>Second</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                ControlToValidate="DropDownList1" ValidationGroup="group1" ForeColor="Red">Не введено значение DropDownList1</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="group1" />
            <br />
        </div>
        
        <br />

        <div>
            <asp:Label runat="server" Text="2. Диапазон числа и даты"></asp:Label> <br />
            <asp:Label runat="server" Text="TextBox2" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="group2" placeholder="100-200"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ValidationGroup="group2" 
                MaximumValue="200" MinimumValue="100" ControlToValidate="TextBox2" ForeColor="Red" Type="Integer">Ошибка диапазона TextBox2</asp:RangeValidator>
            <br />
            <asp:Label runat="server" Text="TextBox3" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="group2" placeholder="01.01.2011-31.12.2011"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" ValidationGroup="group2" 
                MinimumValue="01.01.2011" MaximumValue="12.31.2011" ControlToValidate="TextBox3" ForeColor="Red" Type="Date">Ошибка диапазона TextBox3</asp:RangeValidator>
            <br />
        </div>

        <br />

        <div>
            <asp:Label runat="server" Text="3. Сравнение двух дат"></asp:Label> <br />
            <asp:Label runat="server" Text="TextBox4" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="group3" placeholder="01.01.0001"></asp:TextBox>
            <br />
            <asp:Label runat="server" Text="TextBox5" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="group3" placeholder="01.01.0001"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="group3"/>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Operator="LessThan"
                ControlToValidate="TextBox4" ControlToCompare="TextBox5" ValidationGroup="group3" Type="Date" ForeColor="Red">Ошибка сравнения TextBox4 с TextBox5</asp:CompareValidator>
        </div>

        <br />

        <div>
            <asp:Label runat="server" Text="4. Проверка правильности ввода адреса e-mail"></asp:Label> <br />
            <asp:Label runat="server" Text="TextBox6" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="group4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                ControlToValidate="TextBox6" ValidationGroup="group4" ForeColor="Red"
                ValidationExpression="([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}">Ошибка выражения TextBox6</asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Button" ValidationGroup="group4" />
            <br />
        </div>

        <br />

        <div>
            <asp:Label runat="server" Text="5. Определение простого числа"></asp:Label> <br />
            <asp:Label runat="server" Text="TextBox7" ForeColor="Blue"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="group5"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Ошибка" ValidationGroup="group5"
                ControlToValidate="TextBox7" ClientValidationFunction="MyClientHandler" OnServerValidate="MyServerHandler" ForeColor="Red"></asp:CustomValidator>
            <br />
            <asp:Button ID="Button4" runat="server" Text="Button" ValidationGroup="group5" Height="30px" />
            <br />
            <script type="text/javascript">
                function MyClientHandler(c, a) {
                    a.IsValid = true;
                    for (i = 2; i < Math.sqrt(a.Value); i++)
                    {
                        if (a.Value % i == 0) {
                            a.IsValid = false;
                        }
                    }
                    console.log(a.IsValid);
                }
            </script>
        </div>

        <br />            
    </asp:Content>
