<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/VirtualClassroom/VirtualClass.Master"
    AutoEventWireup="true" CodeBehind="VirtualClass.aspx.cs" Inherits="CMS.UserInterface.VirtualClassroom.VirtualClass1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Virtual Class - Content Management System
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="checkbox" runat="server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-th"></i>&nbsp;&nbsp;Browse Virtual Classes
                </h2>
            </div>
            <div class="box-content">
                <div class="row-fluid">
                    <div class="span4">
                        <h6>
                            Select Semester
                        </h6>
                    </div>
                    <div class="span4">
                        <h6>
                            Select Class
                        </h6>
                    </div>
                </div>
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="formName" runat="server">
    &nbsp;&nbsp;Title Of Virtual Class Here
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
    <div class="row-fluid show-grid">
        <div class="span8">
            <div id="player">
                Video Player Here
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
        <div class="span4">
            Description Here<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
    <div class="row-fluid show-grid">
        <div class="span3">
            Video Thumbnail 1
            <br />
            <br />
            <br />
            <br />
        </div>
        <div class="span3">
            Video Thumbnail 2
            <br />
            <br />
            <br />
            <br />
        </div>
        <div class="span3">
            Video Thumbnail 3<br />
            <br />
            <br />
            <br />
        </div>
        <div class="span3">
            Video Thumbnail 4<br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
