<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="CMS.StudentRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
    <title>Free HTML5 Bootstrap Admin Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template." />
    <meta name="author" content="Muhammad Usman" />
    <!-- The styles -->
    <link href="../Common/css/bootstrap-cerulean.css" rel="stylesheet" />
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <link href="../Common/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="../Common/css/charisma-app.css" rel="stylesheet" />
    <link href="../Common/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
    <link href='../Common/css/fullcalendar.css' rel='stylesheet' />
    <link href='../Common/css/fullcalendar.print.css' rel='stylesheet' media='print' />
    <link href='../Common/css/chosen.css' rel='stylesheet' />
    <link href='../Common/css/uniform.default.css' rel='stylesheet' />
    <link href='../Common/css/colorbox.css' rel='stylesheet' />
    <link href='../Common/css/jquery.cleditor.css' rel='stylesheet' />
    <link href='../Common/css/jquery.noty.css' rel='stylesheet' />
    <link href='../Common/css/noty_theme_default.css' rel='stylesheet' />
    <link href='../Common/css/elfinder.min.css' rel='stylesheet' />
    <link href='../Common/css/elfinder.theme.css' rel='stylesheet' />
    <link href='../Common/css/jquery.iphone.toggle.css' rel='stylesheet' />
    <link href='../Common/css/opa-icons.css' rel='stylesheet' />
    <link href='../Common/css/uploadify.css' rel='stylesheet' />
    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    <!-- The fav icon -->
    <link rel="shortcut icon" href="../Common/img/favicon.ico" />
