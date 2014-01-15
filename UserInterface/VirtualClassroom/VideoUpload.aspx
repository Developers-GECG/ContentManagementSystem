<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/VirtualClassroom/VirtualClass.Master"
    AutoEventWireup="true" CodeBehind="VideoUpload.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.TestVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Upload Video
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="other" runat="server">
    <!-- content starts -->
    <div id="meta" class="row-fluid sortable" style="display: block" runat="server">
        <div class="box span12" style="width: 70%">
            <div class="box-header well">
                <h2>
                    <i class="icon-picture"></i>Add Video Information
                </h2>
            </div>
            <div id="home" style="display: block" class="box-content">
                <form id="Form1" class="form-horizontal" runat="server">
                <fieldset>
                    <div id="addVideo" style="display: block">
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">
                                Video Title</label>
                            <div class="controls">
                                <asp:TextBox ID="Text_title" class="input-xlarge focused" Enabled="true" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">
                                Descrption</label>
                            <div class="controls">
                                <asp:TextBox ID="Text_description" class="input-xlarge focused" Enabled="true" TextMode="MultiLine"
                                    runat="server" Rows="6" Columns="15" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">
                                Keywords</label>
                            <div class="controls">
                                <asp:TextBox ID="Text_keyword" class="input-xlarge focused" Enabled="true" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-actions">
                            <asp:Button ID="add_Class" class="btn btn-inverse" OnClick="add_Video" runat="server"
                                Text="Proceed"></asp:Button>
                            <button class="btn">
                                Cancel</button>
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>
        </div>
    </div>
    <!-- content starts -->
    <div id="videoUp" class="row-fluid sortable" style="display: none" runat="server">
        <div class="box span12" style="width: 70%">
            <div class="box-header well">
                <h2>
                    <i class="icon-picture"></i>Add Video
                </h2>
            </div>
            <div id="Div1" class="box-content">
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
                    <input type="submit" value="Upload" class="btn btn-inverse"  />
                    <button class="btn">
                        Cancel</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
