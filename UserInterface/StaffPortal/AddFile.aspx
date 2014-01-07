<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master"
    AutoEventWireup="true" CodeBehind="AddFile.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.AddFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Add Files
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <form id="Form1" class="form-horizontal" runat="server">
    <fieldset>
        <div id="addVideo" style="display: block">
            <div class="control-group">
                <label class="control-label" for="ddlClass">
                    Class</label>
                <div class="controls">
                    <asp:DropDownList ID="ddlClass"  AppendDataBoundItems="true"
                        runat="server" data-rel="chosen">
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
        </div>
    </fieldset>
    </form>
</asp:Content>
