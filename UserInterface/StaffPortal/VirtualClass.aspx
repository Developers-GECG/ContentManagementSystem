<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="VirtualClass.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.VirtualClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Virtual Class
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <div id="main_content" style="width: 80%; float: left; margin-left: 30px">
        <form id="Form2" class="form-horizontal" runat="server">
            <div id="main_heading" style="background-color: antiquewhite">
                <p>
                    <h4 align="center">Paragraph, Description about Virtual Class</h4>
                </p>
            </div>
            <div id="selection">
                <div id="player_content" style="float: right; height: 477px; max-height: 477px; background-color: antiquewhite; margin-right: 452px; width: 400px; z-index: 0;">
                    <%=defaultDescription %><br />
                </div>
                <div id="selection_controls" style="width: 42.55%; margin-top: 15px; background-color: antiquewhite;">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label">
                                Select Semester</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlSem" AutoPostBack="true" class="input-large span10" runat="server" onchange="loadClasses();" Style="width: auto;">
                                    <asp:ListItem Value="">Select Semester</asp:ListItem>
                                    <asp:ListItem Value="1">Sem-1</asp:ListItem>
                                    <asp:ListItem Value="2">Sem-2</asp:ListItem>
                                    <asp:ListItem Value="3">Sem-3</asp:ListItem>
                                    <asp:ListItem Value="4">Sem-4</asp:ListItem>
                                    <asp:ListItem Value="5">Sem-5</asp:ListItem>
                                    <asp:ListItem Value="6">Sem-6</asp:ListItem>
                                    <asp:ListItem Value="7">Sem-7</asp:ListItem>
                                    <asp:ListItem Value="8">Sem-8</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">
                                Select Class</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlClass" AutoPostBack="true" AppendDataBoundItems="true" class="input-large span10" runat="server" onchange="loadAllDefaults();" OnSelectedIndexChanged="loadVideoList" Style="width: auto;">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
            <div id="main">
                <div id="player" style="width: 640px;">
                    <iframe id="play" class="youtube-player" width="640" height="385" src="<%=defaultKey %>"
                        frameborder="0"></iframe>
                </div>
                <br />
                <br />

                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlClass" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Repeater ID="rep1" runat="server">
                            <HeaderTemplate>
                                <div id="videolist" style="margin-bottom: 20px; position: relative; background-color: antiquewhite; overflow: auto; max-height: 300px; margin-left: 0px; margin-top: -20px; padding: 0px; width: 69.7%;">
                                    <%--<ul style="list-style-type: none">--%>
                                    <table>
                                        <tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <td style="height: 90px; margin: 0 8px 0 0; margin-bottom: 15px;">
                                    <a href='javascript:refreshIframe("<%# Eval("key") %>","<%# Eval("description") %>")' id='<%# Eval("id") %>' style="width: 200px;" onclick="refreshIframe();">
                                        <span style="float: left;">
                                            <img width="120" alt="" src="<%# Eval("thumbnail_path") %>" />
                                        </span>
                                        <span style="height: 90px; margin-left: 2px;"><%# Eval("title") %></span></a>
                                </td>
                            </ItemTemplate>

                            <%--<AlternatingItemTemplate>
         
                        </AlternatingItemTemplate>--%>

                            <FooterTemplate>
                                </tr>
                                    </table>
                                <%--</ul>--%>
                    </div>
                            </FooterTemplate>
                        </asp:Repeater>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function refreshIframe(link, desc) {
            var str = "http://www.youtube.com/embed/" + link;
            var description = desc;
            document.getElementById('play').src = str;
            document.getElementById("player_content").innerHTML = description;
            //document.getElementById('iframeID').contentWindow.location.reload();
        }
        function loadAllDefaults() {
            var pageUrl = '<%=ResolveUrl("~/UserInterface/StaffPortal/VirtualClass.aspx")%>'
            var className = '{className:"' + $('#<%=ddlClass.ClientID%> option:selected').html() + '"}';
            $.ajax({
                type: "POST",
                url: pageUrl + '/loadPageDefaults',
                data: className,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    loadDefaults(response.d);
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function loadDefaults(list) {
            if (list.length > 0) {
                $.each(list, function () {
                    refreshIframe(this['Text'], this['Value']);
                });
            }
            else {
                alert("Something Went Wrong!!");
            }
        }
    </script>
</asp:Content>
