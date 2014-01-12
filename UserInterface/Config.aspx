<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="CMS.UserInterface.Config" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Configure Database For CMS</title>
    <!-- The styles -->
    <link id="bs-css" href="Common/css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body
        {
            padding-bottom: 40px;
        }
        .sidebar-nav
        {
            padding: 9px 0;
        }
    </style>
    <link href="Common/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="Common/css/charisma-app.css" rel="stylesheet" />
    <link href="Common/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
    <link href='Common/css/fullcalendar.css' rel='stylesheet' />
    <link href='Common/css/fullcalendar.print.css' rel='stylesheet' media='print' />
    <link href='Common/css/chosen.css' rel='stylesheet' />
    <link href='Common/css/uniform.default.css' rel='stylesheet' />
    <link href='Common/css/colorbox.css' rel='stylesheet' />
    <link href='Common/css/jquery.cleditor.css' rel='stylesheet' />
    <link href='Common/css/jquery.noty.css' rel='stylesheet' />
    <link href='Common/css/noty_theme_default.css' rel='stylesheet' />
    <link href='Common/css/elfinder.min.css' rel='stylesheet' />
    <link href='Common/css/elfinder.theme.css' rel='stylesheet' />
    <link href='Common/css/jquery.iphone.toggle.css' rel='stylesheet' />
    <link href='Common/css/opa-icons.css' rel='stylesheet' />
    <link href='Common/css/uploadify.css' rel='stylesheet' />
    <link rel="shortcut icon" href="Common/img/favicon.ico">
