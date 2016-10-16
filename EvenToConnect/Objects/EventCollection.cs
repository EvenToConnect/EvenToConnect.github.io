using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvenToConnect.Objects
{
    public class EventCollection
    {
        public List<Event> allEvents = new List<Event>();

        public bool add(Event newEvent)
        {
            allEvents.Add(newEvent);
            return true;
        }
        
    }
}