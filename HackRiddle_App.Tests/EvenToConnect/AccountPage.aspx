﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="EvenToConnect.AccountPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Share your Pictures with the World" />
    <meta name="author" content="Pablo Garces" />
    <title>EventoConnect - Account</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <!-- jQuery JavaScript -->
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- our JS -->
    <script src="script.js" type="text/javascript"></script>
    <!-- our CSS -->
    <link rel="stylesheet" href="style.css" />
    <!--FONTS-->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Gloria+Hallelujah|Yatra+One" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="accountbody">
    <form runat="server">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="MainPage.aspx">
                        <img id="logo" alt="Brand" src="img/ETCLogoWhite.png" />
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Events</a></li>
                        <li><a href="#">Places</a></li>
                        <li><a href="#">Explore</a></li>

                    </ul>

                    <asp:Button runat="server" ID="btnUsername" CSSclass="btn btn-default navbar-btn navbar-right sign-in" Text="username"></asp:Button>
                    <asp:Button runat="server" id="btnUpload" OnClick="btnUpload_OnClick" CSSclass="btn btn-default navbar-btn upload" Text="Upload Photos"></asp:Button>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        <h1 runat="server" id="catetitle">Hello </h1>
        <h4 id="catedescrip">Here you can upload your photos and we'll automatically sort them!</h4>

        <div id="picgrid">
            <div class="row">
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk0" href="#" class="thumbnail" OnServerClick="Link_OnClick" >
                        <img id="img0" runat="server" src="img/naturetag.png" alt="..." />
                        <h2 runat="server" id="lblFirstCategory" class="tagnames">Nature <span class="badge">21 Pics</span></h2>
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk1" OnServerClick="Link_OnClick" href="#" class="thumbnail">
                        <img runat="server" id="img1" src="img/miamitag.png" alt="..." />
                        <h2 runat="server" id="lblSecondCategory" class="tagnames">Miami <span class="badge">36 Pics</span></h2>
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk2" OnServerClick="Link_OnClick" href="#" class="thumbnail">
                        <img runat="server" id="img2" src="img/familytag.png" alt="..." />
                        <h2 runat="server" id="lblThirdCategory" class="tagnames">Family <span class="badge">98 Pics</span></h2>
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk3" OnServerClick="Link_OnClick" href="#" class="thumbnail">
                        <img runat="server" id="img3" src="img/christmastag.png" alt="..." />
                        <h2 runat="server" id="lblFourthCategory" class="tagnames">Christmas <span class="badge">178 Pics</span></h2>
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk4" OnServerClick="Link_OnClick" href="#" class="thumbnail">
                        <img runat="server" id="img4" src="img/hallotag.png" alt="..." />
                        <h2 runat="server" id="lblFifthCategory" class="tagnames">Halloween <span class="badge">12 Pics</span></h2>
                    </a>
                </div>
                <div class="col-xs-6 col-md-3">
                    <a runat="server" id="lnk5" OnServerClick="Link_OnClick" href="#" class="thumbnail">
                        <img runat="server" id="img5" src="img/europetag.png" alt="..." />
                        <h2 runat="server" id="lblSixthCategory" class="tagnames">Europe <span class="badge">235 Pics</span></h2>
                    </a>
                </div>

            </div>
        </div>



    </form>
</body>

</html>
