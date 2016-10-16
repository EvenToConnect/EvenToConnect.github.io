<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="EvenToConnect.UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Share your Pictures with the World" />
    <meta name="author" content="Pablo Garces" />
    <title>EventoConnect - Upload</title>

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
    <script type="text/javascript" src="https://sdk.clarifai.com/js/clarifai-2.0.9.js"></script>
    <script>
        function getCategories() {



            var file = document.getElementById('<%=fleNewImage.ClientID%>');
            var filename = file.value;
            filename = filename.replace(/.*[\/\\]/, '');
            console.log(filename);
            var app = new Clarifai.App('hq_qPNlWnxj0kfNYd0Pd__Z36DDy5i0DgyG39jZV', '_SG0ZLaM8pEKl4kA0GpeCZyXom_345CU80nIoJIz');
            app.models.predict(Clarifai.GENERAL_MODEL, 'https://s3-us-west-2.amazonaws.com/eventoconnect/' + filename).then(
                function (response) {
                    console.log(response);
                    var conceptArray = response.data.outputs[0].data.concepts;

                    var nameArray = [];
                    for (i = 0; i < conceptArray.length; i++) {
                        nameArray.push(conceptArray[i].name);
                    }
                    var hiddenField = document.getElementById('<%=hdnCategories.ClientID%>');
                    for (i = 0; i < nameArray.length; i++) {
                        hiddenField.value = hiddenField.value + nameArray[i] + ", ";
                        console.log(nameArray[i]);
                    }
                    var successLabel = document.getElementById('lblsuccess');
                    successLabel.innerText = "Upload Successful";
                    var CommitButton = document.getElementById('btnCommit');
                    btnCommit.style.visibility = "visible";


                },
                function (err) {
                    console.error(err);
                }
                );
            }
    </script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="catpicked">
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

                <button type="button" class="btn btn-default navbar-btn navbar-right sign-in">Sign in</button>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>


    <h1 id="catetitle">Upload Files</h1>
    <br />
    <button class="btn btn-default navbar-btn uploadpage" onclick="getCategories()">Upload</button>
    <form runat="server">
        <asp:FileUpload runat="server" ID="fleNewImage" CssClass="btn btn-default navbar-btn uploadpage" />
        <asp:HiddenField Value="" runat="server" ID="hdnCategories" />
    <br />
        <label id="lblsuccess"></label>
        <asp:Button runat="server" id="btnCommit" style="visibility:hidden;" onClick="btnViewImage_Click" Text="Click here to commit the upload" />
    </form>
    <%--<asp:Button runat="server" CssClass="btn btn-default navbar-btn uploadpage" ID="btnUpload" OnClick="btnUpload_Click" Text="Upload"/>--%>
</body>

</html>
