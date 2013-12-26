<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="AddFile.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.AddFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    Add Files
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <form id="Form1" class="form-horizontal" runat="server">
        <fieldset>
            <div class="control-group">
                <label class="control-label">
                    Class</label>
                <div class="controls">
                    <asp:DropDownList ID="ddlClass" class="input-large span10" AppendDataBoundItems="true" runat="server" >
                    </asp:DropDownList>
                </div>
            </div>
            
            <div id="addVideo" style="display: block">
          
                <div class="control-group">
                    <label class="control-label" for="focusedInput">
                        Title</label>
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
                  <asp:FileUpload id="FileUploadControl" runat="server" />
                     <asp:Button id="UploadButton" text="Upload" onclick="Button_Click"  class="btn btn-inverse" runat="server" /> 
                        <button class="btn">
                        Cancel</button>
                </div>
            </div>
        </fieldset>
    </form>
</asp:Content>
