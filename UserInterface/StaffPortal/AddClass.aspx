<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StaffPortal/Staff.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="CMS.UserInterface.StaffPortal.AddClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="pageTitle" runat="server">
 Add Class
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="form" runat="server">
<form id="Form1" class="form-horizontal" runat="server">
                            <fieldset>
                             <div class="control-group">
                                    <label class="control-label">
                                        Class</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddlClass" AutoPostBack="false" class="input-large span10" runat="server"  OnClientSelectedIndexChanged="showDiv('hiddenDiv')" Style="width: auto;">
                                            <%--<asp:ListItem Text="<Select Subject>" Value="0" />
                                            --<asp:ListItem Value="">Create New Class...</asp:ListItem>
                                            <asp:ListItem Value="A+">A+</asp:ListItem>
                                            <asp:ListItem Value="A-">A-</asp:ListItem>
                                            <asp:ListItem Value="B+">B+</asp:ListItem>
                                            <asp:ListItem Value="B-">B-</asp:ListItem>
                                            <asp:ListItem Value="O+">O+</asp:ListItem>
                                            <asp:ListItem Value="O-">O-</asp:ListItem>
                                            <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                            <asp:ListItem Value="AB-">AB-</asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div id="hiddenDiv" style="display:none">
                                    <div class="control-group"  >
                                        <label class="control-label" for="focusedInput">
                                            Class Title</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_classTitle" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                              
                                    <div class="control-group" >
                                        <label class="control-label">
                                            Class Descrption</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_classDescription" class="input-xlarge focused" TextMode="MultiLine"
                                                runat="server" Rows="6" Columns="15" />
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        YouTube Key</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_key" class="input-xlarge focused" runat="server"></asp:TextBox> (e.g "http://www.youtube.com/watch?v=<span style="color:Blue">StphRCLkx6Q</span>" Enter the string in blue from your video URL)
                                    </div>
                                </div>
                
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Title</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_title" class="input-xlarge focused" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                              
                                <div class="control-group">
                                    <label class="control-label">
                                        Descrption</label>
                                    <div class="controls">
                                        <asp:TextBox ID="Text_Address" class="input-xlarge focused" TextMode="MultiLine"
                                            runat="server" Rows="6" Columns="15" />
                                    </div>
                                </div>
                                
                                

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-inverse">
                                        Submit</button>
                                    <button class="btn">
                                        Cancel</button>
                                </div>
                            </fieldset>
                            </form>

                            <script type="text/javascript">
                                function showDiv(divID) {
                                    var ddlId = document.getElementById("ddlClass");
                                    var ddlValue = ddlId.options[ddlId.selectedIndex].value;
                                    if (ddlValue == '1' && document.getElementById(divID).style.display == 'none') {
                                        document.getElementById(divID).style.display = 'block';
                                    } else {
                                        document.getElementById(divID).style.display = 'none';
                                    }
                                }
                            </script>
</asp:Content>
