<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebAppICallback.WebUserControl1" %>

<script type="text/javascript">
    function ClientCallback(result, context) {
        document.getElementById("uf1_lb_error").innerText = result;
    }  
</script>
<div class="form-signin">
    <asp:Label CssClass="form-control-label" ID="lb_surname" runat="server" Text="Фамилия" Width="100" />
    <asp:TextBox CssClass="form-control" ID="tb_surname" runat="server" Width="175" ValidationGroup="vg1" />
    <asp:RequiredFieldValidator ID="reqValid1" runat="server" ControlToValidate="tb_surname"
        ErrorMessage="Необходимо указать фамилию; " ValidationGroup="vg1" />
    <br />
    <asp:Label CssClass="form-control-label" ID="lb_name" runat="server" Text="Имя" Width="100" />
    <asp:TextBox CssClass="form-control" ID="tb_name" runat="server" Width="175" ValidationGroup="vg2" />
    <asp:RequiredFieldValidator ID="reqValid2" runat="server" ControlToValidate="tb_name"
        ErrorMessage="Необходимо указать имя; " ValidationGroup="vg2" />
    <br />
    <asp:Label CssClass="form-control-label" ID="lb_lastname" runat="server" Text="Отчество" Width="100" />
    <asp:TextBox CssClass="form-control" ID="tb_lastname" runat="server" Width="175" ValidationGroup="vg3" />
    <asp:RequiredFieldValidator ID="reqValid3" runat="server" ControlToValidate="tb_lastname"
        ErrorMessage="Необходимо указать отчество; " ValidationGroup="vg3" />
    <br />
    <asp:Label ID="lb_bday" runat="server" Text="Дата рождения" Width="100" />
    <asp:TextBox ID="tb_bday" runat="server" Width="175" ValidationGroup="vg4" />
    <asp:RequiredFieldValidator ID="reqValid4" runat="server" ControlToValidate="tb_bday"
        ErrorMessage="Требуется выбрать дату рождения; " ValidationGroup="vg4" />
    <asp:RangeValidator ID="rngValid1" runat="server" Type="Date" ControlToValidate="tb_bday"
        MinimumValue="01.01.1900" MaximumValue="01.01.2015"
        ErrorMessage="Дата должна быть действительной; " ValidationGroup="vg4" />
    <br />
    <asp:Label ID="lb_gender" runat="server" Text="Пол" Width="100" />
    <asp:RadioButton ID="rb_gender_m" runat="server" Text="м" GroupName="g1" />
    <asp:RadioButton ID="rb_gender_f" runat="server" Text="ж" GroupName="g1" />
    <br />
    <asp:Label ID="lb_faculty" runat="server" Text="Факультет" Width="100" />
    <asp:TextBox ID="tb_faculty" runat="server" Width="175" ValidationGroup="vg5" />
    <asp:RequiredFieldValidator ID="reqValid5" runat="server" ControlToValidate="tb_faculty"
        ErrorMessage="Требуется выбрать факультет; " ValidationGroup="vg5" />
    <br />
    <asp:Label ID="lb_group" runat="server" Text="Группа" Width="100" />
    <asp:TextBox ID="tb_group" runat="server" Width="175" ValidationGroup="vg6" />
    <asp:RequiredFieldValidator ID="reqValid6" runat="server" ControlToValidate="tb_group"
        ErrorMessage="Требуется указать номер группы; " ValidationGroup="vg6" />
    <asp:RangeValidator ID="rngValid2" runat="server" Type="Integer" ControlToValidate="tb_group"
        MinimumValue="1" MaximumValue="100" ErrorMessage="Номер группы в диапазоне от 1 до 100; "
        ValidationGroup="vg6" />
    <br />
    <asp:Label ID="lb_year" runat="server" Text="Год поступления" Width="100" />
    <asp:TextBox ID="tb_year" runat="server" Width="175" ValidationGroup="vg7" />
    <asp:RequiredFieldValidator ID="reqValid7" runat="server" ControlToValidate="tb_year"
        ErrorMessage="Требуется указать год поступления; " ValidationGroup="vg7" />
    <asp:RangeValidator ID="rngValid3" runat="server" Type="Integer" ControlToValidate="tb_year"
        MinimumValue="1960" MaximumValue="2017" ErrorMessage="Укажите достоверный год; "
        ValidationGroup="vg7" />
    <br />
    <asp:Button CssClass="btn btn-success" OnClientClick="return false;" ID="btn_left" runat="server" Width="140" />
    <asp:Button CssClass="btn btn-danger" OnClientClick="return false;" ID="btn_right" runat="server" Width="140" />
    <br />
</div>
<asp:Label ID="lb_error" runat="server" Text="" />