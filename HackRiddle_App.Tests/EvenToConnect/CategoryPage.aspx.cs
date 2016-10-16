using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvenToConnect
{
    public partial class CategoryPage : System.Web.UI.Page
    {
        string category;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Category"] == null)
            {
                Response.Redirect("AccountPage.aspx");
            }
            else
            {
                category = (string)Session["Category"];
            }
            catetitle.InnerText = category;


            Objects.PictureCollection allPictures = (Objects.PictureCollection)HttpRuntime.Cache.Get("allPictures");
            List<Objects.Picture> allCategoryPictures = allPictures.getPicturesByCategory(category);

            if (allCategoryPictures.Count > 5)
            {
                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Src = allCategoryPictures[1].pictureFilepath;
                img2.Src = allCategoryPictures[2].pictureFilepath;
                img3.Src = allCategoryPictures[3].pictureFilepath;
                img4.Src = allCategoryPictures[4].pictureFilepath;
                img5.Src = allCategoryPictures[5].pictureFilepath;

            }
            else if (allCategoryPictures.Count == 5)
            {
                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Src = allCategoryPictures[1].pictureFilepath;
                img2.Src = allCategoryPictures[2].pictureFilepath;
                img3.Src = allCategoryPictures[3].pictureFilepath;
                img4.Src = allCategoryPictures[4].pictureFilepath;
                img5.Visible = false;

            }
            else if (allCategoryPictures.Count == 4)
            {
                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Src = allCategoryPictures[1].pictureFilepath;
                img2.Src = allCategoryPictures[2].pictureFilepath;
                img3.Src = allCategoryPictures[3].pictureFilepath;
                img4.Visible = false;
                img5.Visible = false;

            }
            else if (allCategoryPictures.Count == 3)
            {
                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Src = allCategoryPictures[1].pictureFilepath;
                img2.Src = allCategoryPictures[2].pictureFilepath;
                img3.Visible = false;
                img4.Visible = false;
                img5.Visible = false;

            }
            else if (allCategoryPictures.Count == 2)
            {

                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Src = allCategoryPictures[1].pictureFilepath;
                img2.Visible = false;
                img3.Visible = false;
                img4.Visible = false;
                img5.Visible = false;

            }
            else if (allCategoryPictures.Count == 1)
            {
                img0.Src = allCategoryPictures[0].pictureFilepath;
                img1.Visible = false;
                img2.Visible = false;
                img3.Visible = false;
                img4.Visible = false;
                img5.Visible = false;

            }
            else if (allCategoryPictures.Count == 0)
            {
                img0.Visible = false;
                img1.Visible = false;
                img2.Visible = false;
                img3.Visible = false;
                img4.Visible = false;
                img5.Visible = false;

            }



        }


    }
}