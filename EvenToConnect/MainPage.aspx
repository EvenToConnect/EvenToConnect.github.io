﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="EvenToConnect.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Share your Pictures with the World"/>
    <meta name="author" content="Pablo Garces"/>
    <title>EventoConnect</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <!-- jQuery JavaScript -->
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- our JS -->
    <script src="script.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css" />
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>


    <!-- our CSS -->
    <link rel="stylesheet" href="style.css"/>
    <!--FONTS-->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Gloria+Hallelujah|Yatra+One" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
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
                <a class="navbar-brand" href="#">
                    <img id="logo" alt="Brand" src="img/ETCLogoWhite.png"/>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Events</a></li>
                    <li><a href="#">Places</a></li>
                    <li><a href="#">Explore</a></li>

                </ul>

                <asp:Button runat="server" ID="btnsignin" CSSclass="btn btn-default navbar-btn navbar-right sign-in" OnClick="btnsignin_Click" Text="Sign In" />
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- new title -->
    <div class="titleofsliders">
        <h1 id="titletext">Trending Events</h1>
    </div>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <!-- Number of slides reduced and text correrected-->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="slidephoto" src="img/Hackriddle.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>HackRiddle 2016</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/ufhomecoming.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>University of Florida Homecoming</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/Biketoberfest.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Daytona Biketoberfest</h1>
                </div>
            </div>
        </div>


        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- new title -->
    <div class="titleofsliders2">
        <h1 id="titletext">Trending Places</h1>
    </div>

    <div id="myCarousel2" class="carousel slide" data-ride="carousel">

        <!-- Number of slides reduced and text correrected-->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel2" data-slide-to="1"></li>
            <li data-target="#myCarousel2" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="slidephoto" src="img/Daytonabeach.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Daytona Beach</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/Orlando.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Orlando</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/Gainesville.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Gainesville</h1>
                </div>
            </div>
        </div>


        <a class="left carousel-control" href="#myCarousel2" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel2" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- new title -->
    <div class="titleofsliders2">
        <h1 id="titletext">Explore</h1>
    </div>

    <div id="myCarousel3" class="carousel slide" data-ride="carousel">

        <!-- Number of slides reduced and text correrected-->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel3" data-slide-to="1"></li>
            <li data-target="#myCarousel3" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="slidephoto" src="img/hacking.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Hacking</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/fun.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Fun</h1>
                </div>
            </div>

            <div class="item">
                <img class="slidephoto" src="img/food.jpg" alt=""/>
                <div class="carousel-caption">
                    <h1>Food</h1>
                </div>
            </div>
        </div>


        <a class="left carousel-control" href="#myCarousel3" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel3" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    </form>
</body>
</html>
