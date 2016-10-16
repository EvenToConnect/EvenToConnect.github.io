using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvenToConnect.Objects
{
    public class Event
    {
        public int eventID;
        public string eventName;
        public string eventDescription;
        public string location;
        public string pictureID;
        public string creatorUsername;
        public DateTime creationDate;

        public Event(int eventID, string eventName, string eventDescription, string location, string pictureID, string creatorUsername, DateTime creationDate)
        {
            this.eventID = eventID;
            this.eventName = eventName;
            this.eventDescription = eventDescription;
            this.location = location;
            this.creatorUsername = creatorUsername;
            this.creationDate = creationDate;
        }
    }
}