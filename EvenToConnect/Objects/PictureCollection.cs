using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvenToConnect.Objects
{
    public class PictureCollection
    {
        public List<Picture> allPictures = new List<Picture>();

        public bool add(Picture newPicture)
        {
            if (checkName(newPicture.pictureName))
            {
                allPictures.Add(newPicture);
                return true;
            }
            return false;
        }

        /// <summary>
        /// checks if the picture can be uploaded
        /// </summary>
        /// <param name="pictureName"></param>
        /// <returns>True if the picture can be uploaded</returns>
        public bool checkName(string pictureName)
        {
            for (int i = 0; i < allPictures.Count; i++)
            {
                if (pictureName == allPictures[i].pictureName)
                {
                    return false;
                }
            }
            return true;
        }
        public List<Picture> getPicturesByUser(string username)
        {
            List<Picture> allUserPictures = new List<Picture>();

            for (int i = 0; i< allPictures.Count; i++)
            {
                if (allPictures[i].uploaderUsername == username)
                    allUserPictures.Add(allPictures[i]);
            }

            return allUserPictures;
        }
        public List<Picture> getPicturesByCategory(string category)
        {
            List<Picture> allCategoryPictures = new List<Picture>();

            for (int i = 0; i < allPictures.Count; i++)
            {
                for (int j = 0; j < allPictures[i].categories.Count; j++)
                {
                    if (category == allPictures[i].categories[j])
                    {
                        allCategoryPictures.Add(allPictures[i]);
                        break;
                    }
                }
            }

            return allCategoryPictures;
        }
    }
}