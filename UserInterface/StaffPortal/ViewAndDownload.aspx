<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAndDownload.aspx.cs"
    MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" Inherits="CMS.UserInterface.StaffPortal.ViewAndDownload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
    View And Download
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <form id="form1" runat="server">
    <fieldset>
    <div id="displayFile" runat="server" class="form-actions">
    </div>
    <%--<iframe src="http://docs.google.com/gview?url=http://localhost:55231/Temp/CMS_PPT,pptx&embedded=true" id="show" class="google-show" style="width:600px; height:500px;" ></iframe>--%>
    <%--<iframe src="http://docs.google.com/gview?url=http://www.yourwebsite.com/powerpoint.ppt&embedded=true" style="width:600px; height:500px;" frameborder="0"></iframe>--%>
    
    </fieldset></form>
</asp:Content>
