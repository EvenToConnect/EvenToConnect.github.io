using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EvenToConnect.Objects
{
    public class UserCollection
    {
        public List<User> allUsers = new List<User>();

        public bool add(User newUser)
        {
            if (checkUser(newUser.username))
            {
                allUsers.Add(newUser);
                return true;
            }
            return false;
        }
        public bool checkUser(string newUsername)
        {
            for (int i = 0; i < allUsers.Count; i++)
            {
                if (newUsername == allUsers[i].username)
                    return false;
            }
            return true;
        }

        /// <summary>
        /// checks if the login information provided is accurate
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns>True if the login was correct</returns>
        public bool checkLogin(string username, string password)
        {
            for (int i = 0; i < allUsers.Count; i++)
            {
                if (username == allUsers[i].username)
                {
                    if (password == allUsers[i].password)
                        return true;
                    else
                        return false;
                }
            }
            return false;
        }
    }
}