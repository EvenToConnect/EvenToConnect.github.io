using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvenToConnect
{
    public partial class ViewImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!(Session["username"] == null))
            {
                btnLogin.Text = (string)Session["username"];
            
            }

            if (Session["pictureName"] == null)
                Response.Redirect("SignIngPage.aspx");

            Objects.PictureCollection pictureCollection = (Objects.PictureCollection)HttpRuntime.Cache.Get("allPictures");
            List<Objects.Picture> allPictures = pictureCollection.allPictures;
            Objects.Picture pictureToDisplay = new Objects.Picture();

            for (int i = 0; i < allPictures.Count; i++)
            {
                if ((string)Session["pictureName"] == allPictures[i].pictureName)
                {
                    pictureToDisplay = allPictures[i];
                    break;
                }
            }

            for (int i = 0; i < pictureToDisplay.categories.Count - 1; i++)
            {
                lblCategories.InnerText = lblCategories.InnerText + pictureToDisplay.categories[i] + ", ";
            }
            lblCategories.InnerText = lblCategories.InnerText + pictureToDisplay.categories[pictureToDisplay.categories.Count -1];
            imgImage.Src = "img/" + pictureToDisplay.pictureName;



        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (btnLogin.Text == "Sign In")
            {
                Response.Redirect("SignInPage.aspx");
            }
            else
            {
                Response.Redirect("AccountPage.aspx");
            }

        }
    }
}