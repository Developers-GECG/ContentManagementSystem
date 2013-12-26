<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master"
    AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.demo" %>

<asp:Content ID="title" ContentPlaceHolderID="pageTitle" runat="server">
    Class Name will appear here..</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="form" runat="server">
    <form id="Form2" class="form-horizontal" runat="server">
    <fieldset>
        <div class="control-group">
            <label class="control-label">
                Class</label>
            <div class="controls">
                <asp:DropDownList ID="ddlClass" AutoPostBack="false" class="input-large span10" runat="server"
                    OnClientSelectedIndexChanged="showDiv('hiddenDiv')" Style="width: auto;">
                </asp:DropDownList>
            </div>
        </div>
    </fieldset>
    <div id="main">
        <div id="player" style="width: 640px;">
            <%--<iframe width="300" height="250" src="http://www.youtube.com/embed/IZcOEaHq3gg"
        frameborder="0" scrolling="no" name="videoSwf"></iframe>--%>
            <iframe id="play" class="youtube-player" type="text/html" width="640" height="385"
                src="http://d26qa89x3cppxu.cloudfront.net/yt.html#id=mk48xRzuNvA&height=385px&width=640px"
                frameborder="0"></iframe>
        </div>
        <div id="player_content" style="float: left; width: 640px; z-index: 0;">
            This is player content<br />
        </div>
        <asp:Button runat="server" ID="button" Text="Click Here" OnClick="Button_Click" />
        <asp:Repeater ID="rep1" runat="server">
            <HeaderTemplate>
                <div id="videolist" style="width: 380px; margin-bottom: 20px; margin-left: 640px;
                    margin-top: -385px; padding: 0 30px 10px 10px; position: relative; overflow: auto;
                    max-height: 300px;">
                    <ul style="list-style-type: none">
            </HeaderTemplate>
            <ItemTemplate>
                <li style="height: 90px; margin: 0 8px 0 0; margin-bottom: 15px;"><a href='javascript:refreshIframe("<%# Eval("key") %>","<%# Eval("description") %>")'
                    id='<%# Eval("id") %>' style="width: 200px;" onclick="refreshIframe();"><span style="float: left;">
                        <img width="120" alt="" src="<%# Eval("thumbnail_path") %>" />
                    </span><span style="height: 90px; margin-left: 2px;">
                        <%# Eval("title") %></span></a> </li>
            </ItemTemplate>
            <%--<AlternatingItemTemplate>
         
          </AlternatingItemTemplate>--%>
            <FooterTemplate>
                </ul> </div>
            </FooterTemplate>
        </asp:Repeater>
    </form>
    </div>
    <script type="text/javascript">
        function refreshIframe(link, desc) {
            var str = "http://www.youtube.com/embed/" + link;
            var description = desc;
            //alert(desc);
            document.getElementById("play").src = str;
            document.getElementById("player_content").innerHTML = description;

            //document.getElementById('iframeID').contentWindow.location.reload();
        }
    </script>
</asp:Content>
