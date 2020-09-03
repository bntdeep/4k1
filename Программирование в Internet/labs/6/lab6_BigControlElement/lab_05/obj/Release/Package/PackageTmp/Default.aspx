<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab_05.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="MultiView" /> <br />
            <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="View 1" />
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 5px" Width="222" />
                    <asp:Button ID="Button1" runat="server" Text="Button" style="margin-left: 50px" OnClick="Button1_Click"/>

                    <br />

                    <asp:Wizard ID="Wizard" runat="server" CancelButtonText="Cancel" DisplayCancelButton="true" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="0" OnActiveStepChanged="Wizard_ActiveStepChanged" OnCancelButtonClick="Wizard_CancelButtonClick" OnFinishButtonClick="Wizard_FinishButtonClick" >
                        <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                        <SideBarButtonStyle ForeColor="White" />
                        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                        <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                        <WizardSteps>
                            <asp:WizardStep ID="WizardStep1" runat="server" Title="Персональные данные">
                                <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/image/background.jpg">
                                    <table align="center" class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text="Фамилия" ForeColor="White"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text="Имя" ForeColor="White"></asp:Label>
                                            </td>
                                            <td><asp:TextBox ID="Firstname" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text="Отчество" ForeColor="White"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="MiddleName" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text="День рождения" ForeColor="White"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Calendar ID="Calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                    <NextPrevStyle VerticalAlign="Bottom" />
                                                    <OtherMonthDayStyle ForeColor="Gray" />
                                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                    <SelectorStyle BackColor="#CCCCCC" />
                                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                                </asp:Calendar>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <br />
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep2" runat="server" Title="Выбор">
                                <asp:RadioButtonList ID="RadioButtonList" runat="server">
                                    <asp:ListItem>Пляж у моря</asp:ListItem>
                                    <asp:ListItem>Морской круиз</asp:ListItem>
                                    <asp:ListItem>Охота в тайге</asp:ListItem>
                                    <asp:ListItem>Рыбалка в Норвегии</asp:ListItem>
                                    <asp:ListItem>Восхождение к подножию Эвереста</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep3" runat="server" Title="Дополнительные услуги">
                                <asp:CheckBoxList ID="CheckBoxList" runat="server">
                                    <asp:ListItem>Виза</asp:ListItem>
                                    <asp:ListItem>Страховка</asp:ListItem>
                                    <asp:ListItem>Трансфер</asp:ListItem>
                                    <asp:ListItem>Гид-переводчик</asp:ListItem>
                                </asp:CheckBoxList>
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep4" runat="server" Title="Оплата">
                                <asp:ListBox ID="ListBox" runat="server">
                                    <asp:ListItem>Наличные</asp:ListItem>
                                    <asp:ListItem>Visa</asp:ListItem>
                                    <asp:ListItem>Maestro</asp:ListItem>
                                    <asp:ListItem>American express</asp:ListItem>
                                    <asp:ListItem>Денежный перевод</asp:ListItem>
                                </asp:ListBox>
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep5" runat="server" Title="Подтверждение">
                                <asp:Label ID="LabelFinish" runat="server" Text="Finish"></asp:Label>
                                <asp:Button ID="ButtonFinish" runat="server" Text="Все верно" OnClick="ButtonFinish_Click" />
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="View 2" />
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 5px" Width="222" />
                    <asp:Button ID="Button2" runat="server" Text="Button" style="margin-left: 50px" OnClick="Button2_Click"/>

                    <asp:TreeView ID="TreeView" runat="server" OnSelectedNodeChanged="TreeView_SelectedNodeChanged">
                        <Nodes>
                            <asp:TreeNode Text="1" Value="1">
                                <asp:TreeNode Text="1.1" Value="1.1" ShowCheckBox="true"></asp:TreeNode>
                                <asp:TreeNode Text="1.2" Value="1.2" ShowCheckBox="true"></asp:TreeNode>
                                <asp:TreeNode Text="1.3" Value="1.3" ShowCheckBox="true"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="2" Value="2" Checked="true">
                                <asp:TreeNode Text="2.1" Value="2.1" ToolTip="2.1"></asp:TreeNode>
                                <asp:TreeNode Text="2.2" Value="2.2" ToolTip="2.2"></asp:TreeNode>
                                <asp:TreeNode Text="2.3" Value="2.3" ToolTip="2.3"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="3" Value="3" Checked="true">
                                <asp:TreeNode Text="3.1" Value="3.1" ImageUrl="~/image/1.png"></asp:TreeNode>
                                <asp:TreeNode Text="3.2" Value="3.2" ImageUrl="~/image/2.png"></asp:TreeNode>
                                <asp:TreeNode Text="3.3" Value="3.3" ImageUrl="~/image/3.png"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="View 3" />
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 5px" Width="222" />
                    <asp:Button ID="Button3" runat="server" Text="Button" style="margin-left: 50px" OnClick="Button3_Click"/>

                    <br />

                    <asp:Menu ID="Menu" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px" OnMenuItemClick="Menu_MenuItemClick">
                        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#E3EAEB" />
                        <DynamicSelectedStyle BackColor="#1C5E55" />
                        <Items>
                            <asp:MenuItem Text="Item 1" Value="Item 1" ToolTip="1...">
                                <asp:MenuItem Text="Item 1.1" Value="Item 1.1" ToolTip="1.1"></asp:MenuItem>
                                <asp:MenuItem Text="Item 1.2" Value="Item 1.2" ToolTip="1.1"></asp:MenuItem>
                                <asp:MenuItem Text="Item 1.3" Value="Item 1.3" ToolTip="1.1"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Item 2" Value="Item 2">
                                <asp:MenuItem Text="Item 2.1" Value="Item 2.1"></asp:MenuItem>
                                <asp:MenuItem Text="Item 2.2" Value="Item 2.2"></asp:MenuItem>
                                <asp:MenuItem Text="Item 2.3" Value="Item 2.3"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Item 3" Value="Item 3">
                                <asp:MenuItem Text="Item 3.1" Value="Item 3.1"></asp:MenuItem>
                                <asp:MenuItem Text="Item 3.2" Value="Item 3.2"></asp:MenuItem>
                                <asp:MenuItem Text="Item 3.3" Value="Item 3.3"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#1C5E55" />

                    </asp:Menu>
                </asp:View>
            </asp:MultiView>
            <br />
            <asp:Button ID="Button" runat="server" Text="Button" OnClick="Button_Click" />
        </div>

        <br />
        <br />
        <br />

        <div>
            <asp:Label runat="server" Text="AdRotator" /> <br />
            <asp:AdRotator ID="AdRotator" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" />
            <br />
            <asp:TextBox ID="TextBoxKeyFilter" runat="server" />
            <asp:Button ID="ButtonBanner" runat="server" Text="Button" OnClick="ButtonBanner_Click" />
        </div>

        <br />
        <br />
        <br />

        <div>

        </div>
    </form>
</body>
</html>
