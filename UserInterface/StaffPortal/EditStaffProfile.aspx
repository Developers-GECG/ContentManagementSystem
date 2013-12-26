<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="EditStaffProfile.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.EditStaffPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageTitle" runat="server">
    Edit Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: white;
        }

        #tabs {
            width: 95%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
    <div class="row-fluid sortable" id="edit_profile_content" style="margin: inherit; width: 67%; display: none">


        <div class="box-content">
            <form id="Form1" class="form-horizontal" runat="server">
                <fieldset>
                    <div id="tabs">
                        <ul>
                            <li><a href="#personal_details">Personal Details</a></li>
                            <li><a href="#credentials">Credentials</a></li>
                            <li><a href="#academic_details">Academic Details</a></li>
                        </ul>
                        <div id="personal_details" style="display: block">
                            <div class="control-group">
                                <label class="control-label" for="focusedInput">
                                    Full Name</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_fullName" Enabled="true" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="date01">
                                    Birth Date</label>
                                <div class="controls">
                                    <asp:TextBox placeholder="mm/dd/yyyy" ID="Text_bday" class="input-xlarge datepicker"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Address</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_Address" class="input-xlarge focused" TextMode="MultiLine"
                                        runat="server" Rows="3" Columns="10" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Contact Number</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_contact" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Emergency Contact Number</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_emer" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Gender</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_gender" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Gender</asp:ListItem>
                                        <asp:ListItem Value="M">Male</asp:ListItem>
                                        <asp:ListItem Value="F">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Category</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_category" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Category</asp:ListItem>
                                        <asp:ListItem Value="General">General</asp:ListItem>
                                        <asp:ListItem Value="SC">SC</asp:ListItem>
                                        <asp:ListItem Value="ST">ST</asp:ListItem>
                                        <asp:ListItem Value="SEBC">SEBC</asp:ListItem>
                                        <asp:ListItem Value="OBC">OBC</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Blood Group</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_blood" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Blood Group</asp:ListItem>
                                        <asp:ListItem Value="A+">A+</asp:ListItem>
                                        <asp:ListItem Value="A-">A-</asp:ListItem>
                                        <asp:ListItem Value="B+">B+</asp:ListItem>
                                        <asp:ListItem Value="B-">B-</asp:ListItem>
                                        <asp:ListItem Value="O+">O+</asp:ListItem>
                                        <asp:ListItem Value="O-">O-</asp:ListItem>
                                        <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                        <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="personal_changes" title="Click here to save changes made to Personal Details." data-rel="tooltip" class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active" runat="server" Text="Save Changes" />
                            </div>
                        </div>
                        <div id="credentials" style="display: block">
                            <div id="emailVerification" class="control-group">
                                <label class="control-label">
                                    Email Id</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_email" class="input-xlarge focused" onblur="verifyField($('[id$=Text_email]')[0].id);" runat="server"></asp:TextBox>
                                    <span id="status" class="help-inline"></span>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Password</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_pwd" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Confirm Password</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_cpwd" class="input-xlarge focused" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="credential_changes" title="Click here to save changes made to Credentials." data-rel="tooltip" class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active" runat="server" Text="Save Changes" />
                            </div>
                        </div>
                        <div id="academic_details" style="display: block">
                            <div class="control-group">
                                <label class="control-label">
                                    Joining Year</label>
                                <div class="controls">
                                    <asp:TextBox ID="Text_join_year" class="input-xlarge focused" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Role</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_role" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="">Select Type</asp:ListItem>
                                        <asp:ListItem Value="New">New</asp:ListItem>
                                        <asp:ListItem Value="Regular">Regular</asp:ListItem>
                                        <asp:ListItem Value="HOD">HOD</asp:ListItem>
                                        <asp:ListItem Value="Principal">Principal</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Type</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_designation" runat="server" AppendDataBoundItems="true"
                                        data-rel="chosen">
                                        <asp:ListItem Value="">Select Designation</asp:ListItem>
                                        <asp:ListItem Value="Professor">Professor</asp:ListItem>
                                        <asp:ListItem Value="Assistant Professor">Assistant Professor</asp:ListItem>
                                        <asp:ListItem Value="Associate Professor">Associate Professor</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    Department</label>
                                <div class="controls">
                                    <asp:DropDownList ID="DDL_dept" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                        <asp:ListItem Value="0">Select Department</asp:ListItem>
                                        <asp:ListItem Value="1">Information Technology</asp:ListItem>
                                        <asp:ListItem Value="2">Computer Engineering</asp:ListItem>
                                        <asp:ListItem Value="3">Metallurgy Engineering</asp:ListItem>
                                        <asp:ListItem Value="4">Mining Engineering</asp:ListItem>
                                        <asp:ListItem Value="5">Electronics & Comminication Engineering</asp:ListItem>
                                        <asp:ListItem Value="6">BioMedical Engineering</asp:ListItem>
                                        <asp:ListItem Value="7">Instrumentation & Control Engineering</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    &nbsp;&nbsp;Is Teaching Staff</label>
                                <div class="controls">
                                    <asp:CheckBox ID="Check_ITS" runat="server" />
                                </div>
                            </div>
                            <div class="form-actions">
                                <asp:Button ID="academic_changes" title="Click here to save changes made to Academic Details." data-rel="tooltip" class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active" runat="server" Text="Save Changes" />
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</asp:Content>