</head>
<body>
    <!-- topbar starts -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                    </span></a><a class="brand" style="width: 555px;" href="Config.aspx">
                        <img alt="Charisma Logo" src="Common/img/logo20.png" />
                        <span>CMS Database Configuration</span></a>
            </div>
        </div>
    </div>
    <!-- topbar ends -->
    <div class="container-fluid">
        <div class="row-fluid">
            <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">
                        Warning!</h4>
                    <p>
                        You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                        enabled to use this site.</p>
                </div>
            </noscript>
            <div id="content" class="span10">
                <!-- content starts -->
                <div class="row-fluid sortable">
                    <div class="box span12">
                        <div class="box-header well" data-original-title>
                            <h2>
                                <i class="icon-edit"></i>Enter Database Details</h2>
                        </div>
                        <div class="box-content">
                            <form id="Form1" class="form-horizontal" runat="server">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Database IP</label>
                                    <div class="controls">
                                        <asp:TextBox class="input-xlarge focused" id="tb_ip" type="text" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Database Port</label>
                                    <div class="controls">
                                        <asp:TextBox class="input-xlarge focused" id="tb_port" type="text" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Username</label>
                                    <div class="controls">
                                        <asp:TextBox class="input-xlarge focused" id="tb_uname" type="text" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Password</label>
                                    <div class="controls">
                                        <asp:TextBox class="input-xlarge focused" id="tb_pwd" type="password" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="focusedInput">
                                        Database Name</label>
                                    <div class="controls">
                                        <asp:TextBox class="input-xlarge focused" id="tb_name" type="text" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <asp:Button id="btn_Submit" runat="server" type="submit" Text="Submit" class="btn btn-primary" OnClick="submitClick">
                                        </asp:Button>
                                    <asp:Button id="btn_Reset" class="btn" Text="Reset" runat="server">
                                        </asp:Button>
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
        <hr>
        <footer>
			<p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
			<p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
		</footer>
    </div>
    <!--/.fluid-container-->
    <!-- external javascript
	================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery -->
    <script type="text/javascript" src="Common/js/jquery-1.7.2.min.js"></script>
    <!-- jQuery UI -->
    <script type="text/javascript" src="Common/js/jquery-ui-1.8.21.custom.min.js"></script>
    <!-- transition / effect library -->
    <script type="text/javascript" src="Common/js/bootstrap-transition.js"></script>
    <!-- alert enhancer library -->
    <script type="text/javascript" src="Common/js/bootstrap-alert.js"></script>
    <!-- modal / dialog library -->
    <script type="text/javascript" src="Common/js/bootstrap-modal.js"></script>
    <!-- custom dropdown library -->
    <script type="text/javascript" src="Common/js/bootstrap-dropdown.js"></script>
    <!-- scrolspy library -->
    <script type="text/javascript" src="Common/js/bootstrap-scrollspy.js"></script>
    <!-- library for creating tabs -->
    <script type="text/javascript" src="Common/js/bootstrap-tab.js"></script>
    <!-- library for advanced tooltip -->
    <script type="text/javascript" src="Common/js/bootstrap-tooltip.js"></script>
    <!-- popover effect library -->
    <script type="text/javascript" src="Common/js/bootstrap-popover.js"></script>
    <!-- button enhancer library -->
    <script type="text/javascript" src="Common/js/bootstrap-button.js"></script>
    <!-- accordion library (optional, not used in demo) -->
    <script type="text/javascript" src="Common/js/bootstrap-collapse.js"></script>
    <!-- carousel slideshow library (optional, not used in demo) -->
    <script type="text/javascript" src="Common/js/bootstrap-carousel.js"></script>
    <!-- autocomplete library -->
    <script type="text/javascript" src="Common/js/bootstrap-typeahead.js"></script>
    <!-- tour library -->
    <script type="text/javascript" src="Common/js/bootstrap-tour.js"></script>
    <!-- library for cookie management 
    <script type="text/javascript" src="Common/js/jquery.cookie.js"></script>-->
    <!-- calander plugin -->
    <script type="text/javascript" src='js/fullcalendar.min.js'></script>
    <!-- data table plugin -->
    <script type="text/javascript" src='js/jquery.dataTables.min.js'></script>
    <!-- chart libraries start -->
    <script type="text/javascript" src="Common/js/excanvas.js"></script>
    <script type="text/javascript" src="Common/js/jquery.flot.min.js"></script>
    <script type="text/javascript" src="Common/js/jquery.flot.pie.min.js"></script>
    <script type="text/javascript" src="Common/js/jquery.flot.stack.js"></script>
    <script type="text/javascript" src="Common/js/jquery.flot.resize.min.js"></script>
    <!-- chart libraries end -->
    <!-- select or dropdown enhancer -->
    <script type="text/javascript" src="Common/js/jquery.chosen.min.js"></script>
    <!-- checkbox, radio, and file input styler -->
    <script type="text/javascript" src="Common/js/jquery.uniform.min.js"></script>
    <!-- plugin for gallery image view -->
    <script type="text/javascript" src="Common/js/jquery.colorbox.min.js"></script>
    <!-- rich text editor library -->
    <script type="text/javascript" src="Common/js/jquery.cleditor.min.js"></script>
    <!-- notification plugin -->
    <script type="text/javascript" src="Common/js/jquery.noty.js"></script>
    <!-- file manager library -->
    <script type="text/javascript" src="Common/js/jquery.elfinder.min.js"></script>
    <!-- star rating plugin -->
    <script type="text/javascript" src="Common/js/jquery.raty.min.js"></script>
    <!-- for iOS style toggle switch -->
    <script type="text/javascript" src="Common/js/jquery.iphone.toggle.js"></script>
    <!-- autogrowing textarea plugin -->
    <script type="text/javascript" src="Common/js/jquery.autogrow-textarea.js"></script>
    <!-- multiple file upload plugin -->
    <script type="text/javascript" src="Common/js/jquery.uploadify-3.1.min.js"></script>
    <!-- history.js for cross-browser state change on ajax -->
    <script type="text/javascript" src="Common/js/jquery.history.js"></script>
    <!-- application script for Charisma demo -->
    <script type="text/javascript" src="Common/js/charisma.js"></script>
</body>
</html>
