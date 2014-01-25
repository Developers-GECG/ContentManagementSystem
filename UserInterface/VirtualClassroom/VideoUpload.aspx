<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/VirtualClassroom/VirtualClass.Master"
    AutoEventWireup="true" CodeBehind="VideoUpload.aspx.cs" Inherits="CMS.UserInterface.VirtualClassroom.VideoUpload" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Virtual Class - Content Management System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="checkbox" runat="server">
        <!-- content starts -->
        <div class="row-fluid sortable"  style="display: block" id="meta" runat="server">
            <div class="box span12" style="width: 70%">
                <div class="box-header well">
                    <h2>
                        <i class="icon-picture"></i>Add Videos / Class
                    </h2>
                </div>
                <div id="home"  class="box-content">
                    <form id="Form1" class="form-horizontal" runat="server">
                    <fieldset>
                        <div id="ddlId" class="control-group" runat="server">
                            <label class="control-label">
                                Class</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlClass"  AutoPostBack="true" AppendDataBoundItems="true" data-rel="chosen"
                                    runat="server" OnSelectedIndexChanged="populateCheckBoxes" OnChange="displayDivByValueOfDDL(this,'Create New Class','addClass','addVideo');enableText();"
                                    Style="width: auto;">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div id="addClass" style="display: none">
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Class Title</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_classTitle" class="input-xlarge focused" onblur="compare_Text"  runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Class Descrption</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_classDescription" class="input-xlarge focused" TextMode="MultiLine"
                                        runat="server" Rows="6" Columns="15" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Courtesy</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_courtesy" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Associated to Semester</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_AssocSemester" runat="server" AppendDataBoundItems="true"
                                        data-rel="chosen">
                                        <asp:ListItem Value="">Select Semester</asp:ListItem>
                                        <asp:ListItem Value="1">Sem-1</asp:ListItem>
                                        <asp:ListItem Value="2">Sem-2</asp:ListItem>
                                        <asp:ListItem Value="3">Sem-3</asp:ListItem>
                                        <asp:ListItem Value="4">Sem-4</asp:ListItem>
                                        <asp:ListItem Value="5">Sem-5</asp:ListItem>
                                        <asp:ListItem Value="6">Sem-6</asp:ListItem>
                                        <asp:ListItem Value="7">Sem-7</asp:ListItem>
                                        <asp:ListItem Value="8">Sem-8</asp:ListItem>
                                        <asp:ListItem Value="9">General</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Associated to Dept</label>
                                <%-- <div id="Check_dept">
                                    </div>--%>
                                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlClass" />
                                    </Triggers>
                                    <ContentTemplate>
                                        <div class="controls">
                                            <asp:CheckBoxList RepeatLayout="Table" RepeatColumns="1" RepeatDirection="Vertical"
                                                ID="CheckBox_dept" runat="server">
                                            </asp:CheckBoxList>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    YouTube Key</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_CKey" class="input-xlarge focused" runat="server"></asp:TextBox>
                                    (e.g "http://www.youtube.com/watch?v=<span style="color: Blue">StphRCLkx6Q</span>"
                                    Enter the string in blue from your video URL)
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="add_Class" class="btn btn-inverse" runat="server" Text="Add Class"
                                    OnClick="addClass" />
                                <button class="btn">
                                    Cancel</button>
                            </div>
                        </div>
                        <div id="addVideo" style="display: block">
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Video Title</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_title" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        Descrption</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_description" class="input-xlarge focused" Enabled="false" TextMode="MultiLine"
                                            runat="server" Rows="6" Columns="15" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Keywords</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_keyword" class="input-xlarge focused" Enabled="false" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <asp:Button ID="Button1" class="btn btn-inverse" OnClick="add_Video" runat="server"
                                        Text="Proceed"></asp:Button>
                                    <button class="btn">
                                        Cancel</button>
                                </div>
                            </div>
                    </fieldset>
                    <script type="text/javascript">
                        function enableText() {
                            if ($("#<%=ddlClass.ClientID%>").val() == "0") {
                                $("#<%=Text_description.ClientID%>").attr("value", "");
                                $("#<%=Text_title.ClientID%>").attr("value", "");
                                $("#<%=Text_keyword.ClientID%>").attr("value", "");
                                $("#<%=Text_description.ClientID%>").attr("disabled", "disabled");
                                $("#<%=Text_title.ClientID%>").attr("disabled", "disabled");
                                $("#<%=Text_keyword.ClientID%>").attr("disabled", "disabled");
                            }
                            else if ($("#<%=ddlClass.ClientID%>").val() == "1") {
                                //PopulateCheckBoxList();
                                $("#<%=Text_classTitle.ClientID%>").attr("value", "");
                                $("#<%=Text_classDescription.ClientID%>").attr("value", "");
                                $("#<%=Text_courtesy.ClientID%>").attr("value", "");
                                $("#<%=Text_CKey.ClientID%>").attr("value", "");
                                $("#<%=Text_description.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_title.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_keyword.ClientID%>").removeAttr("disabled");
                            }
                            else {
                                $("#<%=Text_description.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_title.ClientID%>").removeAttr("disabled");
                                $("#<%=Text_keyword.ClientID%>").removeAttr("disabled");
                            }
                        }
                    </script>
                    </form>
                </div>
            </div>
            <!--/span-->
        </div>
    <!-- content starts -->
    <div id="videoUp" class="row-fluid sortable" style="display: none" runat="server">
        <div class="box span12" style="width: 70%">
            <div class="box-header well">
                <h2>
                    <i class="icon-picture"></i>Add Videos / Class
                </h2>
            </div>
            <div class="box-content" id="div1">
                <form action="<%=urlName%>?nexturl=http://localhost:55231/UserInterface/VirtualClassroom/Success.aspx"
                class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="control-group">
                    <label class="control-label">
                        Video Input</label>
                    <div class="controls">
                        <div id="uniform-fileInput" class="uploader">
                            <input id="fileInput" class="input-file uniform_on" name="file" type="file" size="19"
                                style="opacity: 0;" />
                            <span class="filename" style="-moz-user-select: none;">No file selected</span> <span
                                class="action" style="-moz-user-select: none;">Choose File</span> -
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <input type="hidden" name="token" value="<%=tokenValue%>" /></div>
                </div>
                <div class="form-actions">
                    <input type="submit" value="Upload" class="btn btn-inverse" />
                    <button class="btn">
                        Cancel</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
