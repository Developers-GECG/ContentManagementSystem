<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/VirtualClassroom/VirtualClass.Master"
    AutoEventWireup="true" CodeBehind="AddFile.aspx.cs" Inherits="CMS.UserInterface.VirtualClassroom.AddFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Virtual Class - Content Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="checkbox" runat="server">
    <div class="row-fluid sortable" style="display: block" id="meta" runat="server">
        <div class="box span12" style="width: 70%">
            <div class="box-header well">
                <h2>
                    <i class="icon-picture"></i>Add Files
                </h2>
            </div>
            <div id="home" class="box-content">
                <form id="Form1" class="form-horizontal" runat="server">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="ddlClass">
                            Class</label>
                        <div class="controls">
                            <asp:DropDownList ID="ddlClass" AppendDataBoundItems="true" runat="server" data-rel="chosen">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">
                            File Title</label>
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
                    <div class="form-actions">
                        <asp:FileUpload ID="FileUploadControl" runat="server" />
                        <asp:Button ID="UploadButton" Text="Upload" OnClick="Button_Click" class="btn btn-inverse"
                            runat="server" />
                        <button class="btn">
                            Cancel</button>
                        <br />
                        <br />
                        <asp:Label ID="Label_status" runat="server" Text="" display="none"></asp:Label>
                    </div>
                </fieldset>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
