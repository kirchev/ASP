<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="moduls_MainMenu" %>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="~/Default.aspx" runat="server">SEO111</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="~/pages/About.aspx" runat="server">About</a>
                </li>
                <li>
                    <a href="~/pages/Services.aspx" runat="server">Services</a>
                </li>
                <li>
                    <a href="~/pages/Contact.aspx" runat="server">Contact</a>
                </li>
                <li>
                    <a href="~/pages/projects/Projects.aspx" runat="server">Projects</a>
                </li>
                <li>
                    <a href="~/pages/news/News.aspx" runat="server">News</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="~/404.aspx" runat="server">404</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
