<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="130px" 
             ValidationGroup="g1"></asp:TextBox>
   
    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" 
             style="margin-left: 33px" Width="130px" ValidationGroup="g1">
    </asp:DropDownList>
    <br />  <br />
    <asp:Button ID="Button1" runat="server" Height="20px" style="margin-left: 0px" 
             Text="G1" Width="120px" onclick="Button1_Click" ValidationGroup="g1" />
         <br />
         <br />
         <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" Height="20px" 
             ValidationGroup="g2" Width="120px"></asp:TextBox>
         <asp:TextBox ID="TextBox3" runat="server" Height="20px" 
             style="margin-left: 64px" ValidationGroup="g2" Width="120px"></asp:TextBox>
         <br />
         <br />
         <asp:Button ID="Button2" runat="server" Height="20px" style="margin-left: 4px" 
             Text="G2" ValidationGroup="g2" Width="120px" />
         <br />
         <br />
         <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="120px" 
             ValidationGroup="g3"></asp:TextBox>
         <asp:TextBox ID="TextBox5" runat="server" Height="20px" 
             style="margin-left: 66px" Width="120px" ValidationGroup="g3"></asp:TextBox>
         <br />
         <br />
         <asp:Button ID="Button3" runat="server" Height="20px" Text="G3" Width="120px" 
             ValidationGroup="g3" />
    
    
    
         <br />
         <br />
         <asp:TextBox ID="TextBox6" runat="server" Height="20px" ValidationGroup="g4" 
             Width="140px"></asp:TextBox>
         <asp:Button ID="Button4" runat="server" Height="20px" style="margin-left: 45px" 
             Text="g4" ValidationGroup="g4" Width="120px" />
         <br />
         <br />
         <asp:TextBox ID="TextBox7" runat="server" Height="20px" ValidationGroup="g5" 
             Width="120px"></asp:TextBox>
         <asp:Button ID="Button5" runat="server" Height="20px" style="margin-left: 64px" 
             Text="G5" ValidationGroup="g5" Width="120px" />
         <br />
    
    
    
    </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="RequiredFieldValidator" 
         ControlToValidate="DropDownList1" ValidationGroup="g1">Не введено значение DropDownList1   </asp:RequiredFieldValidator>
    <br />  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
         ControlToValidate="TextBox1" Display="Dynamic" ValidationGroup="g1">Не введено значение TextBox1</asp:RequiredFieldValidator>
     <br />
     <asp:RangeValidator ID="RangeValidator1" runat="server" 
         ControlToValidate="TextBox2" ErrorMessage="Ошибка (диапазон)   в TextBox2" 
         MaximumValue="30" MinimumValue="20" SetFocusOnError="True" Type="Integer" 
         ValidationGroup="g2"></asp:RangeValidator>
     <br />
     <asp:RangeValidator ID="RangeValidator2" runat="server" 
         ControlToValidate="TextBox3" ErrorMessage="RangeValidator" 
         MaximumValue="31.12.2011" MinimumValue="01.01.2011" SetFocusOnError="True" 
         Type="Date" ValidationGroup="g2">Ошибка (диапазон) в  TextBox3</asp:RangeValidator>
     
        
     <br />
     
        
     <asp:CompareValidator ID="CompareValidator1" runat="server" 
         ErrorMessage="Ошибка сравнениея TextBox4 c TextBox5" 
         ControlToCompare="TextBox5" ControlToValidate="TextBox4" Operator="NotEqual" 
         Type="Double" ValidationGroup="g3"></asp:CompareValidator>
     <br />
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
         ControlToValidate="TextBox6" ErrorMessage="Ошибка (выражение) в TextBox6" 
         ValidationExpression="\S+@\S+\.\S+" ValidationGroup="g4"></asp:RegularExpressionValidator>
     <br />
     <asp:CustomValidator ID="CustomValidator1" runat="server" 
         ClientValidationFunction="MyHandler" ControlToValidate="TextBox7" ErrorMessage="Ошибка (пользоватальская обработка)" 
         onservervalidate="MyHandler" ValidationGroup="g5"></asp:CustomValidator>
         <script type="text/javascript">
             function MyHandler(c, a) { 
             
              a.IsValid = (a.value%2 ==0)    
             }
          </script>
         
         
    </form>
</body>
</html>
