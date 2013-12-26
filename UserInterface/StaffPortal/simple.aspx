<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simple.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.simple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <select id="ddlTest" onchange="ToggleCheckbox();return false;">
            <option value="1">Value 1</option>
            <option value="2">Value 2</option>
            <option value="3">Value 3</option>
        </select>
        <input type="radio" name="test" id="tst1" value="1" />
        <input type="radio" name="test" id="tst2" value="2" checked="checked"/>
        <input type="radio" name="test" id="tst3" value="3" />
    </div>
    <asp:Button ID="Button1" Text="Click Me!!" runat="server" OnClientClick="ToggleCheckbox();return false;" />
    </form>
    <script type="text/javascript">
        function ToggleCheckbox() {
            var id = parseInt(document.getElementById("ddlTest").value);
            alert(id);

            switch (id) {
                case 1:
                    document.getElementById("tst1").checked = true;
                    break;
                case 2:
                    document.getElementById("tst2").checked = true;
                    break;
                case 3:
                    document.getElementById("tst3").checked = true;

            }
        }</script>
</body>
</html>
