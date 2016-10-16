using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvenToConnect.Objects
{
    public class Picture
    {
        public string pictureName;
        public string pictureFilepath;
        public string uploaderUsername;
        public int eventID;
        public DateTime uploadDate;
        public List<string> categories;

        public Picture()
        {
        }
        public Picture(string pictureName, string pictureFilepath, string uploaderUsername, int eventID, DateTime uploadDate, List<string> categories)
        {
            this.pictureName = pictureName;
            this.pictureFilepath = pictureFilepath;
            this.uploaderUsername = uploaderUsername;
            this.eventID = eventID;
            this.uploadDate = uploadDate;
            this.categories = categories;
        }

    }
}