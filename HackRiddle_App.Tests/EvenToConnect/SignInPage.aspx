<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="EvenToConnect.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Share your Pictures with the World" />
    <meta name="author" content="Pablo Garces" />
    <title>EventoConnect - Sign In</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
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

<body id="login">
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

                    <asp:Button ID="btnSignIn" runat="server" CSSclass="btn btn-default navbar-btn navbar-right sign-in" OnClick="btnSignIn_Click" Text="Sign In"></asp:Button>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

    <script>
        $('.message a').click(function () {
            $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
        });
    </script>

    <div class="login-page">
        <div class="form">
            <h1 id="logtitle">Sign In</h1>
            <asp:Label runat="server" ID="lblLogInError" Text="Username or Password was incorrect!" ForeColor="Red" Visible="false"></asp:Label>
            <div class="register-form">
                <input type="text" placeholder="name" />
                <input type="password" placeholder="password" />
                <input type="text" placeholder="email address" />
                <button>create</button>
                <p class="message">Already registered? <a href="#">Sign In</a></p>
            </div>
            <div class="login-form">
                <input runat="server" id="txtusername" type="text" placeholder="username" />
                <input runat="server" id="txtpassword" type="password" placeholder="password" />
                <asp:Button runat="server" id="btnLogin" OnClick="btnLogin_Click" Text="login"></asp:Button>
                <p class="message">Not registered? <a href="#">Create an account</a></p>
            </div>
        </div>
    </div>

    <div class="logininfo">
        <h1>EventoConnect is the perfect place to share your moments and peek into trending events happening around the world</h1>
    </div>

    </form>
</body>
</html>
