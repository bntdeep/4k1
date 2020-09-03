<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab_04.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Элемент HTML Input Reset
            <input id="Reset" type="reset" value="reset" runat="server" onserverclick="Reset_OnServerClick" /> <br />
            Элемент HTML Input Button
            <input id="Button" type="button" value="button" runat="server" onserverclick="Button_OnServerClick" /> <br />
            Элемент HTML Input Submit
            <input id="Submit" type="submit" value="submit" runat="server" onserverclick="Submit_OnServerClick" /> <br />
            Элемент HTML Input File
            <input id="File" type="file" runat="server" /> <br />
            Элемент HTML Input Text
            <input id="Text" type="text" runat="server" onserverchange="Common_OnServerChange"  /> <br />
            Элемент HTML Input Password
            <input id="Password" type="password" runat="server" onserverchange="Common_OnServerChange" /> <br />
            Элемент HTML Input CheckBox
            <input id="Checkbox" type="checkbox" value="checkBox" runat="server" onserverchange="Common_OnServerChange"  /> <br />
            Элемент HTML Input RadioButton
            <input id="Radio" type="radio" value="radio" runat="server" onserverchange="Common_OnServerChange" />
            <br />
            Элемент HTML TextArea
            <textarea id="TextArea" cols="20" rows="2" runat="server" onserverchange="Common_OnServerChange" ></textarea> <br />
            Элемент HTML Select
            <select id="Select" runat="server" onserverchange="Common_OnServerChange" >
                <option>Option 1</option>
                <option>Option 2</option>
                <option>Option 3</option>
                <option>Option 4</option>
                <option>Option 5</option>
            </select> <br />
            <p></p>
        </div>
    </form>
</body>
</html>
