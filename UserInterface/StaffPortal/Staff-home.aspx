<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="Staff-home.aspx.cs" Inherits="CMS.Staff_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="title" ContentPlaceHolderID="pageTitle" runat="server">
Welcome <%= Session["username"].ToString() %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
Hi, <%= Session["UserName"].ToString() %>, welcome to Staff Dashboard.....
</asp:Content>
