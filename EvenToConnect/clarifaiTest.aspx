<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clarifaiTest.aspx.cs" Inherits="EvenToConnect.clarifaiTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://sdk.clarifai.com/js/clarifai-2.0.9.js"></script>
    <script>
        
        //var Clarifai = require('clarifai');
        var app = new Clarifai.App('hq_qPNlWnxj0kfNYd0Pd__Z36DDy5i0DgyG39jZV', '_SG0ZLaM8pEKl4kA0GpeCZyXom_345CU80nIoJIz');
        app.models.predict(Clarifai.GENERAL_MODEL, 'https://s3-us-west-2.amazonaws.com/eventoconnect/kelsey.jpg').then(
            function (response) {
                console.log(response);
                var conceptArray = response.data.outputs[0].data.concepts;
                
                var nameArray = [];
                for (i = 0; i < conceptArray.length; i++)
                {
                    nameArray.push(conceptArray[i].name);
                }
                for (i = 0; i < nameArray.length; i++)
                {
                    console.log(nameArray[i]);

                }

            },
            function(err){
            console.error(err);
        }

            );



    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
