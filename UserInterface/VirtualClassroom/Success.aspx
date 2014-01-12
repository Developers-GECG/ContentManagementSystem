<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/VirtualClassroom/VirtualClass.Master"
    AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="CMS.UserInterface.VirtualClassroom.Success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="other" runat="server">
    <h1>
        <asp:Label ID="status_text" runat="server"></asp:Label> 
        <asp:Label ID="status_code" runat="server"></asp:Label></h1>
    <br />
    <asp:Label ID="video_key" runat="server"></asp:Label>
    <br />
    <asp:Label ID="info" runat="server"></asp:Label>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="checkbox" runat="server">
</asp:Content>