</head>
<body>
    <!-- topbar starts -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a><a class="brand" href="index.html" style="width: 550px">
                        <img alt="Charisma Logo" src="../Common/img/logo20.png" />
                        <span>Content Management System, GECG</span></a>
            </div>
        </div>
    </div>
    <!-- topbar ends -->
    <div class="container-fluid">
        <div class="row-fluid">
            <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>
                        You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                        enabled to use this site.
                    </p>
                </div>
            </noscript>
            <div id="content" class="span10" style="margin-left: 10%">
                <!-- content starts -->
                <div class="row-fluid sortable" style="margin: auto; width: 67%">
                    <div class="box span12">
                        <div class="box-header well" data-original-title>
                            <h2>
                                <i class="icon-edit"></i>Student Registration</h2>
                        </div>
                        <div class="box-content">
                            <form class="form-horizontal" runat="server">
                                <fieldset>
                                    <div class="control-group">
                                        <label class="control-label" for="focusedInput">Full Name</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_fullName" class="input-xlarge focused" runat="server"></asp:TextBox>
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
                                    <div id="enrollVerification" class="control-group">
                                        <label class="control-label">Enrollment No.</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_Enroll" class="input-xlarge focused" onblur="verifyField($('[id$=Text_Enroll]')[0].id);" runat="server"></asp:TextBox>
                                            <span id="enroll_status" class="help-inline"></span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="Text_bday">
                                            Birth Date</label>
                                        <div class="controls">
                                            <asp:TextBox placeholder="mm/dd/yyyy" ID="Text_bday" class="input-xlarge datepicker"
                                                runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Contact Number</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_contact" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Emergency Contact Number</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_emer" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div id="emailVerification" class="control-group">
                                        <label class="control-label">Email Id</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_email" class="input-xlarge focused" onblur="verifyField($('[id$=Text_email]')[0].id);" runat="server"></asp:TextBox>
                                            <span id="email_status" class="help-inline"></span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Password</label>
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
                                    <div class="control-group">
                                        <label class="control-label">Department</label>
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
                                        <label class="control-label">Year Of Admission</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_year" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Semester</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DDL_semester" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                                <asp:ListItem Value="">Select Semester</asp:ListItem>
                                                <asp:ListItem Value="1">Sem-1</asp:ListItem>
                                                <asp:ListItem Value="2">Sem-2</asp:ListItem>
                                                <asp:ListItem Value="3">Sem-3</asp:ListItem>
                                                <asp:ListItem Value="4">Sem-4</asp:ListItem>
                                                <asp:ListItem Value="5">Sem-5</asp:ListItem>
                                                <asp:ListItem Value="6">Sem-6</asp:ListItem>
                                                <asp:ListItem Value="7">Sem-7</asp:ListItem>
                                                <asp:ListItem Value="8">Sem-8</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Gender</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DDL_gender" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                                <asp:ListItem Value="">Select Gender</asp:ListItem>
                                                <asp:ListItem Value="M">Male</asp:ListItem>
                                                <asp:ListItem Value="F">Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Category</label>
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
                                        <label class="control-label">Type</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DDL_type" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                                <asp:ListItem Value="">Select Type</asp:ListItem>
                                                <asp:ListItem Value="Regular">Regular</asp:ListItem>
                                                <asp:ListItem Value="D2D">D2D</asp:ListItem>
                                                <asp:ListItem Value="Transferred">Transferred</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Merit Rank</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_merit" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Board</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DDL_board" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                                <asp:ListItem Value="">Select Board</asp:ListItem>
                                                <asp:ListItem Value="GSEB">GSEB</asp:ListItem>
                                                <asp:ListItem Value="CBSE">CBSE</asp:ListItem>
                                                <asp:ListItem Value="ICSE">ICSE</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Blood Group</label>
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

                                    <div class="control-group">
                                        <label class="control-label">Division</label>
                                        <div class="controls">
                                            <asp:DropDownList ID="DDL_div" runat="server" AppendDataBoundItems="true" data-rel="chosen">
                                                <asp:ListItem Value="">Select Division</asp:ListItem>
                                                <asp:ListItem Value="N/A">N/A</asp:ListItem>
                                                <asp:ListItem Value="A">A</asp:ListItem>
                                                <asp:ListItem Value="B">B</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Batch</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_batch" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Passport Number</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_passport" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Unique ID</label>
                                        <div class="controls">
                                            <asp:TextBox ID="Text_unique" class="input-xlarge focused" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">TFW</label>
                                        <div class="controls">
                                            <asp:CheckBox ID="Check_tfw" runat="server" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Defence</label>
                                        <div class="controls">
                                            <asp:CheckBox ID="Check_def" runat="server" />
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">&nbsp;&nbsp;Physically Disabled</label>
                                        <div class="controls">
                                            <asp:CheckBox ID="Check_pd" runat="server" />
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <asp:Button ID="Submit" class="btn btn-primary" runat="server" Text="Register"
                                            OnClick="Submit_Click" />
                                        <asp:Button ID="Cancel" class="btn" runat="server" Text="Cancel" OnClick="Cancel_Click" />
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
                <!-- content ends -->
            </div>
            <!--/#content.span10-->
        </div>
        <!--/fluid-row-->
        <hr />
        <div class="modal hide fade" id="myModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    ×</button>
                <h3>Settings</h3>
            </div>
            <div class="modal-body">
                <p>
                    Here settings can be configured...
                </p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
        <%--<footer>
			<p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
			<p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
		</footer>--%>
    </div>
    <!--/.fluid-container-->
    <!-- external javascript
	================================================== -->
    <script type="text/javascript">

        //Validation Functions

        function validateEmail(email) {
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!filter.test(email)) {
                return false;
            }
            return true;
        }
        function validateEnroll(enroll) {
            var Pattern = /^\d+$/;
            if (!Pattern.test(enroll)) {
                alert("Enter Correct Enrollment Number");
                return false;
            }
            return true;
        }

        //Field Highlighting Functions

        function highlightEmail(value) {
            if (value == "Not Available in Database") {
                if (validateEmail($('#<%=Text_email.ClientID%>').val())) {
                    document.getElementById('emailVerification').setAttribute("class", "control-group success");
                    $("#email_status").text("Email Id Available!");
                } else {
                    document.getElementById('emailVerification').setAttribute("class", "control-group error");
                    $("#email_status").text("Incorrect Email Id!");
                }
            }
            else if (value == "") {
                document.getElementById('emailVerification').setAttribute("class", "control-group warning");
                $("#email_status").text("You cannot leave Email Field Blank!");
            }
            else {
                document.getElementById('emailVerification').setAttribute("class", "control-group error");
                $("#email_status").text("Email Id Already Used!");
            }
        }

        function highlightEnroll(value) {
            if (value == "Not Available in Database") {
                if (validateEnroll($('#<%=Text_Enroll.ClientID%>').val())) {
                    document.getElementById('enrollVerification').setAttribute("class", "control-group success");
                    $("#enroll_status").text("Enrollment No. Available!");
                } else {
                    document.getElementById('enrollVerification').setAttribute("class", "control-group error");
                    $("#enroll_status").text("Incorrect Enrollment No!");
                }
            }
            else if (value == "") {
                document.getElementById('enrollVerification').setAttribute("class", "control-group warning");
                $("#enroll_status").text("You cannot leave This Field Blank!");
            }
            else {
                document.getElementById('enrollVerification').setAttribute("class", "control-group error");
                $("#enroll_status").text("Enrollment No Already Exists!");
            }
        }

        //Field Verifying Functions

        function verifyField(textbox_id) {
            var pageUrl = '<%=ResolveUrl("~/UserInterface/StudentPortal/StudentRegister.aspx")%>'
            var name;
            if (textbox_id == "Text_email") {
                name = '/verifyEmail';
            }
            else if (textbox_id == "Text_Enroll") {
                name = '/verifyEnrol';
            }
            var verifyfield = '{verifyfield:"' + document.getElementById(textbox_id).value + '"}';
            $.ajax({
                type: "POST",
                url: pageUrl + name,
                data: verifyfield,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (textbox_id == "Text_email") {
                        loadEmail(response.d);
                    }
                    else if (textbox_id == "Text_Enroll") {
                        loadEnroll(response.d);
                    }

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function loadEmail(list) {
            if (list.length > 0) {
                $.each(list, function () {
                    highlightEmail(this['Value']);
                });
            }
            else {
                if ($('#<%=Text_email.ClientID%>').val() == '') {
                    highlightEmail("");
                } else {
                    highlightEmail("Not Available in Database");
                }
            }
        }
        function loadEnroll(list) {
            if (list.length > 0) {
                $.each(list, function () {
                    highlightEnroll(this['Value']);
                });
            }
            else {
                if ($('#<%=Text_Enroll.ClientID%>').val() == '') {
                    highlightEnroll("");
                } else {
                    highlightEnroll("Not Available in Database");
                }
            }
        }
    </script>
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery -->
    <script type="text/javascript" src="../Common/js/jquery-1.7.2.min.js"></script>
    <!-- jQuery UI -->
    <script type="text/javascript" src="../Common/js/jquery-ui-1.8.21.custom.min.js"></script>
    <!-- transition / effect library -->
    <script type="text/javascript" src="../Common/js/bootstrap-transition.js"></script>
    <!-- alert enhancer library -->
    <script type="text/javascript" src="../Common/js/bootstrap-alert.js"></script>
    <!-- modal / dialog library -->
    <script type="text/javascript" src="../Common/js/bootstrap-modal.js"></script>
    <!-- custom dropdown library -->
    <script type="text/javascript" src="../Common/js/bootstrap-dropdown.js"></script>
    <!-- scrolspy library -->
    <script type="text/javascript" src="../Common/js/bootstrap-scrollspy.js"></script>
    <!-- library for creating tabs -->
    <script type="text/javascript" src="../Common/js/bootstrap-tab.js"></script>
    <!-- library for advanced tooltip -->
    <script type="text/javascript" src="../Common/js/bootstrap-tooltip.js"></script>
    <!-- popover effect library -->
    <script type="text/javascript" src="../Common/js/bootstrap-popover.js"></script>
    <!-- button enhancer library -->
    <script type="text/javascript" src="../Common/js/bootstrap-button.js"></script>
    <!-- accordion library (optional, not used in demo) -->
    <script type="text/javascript" src="../Common/js/bootstrap-collapse.js"></script>
    <!-- carousel slideshow library (optional, not used in demo) -->
    <script type="text/javascript" src="../Common/js/bootstrap-carousel.js"></script>
    <!-- autocomplete library -->
    <script type="text/javascript" src="../Common/js/bootstrap-typeahead.js"></script>
    <!-- tour library -->
    <script type="text/javascript" src="../Common/js/bootstrap-tour.js"></script>
    <!-- library for cookie management -->
    <script type="text/javascript" src="../Common/js/jquery.cookie.js"></script>
    <!-- calander plugin -->
    <script type="text/javascript" src='../Common/js/fullcalendar.min.js'></script>
    <!-- data table plugin -->
    <script type="text/javascript" src='../Common/js/jquery.dataTables.min.js'></script>
    <!-- chart libraries start -->
    <script type="text/javascript" src="../Common/js/excanvas.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.min.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.pie.min.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.stack.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.resize.min.js"></script>
    <!-- chart libraries end -->
    <!-- select or dropdown enhancer -->
    <script type="text/javascript" src="../Common/js/jquery.chosen.min.js"></script>
    <!-- checkbox, radio, and file input styler -->
    <script type="text/javascript" src="../Common/js/jquery.uniform.min.js"></script>
    <!-- plugin for gallery image view -->
    <script type="text/javascript" src="../Common/js/jquery.colorbox.min.js"></script>
    <!-- rich text editor library -->
    <script type="text/javascript" src="../Common/js/jquery.cleditor.min.js"></script>
    <!-- notification plugin -->
    <script type="text/javascript" src="../Common/js/jquery.noty.js"></script>
    <!-- file manager library -->
    <script type="text/javascript" src="../Common/js/jquery.elfinder.min.js"></script>
    <!-- star rating plugin -->
    <script type="text/javascript" src="../Common/js/jquery.raty.min.js"></script>
    <!-- for iOS style toggle switch -->
    <script type="text/javascript" src="../Common/js/jquery.iphone.toggle.js"></script>
    <!-- autogrowing textarea plugin -->
    <script type="text/javascript" src="../Common/js/jquery.autogrow-textarea.js"></script>
    <!-- multiple file upload plugin -->
    <script type="text/javascript" src="../Common/js/jquery.uploadify-3.1.min.js"></script>
    <!-- history.js for cross-browser state change on ajax -->
    <script type="text/javascript" src="../Common/js/jquery.history.js"></script>
    <!-- application script for Charisma demo -->
    <script type="text/javascript" src="../Common/js/charisma.js"></script>
</body>
</html>
