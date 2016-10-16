using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace EvenToConnect
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Creates the users to be cached in the app
            Objects.UserCollection allUsers = new Objects.UserCollection();
            allUsers.add(new Objects.User("Brian97", "Brian97"));
            allUsers.add(new Objects.User("user2", "user2"));
            allUsers.add(new Objects.User("user3", "user3"));
            allUsers.add(new Objects.User("user4", "user4"));
            allUsers.add(new Objects.User("user5", "user5"));
            allUsers.add(new Objects.User("user6", "user6"));
            allUsers.add(new Objects.User("user7", "user7"));
            allUsers.add(new Objects.User("user8", "user8"));

            //creates the events to be cached in the app
            Objects.EventCollection allEvents = new Objects.EventCollection();
            allEvents.add(new Objects.Event(1, "HackRiddle", "2nd annual Hack Riddle", "florida", "picture", "Brian97", DateTime.Now));
            allEvents.add(new Objects.Event(2, "Florida Homecoming", "25th annual homecoming", "florida", "picture", "Brian97", DateTime.Now));
            allEvents.add(new Objects.Event(3, "Bike Week", "25th annual Bike Week", "florida", "picture", "Brian97", DateTime.Now));

            //creates the pictures to be cached in the app
            Objects.PictureCollection allPictures = new Objects.PictureCollection();
            List<string> pic1Categories = new List<string>();
            pic1Categories.Add("bike");
            pic1Categories.Add("vehicle");
            pic1Categories.Add("biker");
            pic1Categories.Add("street");
            pic1Categories.Add("motorcyclist");
            pic1Categories.Add("people");
            pic1Categories.Add("road");
            pic1Categories.Add("cyclist");
            pic1Categories.Add("motorbike");
            pic1Categories.Add("sitting");
            allPictures.add(new Objects.Picture("Biketoberfest.jpg", "~/img/Biketoberfest.jpg", "Brian97", 3, DateTime.Now, pic1Categories));
            List<string> pic2Categories = new List<string>();
            pic2Categories.Add("competition");
            pic2Categories.Add("parade");
            pic2Categories.Add("people");
            pic2Categories.Add("victory");
            pic2Categories.Add("many");
            pic2Categories.Add("man");
            pic2Categories.Add("crowd");
            pic2Categories.Add("uniform");
            pic2Categories.Add("group");
            pic2Categories.Add("ceremony");
            allPictures.add(new Objects.Picture("ufhomecoming.jpg", "~/img/ufhomecoming.jpg", "Brian97", 2, DateTime.Now, pic2Categories));
            List<string> pic3Categories = new List<string>();
            pic3Categories.Add("room");
            pic3Categories.Add("education");
            pic3Categories.Add("group");
            pic3Categories.Add("furniture");
            pic3Categories.Add("desk");
            pic3Categories.Add("meeting");
            pic3Categories.Add("classroom");
            pic3Categories.Add("adult");
            pic3Categories.Add("business");
            pic3Categories.Add("university");
            pic3Categories.Add("technology");
            allPictures.add(new Objects.Picture("hackriddleroom.jpg", "~/img/hackriddleroom.jpg", "Brian97", 1, DateTime.Now, pic3Categories));
            List<string> pic4Categories = new List<string>();
            pic4Categories.Add("smile");
            pic4Categories.Add("laughing");
            pic4Categories.Add("performance");
            pic4Categories.Add("people");
            pic4Categories.Add("music");
            pic4Categories.Add("recreation");
            pic4Categories.Add("stage");
            allPictures.add(new Objects.Picture("hackriddlecups.jpg", "~/img/hackriddlecups.jpg", "Brian97", 1, DateTime.Now, pic4Categories));
            List<string> pic5Categories = new List<string>();
            pic5Categories.Add("people");
            pic5Categories.Add("many");
            pic5Categories.Add("military");
            pic5Categories.Add("competition");
            pic5Categories.Add("bike");
            pic5Categories.Add("vehicle");
            pic5Categories.Add("uniform");
            pic5Categories.Add("crowd");
            pic5Categories.Add("helmet");
            allPictures.add(new Objects.Picture("bikersroad.jpg", "~/img/bikersroad.jpg", "Brian97", 3, DateTime.Now, pic5Categories));
            List<string> pic6Categories = new List<string>();
            pic6Categories.Add("people");
            pic6Categories.Add("street");
            pic6Categories.Add("competition");
            pic6Categories.Add("festival");
            pic6Categories.Add("rally");
            pic6Categories.Add("parade");
            pic6Categories.Add("road");
            pic6Categories.Add("crowd");
            allPictures.add(new Objects.Picture("ufparade.jpg", "~/img/ufparade.jpg", "Brian97", 2, DateTime.Now, pic6Categories));
            List<string> pic7Categories = new List<string>();
            pic7Categories.Add("concert");
            pic7Categories.Add("performance");
            pic7Categories.Add("music");
            pic7Categories.Add("singer");
            pic7Categories.Add("musician");
            pic7Categories.Add("festival");
            pic7Categories.Add("band");
            pic7Categories.Add("stage");
            pic7Categories.Add("celebration");
            pic7Categories.Add("pop");
            pic7Categories.Add("party");
            allPictures.add(new Objects.Picture("ufshow.jpg", "~/img/ufshow.jpg", "Brian97", 2, DateTime.Now, pic7Categories));





            HttpRuntime.Cache.Insert("allPictures", allPictures, null, DateTime.MaxValue, new TimeSpan(3, 14, 15));
            HttpRuntime.Cache.Insert("allUsers", allUsers, null, DateTime.MaxValue, new TimeSpan(3, 14, 15));
            HttpRuntime.Cache.Insert("allEvents", allEvents, null, DateTime.MaxValue, new TimeSpan(3, 14, 15));

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
