using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Amazon.S3;
using Amazon.S3.Transfer;

namespace EvenToConnect
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("SignInPage.aspx");

        }
        

        protected void btnViewImage_Click(object sender, EventArgs e)
        {

            List<string> categories = new List<string>();
            string allCategories = hdnCategories.Value;
            string filename = fleNewImage.FileName;
            string[] myCategories = allCategories.Split(',');

            for (int i = 0; i < myCategories.Length - 1; i++)
            {
                categories.Add(myCategories[i]);
            }
            Objects.Picture pictureToAdd = new Objects.Picture(filename, filename, (string)Session["username"], 1, DateTime.Now, categories);

            Objects.PictureCollection allPictures = (Objects.PictureCollection)HttpRuntime.Cache.Get("allPictures");
            allPictures.add(pictureToAdd);
            HttpRuntime.Cache.Insert("allPictures", allPictures);
            Session["pictureName"] = filename;
            Response.Redirect("ViewImage.aspx");

        }
    }
}