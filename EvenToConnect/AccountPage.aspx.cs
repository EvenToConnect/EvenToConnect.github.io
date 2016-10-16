using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvenToConnect
{
    public partial class AccountPage : System.Web.UI.Page
    {

        static public string[] categoryNames = new string[6];
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";

            if (Session["username"] == null)
            {
                Response.Redirect("SignInPage.aspx");
            }
            else
            {
                username = (string)Session["username"];
                btnUsername.Text = username;
                catetitle.InnerText = catetitle.InnerText + username + "!";
            }
            Objects.PictureCollection allPictures = (Objects.PictureCollection)HttpRuntime.Cache.Get("allPictures");
            List<Objects.Picture> allUserPictures = allPictures.getPicturesByUser(username);
            List<string> allCategories = new List<string>();
            List<int> categoryCount = new List<int>();

            for (int i = 0; i < allUserPictures.Count; i++)
            {
                for (int j = 0; j < allUserPictures[i].categories.Count; j++)
                {
                    if (!allCategories.Contains(allUserPictures[i].categories[j]))
                    {
                        allCategories.Add(allUserPictures[i].categories[j]);
                        categoryCount.Add(1);
                    }
                    else
                    {
                        categoryCount[allCategories.IndexOf(allUserPictures[i].categories[j])]++;
                    }
                }
            }
            int minimumIndex = 0;
            for (int i = 0; i < categoryCount.Count; i ++)
            {
                if (categoryCount[i] < categoryCount[minimumIndex])
                    minimumIndex = i;
            }

            int[] top6 = new int[6] { minimumIndex, minimumIndex, minimumIndex, minimumIndex, minimumIndex, minimumIndex };


            for (int i = 0; i < categoryCount.Count; i++)
            {
                if (categoryCount[i] >= categoryCount[top6[5]])
                    top6[5] = i;
                else
                    continue;
                for (int j = 4; j >=0; j--)
                {
                    if (categoryCount[i] >= categoryCount[top6[j]])
                    {
                        int tempIndex = top6[j];
                        top6[j] = i;
                        top6[j + 1] = tempIndex;
                    }
                }
            }
            for (int i = 0; i < 6; i++)
            {
                categoryNames[i] = allCategories[top6[i]];
            }
            lblFirstCategory.InnerHtml = categoryNames[0] + " <span class=\"badge\">" + categoryCount[top6[0]] + " pics</span>";
            lblSecondCategory.InnerHtml = categoryNames[1] + " <span class=\"badge\">" + categoryCount[top6[1]] + " pics</span>";
            lblThirdCategory.InnerHtml = categoryNames[2] + " <span class=\"badge\">" + categoryCount[top6[2]] + " pics</span>";
            lblFourthCategory.InnerHtml = categoryNames[3] + " <span class=\"badge\">" + categoryCount[top6[3]] + " pics</span>";
            lblFifthCategory.InnerHtml = categoryNames[4] + " <span class=\"badge\">" + categoryCount[top6[4]] + " pics</span>";
            lblSixthCategory.InnerHtml = categoryNames[5] + " <span class=\"badge\">" + categoryCount[top6[5]] + " pics</span>";


            string[] imageLocations = new string[6];

            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < allUserPictures.Count; j++)
                {
                    for (int k = 0; k < allUserPictures[j].categories.Count; k++)
                    {
                        if (allUserPictures[j].categories[k] == categoryNames[i])
                        {
                            imageLocations[i] = allUserPictures[j].pictureFilepath;
                            continue;
                        }

                    }
                }
            }

            img0.Src = imageLocations[0];
            img1.Src = imageLocations[1];
            img2.Src = imageLocations[2];
            img3.Src = imageLocations[3];
            img4.Src = imageLocations[4];
            img5.Src = imageLocations[5];

        }

        protected void Link_OnClick(Object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlAnchor mySender = (System.Web.UI.HtmlControls.HtmlAnchor)sender;
            string senderName = mySender.ID;
            int categoryClicked = int.Parse(senderName[3].ToString());
            string categoryName = categoryNames[categoryClicked];
            Session["Category"] = categoryName;
            Response.Redirect("CategoryPage.aspx");
        }

        protected void btnUpload_OnClick(Object sneder, EventArgs e)
        {
            Response.Redirect("UploadImage.aspx");
        }
    }

}