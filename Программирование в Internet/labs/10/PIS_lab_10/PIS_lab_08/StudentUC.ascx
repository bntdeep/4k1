<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentUC.ascx.cs" Inherits="PIS_lab_08.StudentUC" %>
<div class="form-signin">
    <label class="form-control-label">Фамилия</label>
    <asp:TextBox ID="sname" runat="server" placeholder="Фамилия" CssClass="form-control"></asp:TextBox>
    <label class="form-control-label">Имя</label>
    <asp:TextBox ID="name" runat="server" placeholder="Имя" CssClass="form-control"></asp:TextBox>
    <label class="form-control-label">Отчество</label>
    <asp:TextBox ID="fname" runat="server" placeholder="Отчество" CssClass="form-control"></asp:TextBox>
    <label class="form-control-label">Дата рождения</label>
    <asp:TextBox ID="bday" runat="server" placeholder="День рождения" CssClass="form-control"></asp:TextBox>
    <br />

    <asp:Label runat="server" CssClass="form-control-label">Пол:</asp:Label>
    <br />
    <asp:RadioButtonList ID="sex" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem ID="M" Value="1" runat="server" Text="муж" />
        <asp:ListItem ID="W" Value="0" runat="server" Text="жен" />
    </asp:RadioButtonList>
    <br />


    <asp:Label runat="server" CssClass="form-control-label">Факультет:</asp:Label>
    <asp:DropDownList ID="faculty" runat="server" CssClass="custom-select">
        <asp:ListItem Value="ФИТ"></asp:ListItem>
        <asp:ListItem Value="ИДиП"></asp:ListItem>
        <asp:ListItem Value="ИЭФ"></asp:ListItem>
    </asp:DropDownList>
   
    <br />
       <label class="form-control-label">Группа</label>
    <asp:TextBox ID="group" runat="server" placeholder="Группа [0,100]" CssClass="form-control"></asp:TextBox>
      <label class="form-control-label">Год поступления</label>
      
    <asp:TextBox ID="year" runat="server" placeholder="Год поступления" CssClass="form-control"></asp:TextBox>
    <asp:Button ID="input" UseSubmitBehavior="false" runat="server" CssClass="btn-success"/>
    <asp:Button ID="cancel" UseSubmitBehavior="false" CausesValidation="false" runat="server" Text="Отказаться" CssClass="btn-danger"/>

    
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSName" runat="server" ErrorMessage="Введите фамилию"
        ControlToValidate="sname" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" runat="server" ErrorMessage="Введите номер группы"
        ControlToValidate="group" Display="None"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidatorGroup" runat="server" ErrorMessage="Номер группы 1-100"
        ControlToValidate="group" MaximumValue="100" MinimumValue="1" Type="Integer" Display="None">
</asp:RangeValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Tomato"/>
</div>
